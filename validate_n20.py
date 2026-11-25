"""Validate exported meshes, real M3/M6 envelopes and continuous rotation sweeps."""
import copy
import json
import math
import warnings
from pathlib import Path

import numpy as np
import oobb
import trimesh
import yaml

import n20
from action_make_n20 import ROOT, catalogue
from validate_tt_tight import contains


def boolean_volume(a,b):
    # Manifold exact mesh booleans, not bounding-box or vertex-only collisions.
    if np.any(a.bounds[1]<b.bounds[0]) or np.any(b.bounds[1]<a.bounds[0]): return 0.
    result=trimesh.boolean.intersection([a,b],engine='manifold')
    if result is None or len(result.faces)==0: return 0.
    with warnings.catch_warnings():
        warnings.simplefilter('ignore',RuntimeWarning)
        return abs(float(result.volume))


_nut_cache={}


def nut_insertion_sweep(p,pos,rot,direction,name='m3'):
    if name not in _nut_cache:
        folder=ROOT/'outputs/n20/hardware_reference'; folder.mkdir(parents=True,exist_ok=True)
        part=oobb.get_default_thing(type='n20_nominal_insertion_nut')
        n20.nominal_nut(part,p,[0,0,0],name)
        _nut_cache[name]=export_reference(folder,'nominal_'+name+'_nut',part['components'])
    mesh=_nut_cache[name].copy()
    matrix=trimesh.transformations.euler_matrix(*np.radians(rot)); matrix[:3,3]=pos
    mesh.apply_transform(matrix)
    start=mesh.vertices+np.asarray(direction)*32
    return trimesh.convex.convex_hull(np.concatenate([mesh.vertices,start]))


def load(path):
    mesh=trimesh.load_mesh(path)
    assert isinstance(mesh,trimesh.Trimesh) and mesh.is_watertight and mesh.is_winding_consistent, str(path)
    assert mesh.volume>0,str(path)
    return mesh


def canonical_piece(mesh,placement):
    matrix=trimesh.transformations.euler_matrix(*np.radians(placement['print_rot']))
    matrix[:3,3]=placement['print_pos']
    result=mesh.copy(); result.apply_transform(np.linalg.inv(matrix)); return result


def cradle_transform(p):
    m=trimesh.transformations.euler_matrix(0,math.pi/2,0)
    m[:3,3]=[0,0,p['cradle_axis_height_mm']]
    return m


def continuous_sweep(mesh):
    """Certified conservative sweep: bound every triangle's radius per Z slab.

    The maximum of norm(x,y) over a triangle is bounded by its furthest vertex.
    Every triangle spanning a slab contributes that bound. Each generated
    cylinder therefore contains the triangle's complete 360-degree sweep.
    """
    tri=mesh.triangles
    lows=tri[:,:,2].min(axis=1); highs=tri[:,:,2].max(axis=1)
    radii=np.linalg.norm(tri[:,:,:2],axis=2).max(axis=1)
    levels=np.unique(np.round(mesh.vertices[:,2],5))
    slabs=[]
    for low,high in zip(levels[:-1],levels[1:]):
        if high-low<1e-5: continue
        active=(lows<high-1e-6)&(highs>low+1e-6)
        if not np.any(active): continue
        radius=radii[active].max()+.005
        # Circumscribed polygon: contains the true circular sweep between facets.
        bound=radius/math.cos(math.pi/128)
        cyl=trimesh.creation.cylinder(radius=bound,height=high-low,sections=128)
        cyl.apply_translation([0,0,(low+high)/2]); slabs.append(cyl)
    return trimesh.boolean.union(slabs,engine='manifold')


def export_reference(folder,name,components):
    from action_make_n20 import render
    source=folder/('check_'+name+'.scad')
    oobb.opsc_make_object(str(source),components,mode='3dpr',save_type='none',overwrite=True)
    render(source,'stl')
    return load(source.with_suffix('.stl'))


def tool_reference(p):
    t=oobb.get_default_thing(type='n20_tool_access')
    grip=p['grip_style']
    if grip=='split_clamp':
        n20.cylinder(t,p,1.6,0,24,pos=[10.6,5.5,5],rot=[0,90,0])
    elif grip in ('nut_grub','metal_hub'):
        n20.cylinder(t,p,1.1 if grip=='metal_hub' else 1.6,0,24,
                     pos=[0,9.2,4 if grip=='metal_hub' else 5],rot=[-90,0,0])
    elif grip=='taper_collet':
        for y in (-8.5,8.5):
            n20.cylinder(t,p,1.4,0,42,pos=[0,y,1.6],rot=[180,0,0])
    return t['components']


def check_previous_assembly(option,folder):
    p=option['oobb_details']; data=yaml.safe_load((folder/'thing.yaml').read_text())['thing']
    for path in (folder/'working.yaml',ROOT/'parts_source'/folder.name/'working.yaml'):
        assert yaml.safe_load(path.read_text())['oobb_details']==p,str(path)
    params=copy.deepcopy(p); t=oobb.get_default_thing(type='n20_validation')
    (n20.draw_fit_tests if option['family']=='fit_test' else n20.draw_assembly)(t,**params)
    assert params==p,'Drawing mutated caller parameters'
    pockets=[c for c in t['components_objects'] if c.get('shape')=='oobb_nut' and c.get('type') in ('negative','n')]
    assert pockets and all(c.get('overhang') is True for c in pockets)
    layout=load(folder/'3dpr.stl'); solids=layout.split(only_watertight=False)
    expected=9 if option['family']=='fit_test' else len(data['piece_placements'])
    assert len(solids)==expected,(option['variant'],len(solids),expected)
    assert all(s.is_watertight and s.volume>0 and abs(s.bounds[0,2])<.015 for s in solids),'Unclosed or ungrounded print piece'
    assert abs(layout.extents[2]-option['depth'])<.02,(option['variant'],layout.extents[2],option['depth'])
    report=dict(variant=option['variant'],print_solids=len(solids),max_print_height_mm=float(layout.extents[2]),
                native_nut_pockets=len(pockets),intersections_mm3={},grid_holes_checked=0)
    if option['family']=='fit_test':
        (ROOT/'outputs/n20/testing/fit_coupons/coupon_map.json').write_text(json.dumps(t['coupon_labels'],indent=2)+'\n')
        return report
    canonical={}; installed={}
    cradle=p['holder_style']=='cradle'; frame=cradle_transform(p) if cradle else np.eye(4)
    for name,placement in data['piece_placements'].items():
        part=load(folder/(name+'.stl'))
        assert len(part.split(only_watertight=False))==1,(name,'Disconnected part')
        canonical[name]=canonical_piece(part,placement)
        installed[name]=canonical[name].copy()
        if not placement['world_coordinates']:
            installed[name].apply_transform(frame)
    # Every printed mating pair must be distinct solids in assembly, not merely
    # separate shapes in the print layout.
    for i,(a,ma) in enumerate(installed.items()):
        for b,mb in list(installed.items())[i+1:]:
            volume=boolean_volume(ma,mb)
            assert volume<.005,(option['variant'],a,b,'printed collision',volume)
    audit=data['grid_hole_audit']
    for name,records in audit.items():
        part=canonical[name]
        for rec in records:
            if not rec['included']:
                assert rec['exclusions']; continue
            x,y=rec['x'],rec['y']; z=rec['bottom']; h=rec['depth']
            for probe in (.15,h/2,h-.15):
                point=np.array([x,y,z+probe])
                assert not contains(part,point),(option['variant'],name,rec,'blocked shaft')
            report['grid_holes_checked']+=1
    assembled=load(folder/'assembled_printed.stl')
    for hardware in ('motor','grip_fasteners','holder_fasteners','bearing','hub'):
        path=folder/('reference_'+hardware+'.stl')
        if not path.is_file():
            assert hardware in ('grip_fasteners','bearing','hub'); continue
        volume=boolean_volume(assembled,load(path))
        report['intersections_mm3'][hardware]=volume
        assert volume<.005,(option['variant'],hardware,'hardware collision',volume)
    # Test each actual output nut at its intended depth. The four M3 output
    # pockets load radially from the side; four M6 pockets open underneath.
    hardware=oobb.get_default_thing(type='n20_grid_hardware')
    z=p['output_bottom_mm']; top=z+p['output_thickness_mm']
    for x in (-15,15):
        for y in (-15,15):
            n20.nominal_nut(hardware,p,[x,y,z+.25],'m6')
            n20.nominal_screw(hardware,p,[x,y,top+1],12,'m6')
    if p['grip_style']!='metal_hub':
        for x,y in ((-7.5,0),(7.5,0),(0,-7.5),(0,7.5)):
            n20.nominal_nut(hardware,p,[x,y,z+1.1],'m3',rot=[0,0,math.degrees(math.atan2(y,x))])
            n20.nominal_screw(hardware,p,[x,y,top],8,'m3')
    source=folder/'check_output_hardware.scad'
    oobb.opsc_make_object(str(source),hardware['components'],mode='3dpr',save_type='none',overwrite=True)
    from action_make_n20 import render
    render(source,'stl'); nominal=load(source.with_suffix('.stl'))
    if cradle: nominal.apply_transform(frame)
    volume=boolean_volume(installed['rotor'],nominal)
    report['intersections_mm3']['output_M3_M6']=volume
    assert volume<.005,(option['variant'],'output M3/M6 clearance',volume)
    # Continuous 360-degree envelope includes the rotating screw heads and nuts.
    moving=load(folder/'rotating_local.stl')
    fast=folder/'reference_grip_fasteners.stl'
    moving_parts=[moving]
    if fast.is_file(): moving_parts.append(load(fast))
    if p['grip_style']=='metal_hub': moving_parts.append(load(folder/'reference_hub.stl'))
    moving=trimesh.boolean.union(moving_parts,engine='manifold')
    if cradle: moving.apply_transform(np.linalg.inv(frame))
    sweep=continuous_sweep(moving)
    if cradle: sweep.apply_transform(frame)
    stationary=load(folder/'stationary_local.stl')
    stat=trimesh.boolean.union([stationary,load(folder/'reference_holder_fasteners.stl')],engine='manifold')
    volume=boolean_volume(sweep,stat)
    report['intersections_mm3']['continuous_360_sweep']=volume
    assert volume<.005,(option['variant'],'360-degree rotor / screw sweep collision',volume)
    sweep.export(folder/'check_continuous_sweep.stl')
    # Mounting fasteners at every advertised holder grid position. The cradle
    # is bolted from below, with nuts above its foot; through-plate bolts enter
    # from the front. Cassette corner bolts are the already-tested stack screws.
    if p['holder_style']!='bearing_cassette':
        mount=oobb.get_default_thing(type='n20_mount_grid_fasteners')
        for rec in audit['holder']:
            if not rec['included']: continue
            x,y,name=rec['x'],rec['y'],rec['radius_name']
            if cradle:
                n20.nominal_screw(mount,p,[x,y,0],12 if name=='m6' else 10,name,rot=[180,0,0])
                n20.nominal_nut(mount,p,[x,y,6.2],name)
            else:
                n20.nominal_screw(mount,p,[x,y,0],12,name)
                n20.nominal_nut(mount,p,[x,y,-11.2],name)
        grid_hardware=export_reference(folder,'mount_grid_hardware',mount['components'])
        v=boolean_volume(assembled,grid_hardware)
        report['intersections_mm3']['mount_M3_M6']=v
        assert v<.005,(option['variant'],'mounting fastener clearance',v)
        v=boolean_volume(sweep,grid_hardware)
        report['intersections_mm3']['mount_hardware_360_sweep']=v
        assert v<.005,(option['variant'],'mount hardware hits rotating output',v)
    tools=tool_reference(p)
    if tools:
        tools=export_reference(folder,'hex_key_access',tools)
        # Rotate the cradle split clamp half a turn to present its pinch screw
        # upwards; the unrotated screw faces the foot. Other services use 0 deg.
        angle=180 if cradle and p['grip_style']=='split_clamp' else 0
        service=frame@trimesh.transformations.rotation_matrix(math.radians(angle),[0,0,1])
        tools.apply_transform(service)
        service_rotor=moving.copy(); service_rotor.apply_transform(service)
        service_parts=[stat,service_rotor,load(folder/'reference_motor.stl')]
        if (folder/'reference_bearing.stl').is_file(): service_parts.append(load(folder/'reference_bearing.stl'))
        service_solid=trimesh.boolean.union(service_parts,engine='manifold')
        v=boolean_volume(tools,service_solid)
        report['intersections_mm3']['hex_key_access']=v
        report['service_angle_degrees']=angle
        assert v<.005,(option['variant'],'blocked Allen-key path',v)
    # Continuous nut-insertion envelopes verify the advertised side-loading
    # pockets can actually be populated, not just contain a nut after assembly.
    insertions=[]
    if p['grip_style']!='metal_hub':
        for x,y in ((-7.5,0),(7.5,0),(0,-7.5),(0,7.5)):
            angle=math.degrees(math.atan2(y,x))
            insertions.append(([x,y,z+1.1],[0,0,angle],[x/7.5,y/7.5,0]))
    if p['grip_style']=='split_clamp':
        insertions.append(([-8.2,5.5,5],[0,90,0],[-1,0,0]))
    elif p['grip_style']=='nut_grub':
        insertions.append(([0,5.3,5],[-90,0,0],[1,0,0]))
    elif p['grip_style']=='taper_collet':
        for y in (-8.5,8.5):
            insertions.append(([0,y,5.8],[0,0,90 if y>0 else 270],[0,1 if y>0 else -1,0]))
    for index,(pos,rot,direction) in enumerate(insertions):
        path=nut_insertion_sweep(p,pos,rot,direction)
        v=boolean_volume(canonical['rotor'],path)
        assert v<.005,(option['variant'],'blocked side-loading nut insertion',index,v)
    report['continuous_M3_nut_insertion_paths_checked']=len(insertions)
    for x in (-15,15):
        for y in (-15,15):
            path=nut_insertion_sweep(p,[x,y,z+.25],[0,0,0],[0,0,-1],'m6')
            v=boolean_volume(canonical['rotor'],path)
            assert v<.005,(option['variant'],'blocked output M6 nut insertion',x,y,v)
            if p['holder_style']=='bearing_cassette':
                path=nut_insertion_sweep(p,[x,y,10.2],[0,0,0],[0,0,1],'m6')
                assert boolean_volume(canonical['bearing_cap'],path)<.005,'Blocked loose-cap M6 nut insertion'
    report['continuous_M6_nut_insertion_paths_checked']=8 if p['holder_style']=='bearing_cassette' else 4
    (folder/'grid_hole_audit.json').write_text(json.dumps(audit,indent=2)+'\n')
    (folder/'clearance_report.json').write_text(json.dumps(report,indent=2)+'\n')
    return report


def check(option,folder):
    import n20_holders as holders
    if option['family']=='fit_test': return check_previous_assembly(option,folder)
    p=option['oobb_details']; data=yaml.safe_load((folder/'thing.yaml').read_text())['thing']
    for path in (folder/'working.yaml',ROOT/'parts_source'/folder.name/'working.yaml'):
        assert yaml.safe_load(path.read_text())['oobb_details']==p,str(path)
    original=copy.deepcopy(p); actual=oobb.get_default_thing(type='n20_revision_validation')
    (holders.draw if option['family']=='n20_holder' else holders.draw_shaft_test)(actual,**p)
    assert p==original
    layout=load(folder/'3dpr.stl'); solids=layout.split(only_watertight=False)
    assert len(solids)==len(data['piece_placements']),(option['variant'],'unexpected print solids')
    assert all(s.is_watertight and s.volume>0 and abs(s.bounds[0,2])<.015 for s in solids)
    assert abs(layout.extents[2]-option['depth'])<.02,(option['variant'],layout.extents[2],option['depth'])
    canonical={name:canonical_piece(load(folder/(name+'.stl')),place)
               for name,place in data['piece_placements'].items()}
    report=dict(variant=option['variant'],print_solids=len(solids),
        max_print_height_mm=float(layout.extents[2]),grid_holes_checked=0,intersections_mm3={})
    if option['family']=='n20_shaft_test':
        assert set(canonical)<=set(('rotor','collet_insert','collet_cap'))
        report['category']='testing';return report
    assert not set(canonical)&set(('rotor','collet_insert','collet_cap','output'))
    report['category']='holders'; cradle=p['holder_style']=='cradle'
    frame=cradle_transform(p) if cradle else np.eye(4)
    installed={}
    for name,mesh in canonical.items():
        installed[name]=mesh.copy()
        if cradle and not data['piece_placements'][name]['world_coordinates']:
            installed[name].apply_transform(frame)
    for i,(name,mesh) in enumerate(installed.items()):
        for other,second in list(installed.items())[i+1:]:
            v=boolean_volume(mesh,second)
            assert v<.005,(option['variant'],name,other,'printed collision',v)
    assembled=load(folder/'assembled_printed.stl')
    for reference in ('motor','face_fasteners','clamp_fasteners','bearing','bearing_fasteners'):
        path=folder/('reference_'+reference+'.stl')
        if not path.exists():
            assert reference in ('bearing','bearing_fasteners');continue
        v=boolean_volume(assembled,load(path)); report['intersections_mm3'][reference]=v
        assert v<.005,(option['variant'],reference,'nominal hardware collision',v)
    # The two attachment sites have captive nuts. Every omitted grid site has
    # an actual feature/web exclusion instead of a preselected sparse whitelist.
    face=oobb.get_default_thing(type='n20_plain_face_check');holders.holder(face,**p)
    pockets=[c for c in face['components_objects'] if c.get('shape')=='oobb_nut']
    assert len(pockets)==2 and all(c['radius_name']=='m3' and not c.get('clearance') for c in pockets)
    bare_face=export_reference(folder,'bare_face_no_rails',face['components'])
    assert abs(bare_face.bounds[0,2]+3)<.015 and abs(bare_face.bounds[1,2]-3)<.015
    for x,y in p['attachment_nut_centers_mm']:
        sweep=nut_insertion_sweep(p,[x,y,-2.5],[0,0,0],[0,0,-1])
        assert boolean_volume(bare_face,sweep)<.005,'Blocked outer-row M3 nut entry'
        assert contains(bare_face,[x+2.4,y,2]),'Missing nut seat'
        if not cradle:
            assert boolean_volume(assembled,sweep)<.005,'Rear nut access blocked in assembly'
    report['outer_row_M3_nut_paths_checked']=len(pockets)
    report['bare_face_thickness_mm']=float(bare_face.extents[2])
    expected=holders.face_grid(p)
    records=data['grid_hole_audit']['holder']
    assert [r for r in records if r['face']=='motor_face']==expected
    assert len(expected)==(2*p['face_width']-1)*5
    shaft_refs=oobb.get_default_thing(type='n20_grid_bore_gauges')
    for name,records in data['grid_hole_audit'].items():
        mesh=canonical[name]
        for site in records:
            if not site['included']:
                assert site['exclusions'];continue
            transform=frame if cradle and site.get('coordinate_frame')=='motor' else np.eye(4)
            for depth in (.15,site['depth']/2,site['depth']-.15):
                point=np.array([site['x'],site['y'],site['bottom']+depth,1.])
                point=(transform@point)[:3]
                assert not contains(mesh,point),(option['variant'],name,site,'blocked grid bore')
            gauge=oobb.get_default_thing(type='n20_bore_gauge')
            n20.cylinder(gauge,p,3 if site['radius_name']=='m6' else 1.5,site['bottom']-.05,
                site['depth']+.1,pos=[site['x'],site['y'],site['bottom']-.05])
            shaft_refs['components'].append(n20.group(gauge['components'],
                rot=[0,90,0] if cradle and site.get('coordinate_frame')=='motor' else [0,0,0],
                pos=[0,0,p['cradle_axis_height_mm']] if cradle and site.get('coordinate_frame')=='motor' else [0,0,0]))
            report['grid_holes_checked']+=1
    gauges=export_reference(folder,'plain_grid_gauges',shaft_refs['components'])
    v=boolean_volume(assembled,gauges);report['intersections_mm3']['all_M3_M6_grid_gauges']=v
    assert v<.005,(option['variant'],'nominal M3/M6 grid gauge collision',v)
    # The motor-face screws must engage without running through the gearbox.
    engagement=p['motor_face_screw_length_mm']-p['face_top_mm']
    assert .8<=engagement<=p['motor_thread_engagement_limit_mm']
    report['motor_face_thread_engagement_mm']=engagement
    # Find where the actual nominal head first contacts the exported conical
    # seat. A flush-only gauge misses extra intrusion due to print allowance.
    screws=load(folder/'reference_face_fasteners.stl')
    if cradle:
        screws.apply_transform(np.linalg.inv(frame))
    low,high=0.,1.
    for _ in range(14):
        descent=(low+high)/2
        seated=screws.copy()
        seated.apply_translation([0,0,-descent])
        if boolean_volume(bare_face,seated)>1e-5:
            high=descent
        else:
            low=descent
    seated_engagement=engagement+high
    assert seated_engagement<=p['motor_thread_engagement_limit_mm'],('gearbox screw intrusion',seated_engagement)
    report['seated_motor_screw_projection_mm']=round(seated_engagement,3)
    drivers=oobb.get_default_thing(type='n20_holder_drivers')
    for x in (-4.5,4.5):
        n20.cylinder(drivers,p,1,3.05,20,pos=[x,0,3.05])
    for x in p['clamp_centers_x_mm']:
        n20.cylinder(drivers,p,p['clamp_driver_radius_mm'],3.05,24,pos=[x,0,3.05])
    if p['holder_style']=='bearing_cassette':
        for x,y in p['bearing_join_centers_mm']:
            n20.cylinder(drivers,p,1.4,15.45,20,pos=[x,y,15.45])
    tools=export_reference(folder,'driver_access',drivers['components'])
    if cradle: tools.apply_transform(frame)
    service_parts=[assembled,load(folder/'reference_motor.stl')]
    if (folder/'reference_bearing.stl').exists():service_parts.append(load(folder/'reference_bearing.stl'))
    tool_solid=trimesh.boolean.union(service_parts,engine='manifold')
    v=boolean_volume(tool_solid,tools); report['intersections_mm3']['driver_access']=v
    assert v<.005,(option['variant'],'blocked motor/clamp/bearing driver',v)
    if p['holder_style']=='bearing_cassette':
        for index,(x,y) in enumerate(p['bearing_join_centers_mm']):
            entry=nut_insertion_sweep(p,[x,y,-9.25],[0,0,0],[0,0,-1])
            v=boolean_volume(canonical['nut_block_'+str(index)],entry)
            assert v<.005,(option['variant'],index,'bearing nut cannot be loaded',v)
        report['bearing_nut_insertion_paths_checked']=4
    # All range-labelled rears are flat; the two M3 screws locate them.
    # Check both range endpoints, midpoint and known reference motors.
    length_checks=[]
    rear_heights=[]
    for band in p['rear_ranges_mm']:
        low,high=band; tag=f'{low}_{high}'
        rear=load(folder/f'rear_{tag}.stl')
        assert rear.is_watertight and len(rear.split(only_watertight=False))==1
        assert abs(rear.bounds[0,2])<.015 and abs(rear.extents[2]-6)<.02
        assert np.allclose(rear.extents,[p['rear_clamp_width_mm'],12,6],atol=.02), 'Rear contains a protruding guide'
        # Two closed hex recesses are accessible vertically from the print's top.
        for x in p['clamp_centers_x_mm']:
            entry=nut_insertion_sweep(p,[x,0,6-p['rear_nut_recess_mm']-2.4],[0,0,0],[0,0,1])
            assert boolean_volume(rear,entry)<.005,'Blocked top-loading printed nut pocket'
            # There is material below the hex to react screw tension.
            assert contains(rear,[x+2.3,0,1]),'Rear nut has no bearing floor'
        rear_heights.append(float(rear.extents[2]))
        for length in sorted({low,(low+high)/2,high}|{l for l in (25.6,29.1) if low<=l<=high}):
            q=holders.range_parameters(p,band,length)
            keeper=oobb.get_default_thing(type='n20_clamp_position');holders.rear_clamp(keeper,**q)
            pockets=[c for c in keeper['components_objects'] if c.get('shape')=='oobb_nut']
            assert len(pockets)==2 and all(not c.get('clearance') for c in pockets),'Rear must use native hex pockets without side slots'
            suffix=tag+'_'+str(length).replace('.','d')
            moving=export_reference(folder,'clamp_'+suffix,keeper['components'])
            motor=oobb.get_default_thing(type='n20_motor_position');holders.motor_reference(motor,**q)
            body=export_reference(folder,'motor_'+suffix,motor['components'])
            bolts=oobb.get_default_thing(type='n20_clamp_bolts');holders.clamp_fasteners(bolts,**q)
            hardware=export_reference(folder,'clamp_hardware_'+suffix,bolts['components'])
            if cradle:
                moving.apply_transform(frame);body.apply_transform(frame);hardware.apply_transform(frame)
            fixed=[mesh for name,mesh in installed.items() if name!='rear_clamp']
            fixed=trimesh.boolean.union(fixed,engine='manifold')
            v=boolean_volume(fixed,moving)+boolean_volume(moving,body)+boolean_volume(fixed,body)
            v+=boolean_volume(fixed,hardware)+boolean_volume(moving,hardware)
            assert v<.005,(option['variant'],band,length,'rear / motor / front-screw collision',v)
            for x in q['clamp_centers_x_mm']:
                path=nut_insertion_sweep(q,[x,0,-holders.contact_length(q)-q['rear_clamp_depth_mm']+q['rear_nut_recess_mm']],
                    [0,0,0],[0,0,-1])
                if cradle:path.apply_transform(frame)
                assert boolean_volume(moving,path)<.005,(band,length,x,'blocked rear nut entry')
            tip=3-q['rear_clamp_screw_length_mm']
            nut_bottom=-holders.contact_length(q)-q['rear_clamp_depth_mm']+q['rear_nut_recess_mm'];nut_top=nut_bottom+2.4
            assert tip<=nut_bottom-.25 and nut_top<3,'Incomplete M3 nut engagement'
            length_checks.append(dict(motor_length_range_mm=band,motor_length_mm=length,
                front_screw_length_mm=q['rear_clamp_screw_length_mm'],nut_thread_engagement_mm=2.4,
                screw_tip_projection_past_rear_mm=round(max(0,-holders.contact_length(q)-q['rear_clamp_depth_mm']-tip),4),
                top_loading_nut_paths_checked=2,intersection_mm3=v))
    all_rears=load(folder/'rear_pieces.stl')
    assert len(all_rears.split(only_watertight=False))==3 and abs(all_rears.bounds[0,2])<.015
    assert rear_heights==[6.,6.,6.],rear_heights
    if p['holder_style']=='through_plate':
        tray=load(folder/'mount_trial_tray.stl')
        coupons=sorted(tray.split(),key=lambda m:m.bounds[0,0])
        assert len(coupons)==4 and all(m.is_watertight and abs(m.bounds[0,2])<.01 for m in coupons)
        faces=[m for m in coupons if m.centroid[1]<10]
        assert len(faces)==3
        for mesh,clearance in zip(faces,p['motor_pocket_fit_values_mm']):
            x=mesh.bounds.mean(axis=0)[0]
            for sign in (-1,1):
                assert not contains(mesh,[x+sign*(6+clearance-.04),0,4.5])
                assert contains(mesh,[x+sign*(6+clearance+.04),0,4.5])
        profiles=[]
        for style in ('precious_metal','hpcb'):
            for gear,length in ((9,25.6),(12.5,29.1)):
                name=f'motor_sample_{style}_{gear:g}'.replace('.','d')
                motor=load(folder/(name+'.stl'))
                assert np.allclose(motor.extents,[12,10,length+15],atol=.03)
                assert len(motor.split())==1
                setting=dict(p,motor_brush_style=style,gearbox_length_mm=gear,motor_body_length_mm=length)
                back=canonical['rear_clamp'].copy()
                back.apply_translation([0,0,holders.contact_length(p)-holders.contact_length(setting)])
                assert boolean_volume(motor,back)<.005 and boolean_volume(motor,bare_face)<.005
                assert boolean_volume(motor,load(folder/'reference_face_fasteners.stl'))<.005
                # The load must reach the flat end cap. Advancing 0.05 mm must
                # create a measurable contact patch after clearance at rest.
                back.apply_translation([0,0,.05])
                area=boolean_volume(motor,back)/.05
                assert area>10,(name,'no substantial contact on rear end cap',area)
                profiles.append(dict(profile=name,end_cap_contact_area_mm2=round(area,2)))
        report['motor_mount_profiles']=profiles
        report['trial_pocket_clearances_per_side_mm']=p['motor_pocket_fit_values_mm']
    report['rear_piece_print_heights_mm']=rear_heights
    report['screw_guided_rear_checks']=length_checks
    (folder/'grid_hole_audit.json').write_text(json.dumps(data['grid_hole_audit'],indent=2)+'\n')
    (folder/'clearance_report.json').write_text(json.dumps(report,indent=2)+'\n')
    return report


def main():
    reports=[]
    output=ROOT/'outputs/n20/validation.json'
    output.parent.mkdir(parents=True,exist_ok=True)
    try:
        for option,folder in catalogue():
            reports.append(check(option,folder))
            print('Passed '+option['variant'],flush=True)
    except Exception as exc:
        output.write_text(json.dumps(dict(status='failed',completed_checks=reports,
            failure=str(exc)),indent=2)+'\n')
        raise
    output.write_text(json.dumps(dict(status='passed',checks=reports,
        method='Exported manifold STL booleans; M1.6 face screws; front M3 countersunk tension screws locating slim 6 mm rear pieces; native OOBB hex recesses with vertical top-loading insertion sweeps and bearing-floor checks; driver access with bearing installed; all retained M3/M6 grid bores; three range-labelled rear pieces checked at endpoints, midpoints and reference motor lengths, including full nut engagement and measured screw-tip projection. Shaft trials stay separate in testing.',
        physical_testing='Print calibration coupons before use; physical fit, clamp torque, creep, thermal behaviour and load capacity are not bench-tested.'),indent=2)+'\n')
    print(output,flush=True)


if __name__=='__main__': main()
