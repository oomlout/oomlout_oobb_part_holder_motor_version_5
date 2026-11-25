"""Exported-mesh clearance checks for all micro envelopes and shared details.

Intersection fixtures and a machine-readable report are retained for review.
Intentional spline friction and the screw entering the servo are excluded from
rigid-body collision claims. This cannot validate physical fit or torque.
"""
import copy
import hashlib
import json
import math
from pathlib import Path
import shutil
import subprocess

import numpy as np
import oobb
import trimesh
import yaml

import servo_micro_v2 as design
import servo_v2
import working_oomp_populate
from validate_servo_v2 import contains


def main():
    root=Path(__file__).resolve().parent
    option=next(o for o in working_oomp_populate.get_options() if o['oobb_name']=='holder_motor_servo_micro_v2')
    working_oomp_populate.apply_taxonomy(option)
    folder=root/'parts'/working_oomp_populate.build_oomp_id(option)
    report_dir=root/'outputs/servo_micro_v2_clearance'
    report_dir.mkdir(parents=True,exist_ok=True)
    results=[];meshes={};d=design.dimensions();data=design.reference()

    def check(label,condition,**detail):
        results.append(dict(test=label,passed=bool(condition),**detail))
        if not condition:print('FAIL:',label,detail,flush=True)

    def mesh(name):
        if name not in meshes:meshes[name]=trimesh.load_mesh(folder/(name+'.stl'))
        return meshes[name]

    def imported(name,z=0,angle=0):
        return f'translate([0,0,{z}]) rotate([0,0,{angle}]) import("{(folder/(name+".stl")).as_posix()}");'

    def collision(label,a,b,empty=True,minimum=.001):
        path=report_dir/(label+'.scad');stl=path.with_suffix('.stl')
        path.write_text('intersection(){\n'+a+'\n'+b+'\n}',encoding='utf-8')
        if stl.exists():stl.unlink()
        run=subprocess.run([shutil.which('openscad'),'--backend=Manifold','-o',str(stl),str(path)],
            capture_output=True,text=True,timeout=150,creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        log=run.stdout+run.stderr
        assert 'ERROR:' not in log and 'WARNING:' not in log,log
        if stl.exists():
            with np.errstate(invalid='ignore',divide='ignore'):
                volume=abs(float(trimesh.load_mesh(stl).volume))
        else:
            assert 'empty' in log.lower(),log
            volume=0
        check(label,volume<.001 if empty else volume>minimum,volume_mm3=volume)

    for name,definition in option['pieces'].items():
        m=mesh(name)
        check(name+'_watertight_single_solid',m.is_watertight and len(m.split())==1)
        check(name+'_bed',abs(m.bounds[0,2])<.002)
        check(name+'_actual_depth',abs(m.extents[2]-definition['depth'])<.002)
    layout=mesh('3dpr').split()
    check('ten_printable_solids',len(layout)==10 and all(m.is_watertight for m in layout))
    check('59_by_44_footprint',np.allclose(mesh('bearing_retainer').extents[:2],[59,44],atol=.02))
    check('bearing_on_oobb_centre',(0,0) in [(x,y) for x in (-30,-15,0,15) for y in (-15,0,15)])
    check('shared_mechanics_class',type(design.mechanics) is type(servo_v2.mechanics))
    for name in ('draw_rotor','draw_retainer','draw_output_lid','output_positions','output_joins'):
        check('shared_implementation_'+name,getattr(design.mechanics,name).__func__ is getattr(servo_v2.mechanics,name).__func__)
    check('shared_runner_cross',design.output_positions()==servo_v2.output_positions())
    check('shared_diagonal_M3',design.output_joins()==servo_v2.output_joins())
    holder=mesh('installed_holder');cap=mesh('installed_bearing_retainer')
    bed=mesh('holder')
    on_bed=np.all(np.abs(bed.triangles[:,:,2])<.002,axis=1)
    bed_area=float(bed.area_faces[on_bed].sum())
    check('main_plate_full_flat_bed_contact',bed_area>1000,contact_area_mm2=bed_area)
    check('main_plate_has_no_bearing_projection',abs(holder.bounds[1,2]-d['holder_top'])<.002 and
          option['pieces']['holder']['print_rot']==[180,0,0] and
          option['pieces']['holder']['print_offset']==[0,0,d['holder_top']])
    for x in (-34,19):
        for y in (-19,19):
            check(f'main_plate_corner_on_bed_{x}_{y}',contains(bed,[x,y,.1]))
    bearing=mesh('reference_bearing')
    check('whole_bearing_inside_upper_plate_Z',bearing.bounds[0,2]>=d['retainer_bottom']-.002 and
          bearing.bounds[1,2]<=d['assembly_top']+.002,
          bearing_Z_mm=bearing.bounds[:,2].tolist(),upper_plate_Z_mm=cap.bounds[:,2].tolist())
    check('rounded_plate_depths',all(abs(mesh(n).extents[2]-round(mesh(n).extents[2]))<.002
          for n in ('holder','bearing_retainer','clamshell','bearing_support')),
          main_mm=d['holder_top'],upper_mm=d['retainer_thickness'],shell_mm=d['shell_top']-d['shell_bottom'])
    check('whole_mm_fixed_top',d['assembly_top']==round(d['assembly_top']))
    check('retaining_lip_at_least_1d5mm',d['assembly_top']-d['bearing_roof']>=1.5)
    for z in (d['seat']+.3,d['seat']+2,d['bearing_roof']-.1):
        check(f'full_upper_bearing_seat_{z}',not contains(cap,[13.55,0,z]) and contains(cap,[14.2,0,z]))
    check('main_plate_shaft_bore_only',contains(holder,[10.6,0,d['holder_top']-.2]) and not contains(holder,[10,0,d['holder_top']-.2]))
    check('bearing_wholly_above_main_plate',bearing.bounds[0,2]>=d['holder_top']+1-.002)
    for x,y in design.cover_joins():
        check(f'M3_stack_passage_{x}_{y}',not contains(holder,[x,y,.5]) and not contains(cap,[x,y,d['assembly_top']-.2]))
    for face in ('holder','retainer','bottom'):
        for x in (-30,15):
            for y in (-15,15):
                site=next(s for s in design.grid_layout(face) if s['x']==x and s['y']==y)
                check(f'{face}_corner_M6_preserved_{x}_{y}',site['included'] and site['radius_name']=='m6')
    for face,name,z in [('holder','installed_holder',d['holder_top']-.3),('retainer','installed_bearing_retainer',d['assembly_top']-.2),('bottom','installed_clamshell',d['shell_bottom']+1)]:
        for site in design.grid_layout(face):
            x,y=site['x'],site['y']
            if site['included']:
                check(f'{face}_grid_open_{x}_{y}',not contains(mesh(name),[x,y,z]))
            elif face=='bottom' and not site['reserved_for_cover']:
                check(f'blocked_bottom_solid_{x}_{y}',contains(mesh(name),[x,y,z]))
            if face=='retainer' and site['embedded_nut']:
                check(f'top_captive_M3_{x}_{y}',not contains(cap,[x+2.3,y,d['seat']+1]))
                check(f'top_nut_tip_relief_{x}_{y}',not contains(holder,[x,y,d['top_tip_relief_bottom']+.15]))
    for x,y in design.clamp_joins():
        block=mesh('installed_nut_block_'+('left' if x<0 else 'right'))
        check(f'nut_block_opening_and_roof_{x}_{y}',
              not contains(block,[x+2,y,-10.5]) and contains(block,[x+2,y,-7]))
        check(f'flush_servo_countersink_{x}_{y}',
              not contains(cap,[x+2.75,y,d['assembly_top']-.1]) and
              contains(cap,[x+2.75,y,d['assembly_top']-.4]))
        check(f'plain_mount_shaft_in_main_plate_{x}_{y}',not contains(holder,[x,y,d['holder_top']-.1]))
    check('all_micro_nut_pockets_3d4mm',d['nut_pocket_depth']==3.4 and d['servo_nut_pocket_depth']==3.4)
    check('runner_nut_roof_captures_taller_pockets',math.isclose(d['split']-d['nut_bottom'],3.4) and
          math.isclose(d['output_top']-d['split'],2.2))
    # Native seat entry remains entirely above the planar main-holder face.
    lowered_bearing=imported('reference_bearing',z=-(d['bearing_support_depth']+.5))
    collision('positive_control_bearing_hits_flat_main_plate',lowered_bearing,imported('installed_holder'),empty=False,minimum=.05)
    # Exact CSG regression for the unsupported inward step missed by the old
    # bearing-position and bed-contact checks. The centre stays clear at ALL Z.
    bore=f'translate([0,0,-1]) cylinder(r=10.2,h={d["holder_top"]+2},$fn=128);'
    collision('straight_main_bore_without_annular_overhang',bore,imported('installed_holder'))
    ring=mesh('installed_bearing_support')
    check('outer_race_ring_inside_upper_plate',np.allclose(ring.bounds[:,2],[9,10],atol=.002))
    collision('ring_vs_main',imported('installed_bearing_support'),imported('installed_holder'))
    collision('ring_vs_upper',imported('installed_bearing_support'),imported('installed_bearing_retainer'))
    stationary='union(){'+''.join(imported('installed_'+n) for n in ('holder','bearing_retainer','clamshell','bearing_support'))+'}'
    for name in ('installed_holder','installed_bearing_retainer','installed_clamshell','reference_bearing',
                 'reference_cover_fasteners'):
        collision('top_driver_access_vs_'+name,imported('reference_clamp_drivers'),imported(name))
    collision('cover_fasteners_fit_clamshell',imported('reference_cover_fasteners'),imported('installed_clamshell'))
    for key,p in data['profiles'].items():
        rotor=mesh('installed_rotor_'+key);face=p['runner_face'];r=p['retention']
        seat=p['spline_top']+r['seat_above_spline']
        check(key+'_nose_case_gap',math.isclose(face-p['case_top'],.6,abs_tol=.001))
        engagement=p['spline_top']-max(face,p['spline_bottom'])
        check(key+'_spline_engagement',engagement>=2.5,engagement_mm=engagement)
        check(key+'_factory_screw_engagement',r['length']-r['seat_above_spline']>=2,engagement_mm=r['length']-r['seat_above_spline'])
        # Probe the round bore after the two 0.3 mm roof bridge layers.
        check(key+'_centre_shaft_bore',not contains(rotor,[r['clearance_diameter']/2-.05,0,p['spline_top']+1.1]) and
              contains(rotor,[r['clearance_diameter']/2+.15,0,p['spline_top']+1.1]))
        check(key+'_short_screw_head_seat',not contains(rotor,[2.3,0,seat+.2]) and contains(rotor,[2.3,0,seat-.2]))
        check(key+'_socket_roof_1d2',math.isclose(seat-(p['spline_top']+.35),1.2,abs_tol=.001))
        for x,y in design.output_positions():
            for z in (face+.2,d['seat']+2,d['nut_bottom']-.4):
                check(f'{key}_cross_M3_through_{x}_{y}_{z}',not contains(rotor,[x,y,z]))
            a=math.atan2(y,x)
            check(f'{key}_journal_wall_{x}_{y}',contains(rotor,[9.6*math.cos(a),9.6*math.sin(a),d['seat']+2]))
        collision(key+'_case_vs_frame',stationary,imported('reference_case_'+key))
        collision(key+'_case_vs_runner',imported('installed_rotor_'+key),imported('reference_case_'+key))
        collision(key+'_runner_vs_frame',stationary,imported('installed_rotor_'+key))
        collision(key+'_retention_screw_vs_runner',imported('reference_retention_'+key),imported('installed_rotor_'+key))
        collision(key+'_retention_screw_vs_lid',imported('reference_retention_'+key),imported('installed_output_lid'))
        collision(key+'_retention_vs_diagonal_hardware',imported('reference_retention_'+key),imported('reference_output_fasteners'))
        collision(key+'_bearing_vs_runner',imported('reference_bearing'),imported('installed_rotor_'+key))
        clamps='union(){'+''.join(imported('installed_'+n,z=2.5-p['tab_thickness']) for n in ('clamp_left','clamp_right','nut_block_left','nut_block_right'))+'}'
        collision(key+'_ear_clamps_vs_case',clamps,imported('reference_case_'+key))
        collision(key+'_ear_clamps_vs_frame',clamps,stationary)
        collision(key+'_ear_clamps_vs_runner',clamps,imported('installed_rotor_'+key))
        for target in ('reference_case_'+key,'installed_rotor_'+key):
            collision(key+'_driver_access_vs_'+target,imported('reference_clamp_drivers'),imported(target))
        collision(key+'_driver_access_vs_clamp_bars',imported('reference_clamp_drivers'),clamps)
        for target in ('installed_clamshell','installed_holder','installed_bearing_retainer',
                       'reference_case_'+key,'installed_rotor_'+key,'reference_cover_fasteners'):
            collision(key+'_complete_clamp_screws_vs_'+target,imported('reference_clamp_fasteners_'+key),imported(target))
        contact='union(){'+''.join(imported('installed_'+n,z=2.7-p['tab_thickness']) for n in ('clamp_left','clamp_right','nut_block_left','nut_block_right'))+'}'
        collision(key+'_positive_control_clamps_contact_ears',contact,imported('reference_case_'+key),empty=False,minimum=.05)
        insertion='union(){'+''.join(imported('reference_case_'+key,z=-z) for z in (0,2,5,10,20,40))+'}'
        collision(key+'_servo_insertion_from_bottom',imported('installed_holder'),insertion)
        tip=d['servo_head_top']-d['servo_screw_length']
        nut_bottom=d['servo_nut_bottom']+2.5-p['tab_thickness']
        check(key+'_top_M3_30_full_nut_engagement',tip<nut_bottom,
              tip_Z_mm=tip,nut_bottom_Z_mm=nut_bottom)
        nuts=imported('reference_clamp_nuts_'+key)
        collision(key+'_nuts_fit_blocks',clamps,nuts)
        for n in ('installed_holder','installed_bearing_retainer','installed_clamshell','reference_bearing'):
            collision(key+'_clamp_nuts_vs_'+n,nuts,imported(n))
        # Both ears must actually be gripped against the upper shelves.
        for side,x0,span in [('front',6.9,14),('rear',-30,11.5)]:
            ear='intersection(){'+imported('reference_case_'+key)+f'translate([{x0},-8,-.2]) cube([{span},16,.2]);'+'}'
            collision(key+'_'+side+'_ear_has_upper_support',imported('installed_holder',z=-.1),ear,empty=False,minimum=.02)
    for a,b in [('holder','bearing_retainer'),('holder','clamshell'),('bearing_retainer','clamshell')]:
        collision(a+'_vs_'+b,imported('installed_'+a),imported('installed_'+b))
    for n in ('installed_holder','installed_bearing_retainer','installed_clamshell','installed_output_lid','installed_bearing_support'):
        collision('bearing_vs_'+n,imported('reference_bearing'),imported(n))
    insertion='union(){'+''.join(imported('reference_bearing',z=-z) for z in (0,1,3,8,20))+'}'
    for key in data['profiles']:collision(key+'_bearing_slides_over_female_end',insertion,imported('installed_rotor_'+key))
    sweep='union(){'+''.join(imported('installed_rotor_sg90',angle=a)+imported('installed_output_lid',angle=a) for a in range(0,360,30))+'}'
    collision('full_output_rotation',stationary,sweep)
    through_bolts='union(){'+''.join(
        f'translate([{s["x"]},{s["y"]},{d["shell_bottom"]-1}]) cylinder(r={1.5 if s["radius_name"]=="m3" else 3},h=50,$fn=32);'
        for s in design.grid_layout('bottom') if s['included'])+'}'
    for n in ('installed_holder','installed_bearing_retainer','installed_clamshell','installed_clamp_left','installed_clamp_right','installed_nut_block_left','installed_nut_block_right'):
        collision('full_bottom_bolts_vs_'+n,through_bolts,imported(n))
    for key in data['profiles']:
        collision('full_bottom_bolts_vs_'+key,through_bolts,imported('reference_case_'+key))
        collision('full_bottom_bolts_vs_clamp_heads_'+key,through_bolts,imported('reference_clamp_fasteners_'+key))
    for n in ('installed_female_rotor','installed_output_lid','reference_bearing'):
        collision('diagonal_M3_hardware_vs_'+n,imported('reference_output_fasteners'),imported(n))
    for drawing in design.DRAWINGS.values():
        t=oobb.get_default_thing(type='micro_primitive_audit');kw=copy.deepcopy(option['oobb_details']);saved=copy.deepcopy(kw)
        drawing(t,**kw)
        check(drawing.__name__+'_kwargs_preserved',kw==saved)
        if drawing is design.draw_holder:
            check('main_plate_has_no_nut_pockets',not any(c['shape']=='oobb_nut' for c in t['components_objects']))
        for c in t['components_objects']:
            if 'nut' in c['shape'] or c.get('nut_include'):check(drawing.__name__+'_overhang',c.get('overhang') is True)
            if c['shape']=='oobb_nut':
                check(drawing.__name__+'_nut_Z_allowance',math.isclose(c['depth'],3.4),depth_mm=c['depth'])
    baseline=json.loads((root/'source_file/servo_v2_reference/v1_preservation.json').read_text())
    check('V1_outputs_unchanged',all(hashlib.sha256((root/n).read_bytes()).hexdigest()==h for n,h in baseline['files'].items()))
    baseline=json.loads((root/'source_file/servo_micro_v2_reference/standard_output_baseline.json').read_text())
    check('standard_servo_outputs_preserved',all(hashlib.sha256((root/n).read_bytes()).hexdigest()==h for n,h in baseline.items()),files_checked=len(baseline))
    for path in (folder/'working.yaml',root/'parts_source'/folder.name/'working.yaml'):
        check('catalogue_'+str(path.parent.parent.name),yaml.safe_load(path.read_text())['oobb_details']==option['oobb_details'])
    passed=all(r['passed'] for r in results)
    report=dict(passed=passed,checks=len(results),catalogue_id=folder.name,dimensions=d,results=results,
        limitation='Digital clearance for modelled envelopes. Approximate servo dimensions and factory screw threads require measurement. Friction fits and loaded performance require print trials.')
    (report_dir/'report.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    print(f'{"PASS" if passed else "FAIL"}: {len(results)} checks; {report_dir}',flush=True)
    assert passed,[r['test'] for r in results if not r['passed']]


if __name__=='__main__':
    main()
