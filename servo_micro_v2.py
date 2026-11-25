"""Microservo V2: shared 6704 mechanics with floating, pattern-independent ear clamps."""
import copy
import json
import math
from pathlib import Path

import oobb
from servo_shared import ServoMechanics, add, group, bearing_stack_dimensions, draw_captive_nut_bar

REFERENCE = Path(__file__).parent/'source_file/servo_micro_v2_reference/mechanical.json'


def reference():
    return json.loads(REFERENCE.read_text(encoding='utf-8'))


def dimensions():
    face = round(max(p['case_top'] for p in reference()['profiles'].values())+.6,3)
    holder_top=round(face+1)
    ring_depth=1
    d=bearing_stack_dimensions(face,seat=holder_top+ring_depth)
    # Extra Z allowance for drooping bridge layers, without widening the hex.
    extra=.6
    upper_depth=round(d['retainer_thickness'])
    upper_top=round(d['assembly_top'])
    upper_depth=upper_top-holder_top
    d.update(top=14.2,assembly_top=upper_top,retainer_thickness=upper_depth,
             holder_top=holder_top,retainer_bottom=holder_top,bearing_support_depth=ring_depth,
             bearing_lip_thickness=round(upper_top-d['bearing_roof'],3),
             holder_plate_bottom=7,servo_nut_bottom=-10.9,shell_bottom=-28,shell_floor=-25,shell_top=7,
             cover_screw_head=round(upper_top-.8-25,3),
             nut_pocket_depth=3.4,servo_nut_pocket_depth=3.4,servo_deck_top=7,
             servo_head_top=upper_top,servo_screw_length=30,nut_block_top=-4.5,
             driver_access_radius=2.5,driver_shaft_radius=2,
             clamp_head_relief_bottom=-7.7)
    # Keep the full-height cross nuts enclosed when their pockets grow taller.
    d['split']=round(d['split']+extra,3)
    d['output_top']=round(d['output_top']+extra,3)
    return d


def cover_joins():
    return [(-22.5,-15),(-22.5,15),(7.5,-15),(7.5,15)]


def clamp_joins():
    return [(x,y) for x in (-24,14.5) for y in (-5.2,5.2)]


def clamp_screw_length(profile):
    return dimensions()['servo_screw_length']


def blocked_by_servo_or_clamps(x,y,r):
    # Clamp bars have deliberate M6 corner notches at these full block passages.
    if (x,y) in [(a,b) for a in (-30,15) for b in (-15,15)]:
        return False
    # Union of all six cases/ears, and the two clamp bars below them.
    for xmin,xmax,ymin,ymax in [(-18.3,6.9,-6.8,6.8),(-24,12,-6.5,6.5),
                               (-28.1,-18.3,-13,13),(7,17,-13,13)]:
        if math.hypot(max(xmin-x,0,x-xmax),max(ymin-y,0,y-ymax)) < r+.3:
            return True
    return False


def grid_layout(face):
    holder = {(s['x'],s['y']):s for s in grid_layout('holder')} if face != 'holder' else {}
    cap = {(s['x'],s['y']):s for s in grid_layout('retainer')} if face == 'bottom' else {}
    records=[]
    for ix in range(7):
        for iy in range(5):
            x,y=-30+7.5*ix,-15+7.5*iy
            name='m6' if ix%2 == 0 and iy%2 == 0 else 'm3'
            reserved=(x,y) in cover_joins()
            if reserved:name='m3'
            r=oobb.gv('hole_radius_'+name,'3dpr')
            reasons=[]
            if face != 'bottom' and math.hypot(x,y) < (14.1 if face == 'holder' else 12.5)+r+.7:
                reasons.append('bearing/runner')
            if face!='bottom' and not reserved and any(math.hypot(x-mx,y-my)<
                (6.9 if face=='retainer' and name=='m3' else 2.9+r+.7) for mx,my in clamp_joins()):
                reasons.append('top servo countersink and nut clearance')
            if face == 'holder':
                if abs(y)<13.5 and (x < -18 or x > 6):reasons.append('servo ear clamp deck')
                if not reserved and any(math.hypot(x-jx,y-jy)<3.5+r+.7 for jx,jy in cover_joins()):
                    reasons.append('stack nut support')
                if reserved:reasons=[]
            through=not blocked_by_servo_or_clamps(x,y,r)
            if face != 'holder':through=through and holder[x,y]['included']
            if face == 'retainer' and name == 'm6' and not through:
                reasons.append('blocked M6 left solid')
            if face == 'bottom':
                through=through and cap[x,y]['included']
                if reserved or not through:reasons.append('no full assembly passage')
            records.append(dict(face=face,x=x,y=y,radius_name=name,included=not reasons,
                exclusions=reasons,reserved_for_cover=reserved,through_assembly=through,
                embedded_nut=face == 'retainer' and name == 'm3' and not reasons and not reserved))
    return records


mechanics=ServoMechanics(reference,dimensions,grid_layout,cover_joins)
draw_rotor=mechanics.draw_rotor
draw_output_lid=mechanics.draw_output_lid
output_positions=mechanics.output_positions
output_joins=mechanics.output_joins


def draw_holder(thing,**kwargs):
    d=dimensions()
    # The whole bearing OD recess is in draw_retainer. This flat top face is
    # the print-bed face: no upward locating ring or other bearing projection.
    add(thing,kwargs,'oobb_plate',width=4,height=3,depth=d['holder_top']-d['holder_plate_bottom'],holes=False,
        pos=[-7.5,0,d['holder_plate_bottom']],zz='bottom')
    for cx,width in [(-23.65,10.7),(12.45,11.1)]:
        add(thing,kwargs,'rounded_rectangle',size=[width,27,d['servo_deck_top']],r=1,
            pos=[cx,0,0])
    for x,y in cover_joins():
        add(thing,kwargs,'oobb_cylinder',radius=4.5,depth=d['face']+.2,pos=[x,y,0],zz='bottom')
        add(thing,kwargs,'oobb_hole','negative',radius_name='m3',depth=20,pos=[x,y,-1])
    for x,y in clamp_joins():
        add(thing,kwargs,'oobb_hole','negative',radius_name='m3',depth=d['holder_top']+2,pos=[x,y,-1])
    add(thing,kwargs,'oobb_cube_center','negative',size=[25.2,13.6,d['face']+.2],
        pos=[-5.7,0,-.2],zz='bottom')
    # A straight shaft opening keeps the ear shelves and removes the unsupported
    # bearing counterbore. The separate ring supports only the outer bearing race.
    add(thing,kwargs,'oobb_hole','negative',radius=10.3,
        depth=d['holder_top']+2,pos=[0,0,-1])
    mechanics.draw_grid(thing,kwargs,'holder',-1,20)
    for site in grid_layout('retainer'):
        if site['included'] and not site['reserved_for_cover']:
            bottom=d['top_tip_relief_bottom'] if site['embedded_nut'] else d['face']-.1
            add(thing,kwargs,'oobb_hole','negative',radius_name=site['radius_name'],
                depth=10,pos=[site['x'],site['y'],bottom])
    thing['depth_mm']=d['holder_top']


def draw_retainer(thing,**kwargs):
    import servo_v2
    mechanics.draw_retainer(thing,**kwargs)
    d=dimensions()
    for x,y in clamp_joins():
        add(thing,kwargs,'oobb_screw_countersunk','negative',radius_name=servo_v2.flush_screw_profile(),
            depth=d['servo_screw_length'],pos=[x,y,d['servo_head_top']],zz='none',nut_include=False,clearance='top')


def draw_bearing_support(thing,**kwargs):
    d=dimensions()
    add(thing,kwargs,'oobb_cylinder',radius=13.6,depth=d['bearing_support_depth'],
        pos=[0,0,d['holder_top']],zz='bottom')
    add(thing,kwargs,'oobb_hole','negative',radius=12.7,depth=3,pos=[0,0,d['holder_top']-1])


def draw_nut_block_left(thing,**kwargs):
    draw_captive_nut_bar(thing,kwargs,-24,dimensions()['nut_block_top'],3.4)


def draw_nut_block_right(thing,**kwargs):
    draw_captive_nut_bar(thing,kwargs,14.5,dimensions()['nut_block_top'],3.4)


def draw_clamp(thing,side,**kwargs):
    cx,width=(-23.2,9.8) if side == 'left' else (12,10)
    # Default position fits the thickest ears. Bars float upwards for thin ears.
    add(thing,kwargs,'rounded_rectangle',size=[width,26,2],r=1,pos=[cx,0,-4.5])
    for x,y in clamp_joins():
        if (x<0) == (side=='left'):
            add(thing,kwargs,'oobb_hole','negative',radius_name='m3',depth=4,pos=[x,y,-5.5])
    for x in (-30,15):
        for y in (-15,15):
            add(thing,kwargs,'oobb_hole','negative',radius_name='m6',depth=4,pos=[x,y,-5.5])


def draw_clamp_left(thing,**kwargs):
    draw_clamp(thing,'left',**kwargs)


def draw_clamp_right(thing,**kwargs):
    draw_clamp(thing,'right',**kwargs)


def draw_clamshell(thing,**kwargs):
    d=dimensions()
    skin=oobb.get_default_thing(type='micro_shell_skin')
    add(skin,kwargs,'oobb_plate',width=4,height=3,holes=False,
        depth=d['shell_top']-d['shell_bottom'],pos=[-7.5,0,d['shell_bottom']],zz='bottom')
    add(skin,kwargs,'rounded_rectangle','negative',size=[53,39.6,60],r=2,
        pos=[-7.5,0,d['shell_floor']])
    thing['components'].append(group(skin['components']))
    thing['components_objects'].extend(skin['components_objects'])
    for x,y in cover_joins():
        # Pillars finish below the floating ear clamps, leaving tool access.
        add(thing,kwargs,'oobb_cylinder',radius=4.5,depth=-6.5-d['shell_floor'],
            pos=[x,y,d['shell_floor']],zz='bottom')
        add(thing,kwargs,'oobb_cube_center',size=[7,6,-6.5-d['shell_floor']],
            pos=[x,math.copysign(17.5,y),d['shell_floor']],zz='bottom')
        add(thing,kwargs,'oobb_screw_socket_cap','negative',radius_name='m3',
            depth=25,pos=[x,y,d['cover_screw_head']],rot=[180,0,0],zz='none',
            nut_include=False,clearance='top',overhang=True)
    mechanics.draw_grid(thing,kwargs,'bottom',d['shell_bottom']-1,5)
    add(thing,kwargs,'oobb_cube_center','negative',size=[8,12,9],
        pos=[-37,0,-23],zz='bottom')
    thing['depth_mm']=d['shell_top']-d['shell_bottom']


def draw_reference_case(thing,key,**kwargs):
    p=reference()['profiles'][key]
    length,width,height=p['body'];cx=p['shaft_offset']-length/2
    add(thing,kwargs,'rounded_rectangle',size=[length,width,height],r=.7,
        pos=[cx,0,p['case_top']-height])
    add(thing,kwargs,'oobb_cube_center',size=[p['tab_length'],width,p['tab_thickness']],
        pos=[p['tab_center_x'],0,-p['tab_thickness']],zz='bottom')
    for x,y in p['mount_positions']:
        add(thing,kwargs,'oobb_hole','negative',radius=p['mount_hole_diameter']/2,
            depth=5,pos=[x,y,-4])
    if p['spline_bottom']>p['case_top']:
        add(thing,kwargs,'oobb_cylinder',radius=p['boss_diameter']/2,
            depth=p['spline_bottom']-p['case_top'],pos=[0,0,p['case_top']],zz='bottom')
    add(thing,kwargs,'oobb_cube_center',size=[4,4,3],
        pos=[cx-length/2-1,0,p['case_top']-height+3],zz='bottom')


def draw_retention_reference(thing,p,**kwargs):
    mechanics.draw_retention_reference(thing,p,**kwargs)


DRAWINGS=dict(holder=draw_holder,bearing_retainer=draw_retainer,female_rotor=draw_rotor,
    output_lid=draw_output_lid,clamshell=draw_clamshell,
    clamp_left=draw_clamp_left,clamp_right=draw_clamp_right,bearing_support=draw_bearing_support,
    nut_block_left=draw_nut_block_left,nut_block_right=draw_nut_block_right)


def draw_assembly(thing,**kwargs):
    d=dimensions();outputs=thing['additional_outputs']={};assembled=[];exploded=[]
    for name,definition in kwargs['pieces'].items():
        part=oobb.get_default_thing(type='micro_v2_'+name)
        DRAWINGS[name](part,**kwargs)
        outputs['installed_'+name]=copy.deepcopy(part['components'])
        assembled.append(group(part['components']))
        exploded.append(group(part['components'],pos=definition['exploded_pos']))
        outputs[name]=[group(part['components'],pos=definition['print_offset'],rot=definition['print_rot'])]
        thing['components'].append(group(outputs[name],pos=definition['print_pos']))
        thing['components_objects'].extend(part['components_objects'])
    outputs['assembled_printed']=assembled
    outputs['exploded_printed']=exploded
    outputs['bottom_view']=[group(assembled,rot=[180,0,0])]
    print_cut=oobb.get_default_thing(type='micro_main_print_section')
    add(print_cut,kwargs,'oobb_cube_center',size=[100,60,30],pos=[-7.5,-30,-1],zz='bottom')
    outputs['main_plate_print_section']=[group(outputs['holder']),group(print_cut['components'],typ='negative')]
    bearing=oobb.get_default_thing(type='micro_reference_bearing')
    mechanics.draw_reference_bearing(bearing,**kwargs)
    outputs['reference_bearing']=bearing['components']
    cases=[];rotors=[];full=[];screws=[];interfaces=[]
    for i,(key,p) in enumerate(reference()['profiles'].items()):
        case=oobb.get_default_thing(type='micro_case_'+key)
        draw_reference_case(case,key,**kwargs)
        outputs['reference_case_'+key]=case['components']
        servo=copy.deepcopy(case)
        add(servo,kwargs,'oobb_cylinder',radius=p['spline_diameter']/2,
            depth=p['spline_top']-p['spline_bottom'],pos=[0,0,p['spline_bottom']],zz='bottom')
        outputs['reference_servo_'+key]=servo['components']
        rotor=oobb.get_default_thing(type='micro_rotor_'+key)
        draw_rotor(rotor,**dict(kwargs,socket_profile=key))
        outputs['installed_rotor_'+key]=rotor['components']
        outputs['female_rotor_'+key]=[group(rotor['components'],pos=[0,0,-p['runner_face']])]
        retention=oobb.get_default_thing(type='micro_retention_'+key)
        draw_retention_reference(retention,p,**kwargs)
        outputs['reference_retention_'+key]=retention['components']
        clamp_shift=2.5-p['tab_thickness']
        view=[group(outputs['installed_'+name],pos=[0,0,clamp_shift] if name.startswith(('clamp_','nut_block_')) else None)
              for name in kwargs['pieces'] if name != 'female_rotor']
        view += [group(rotor['components']),group(servo['components']),group(bearing['components'])]
        outputs['assembly_'+key]=view
        outputs['ear_clamping_'+key]=[group(case['components']),group(outputs['installed_holder'])]+[
            group(outputs['installed_'+n],pos=[0,0,clamp_shift]) for n in ('clamp_left','clamp_right','nut_block_left','nut_block_right')]
        cases.append(group(servo['components'],pos=[i*45,0,0]))
        rotors.append(group(outputs['female_rotor_'+key],pos=[i*30,0,0]))
        full.append(group(view,pos=[i*75,0,0]))
        screws += [group(rotor['components'],pos=[i*32,0,0]),group(retention['components'],pos=[i*32,0,0])]
        cut=oobb.get_default_thing(type='micro_socket_section')
        add(cut,kwargs,'oobb_cube_center',size=[50,30,60],pos=[0,-15,-10])
        interfaces.append(group([group(rotor['components']),group(cut['components'],typ='negative')],pos=[i*32,0,0]))
    outputs['comparison_servo_envelopes']=cases
    outputs['comparison_rotor_profiles']=rotors
    outputs['comparison_assemblies']=full
    outputs['comparison_retention_screws']=screws
    outputs['comparison_socket_sections']=interfaces
    outputs['assembly']=copy.deepcopy(outputs['assembly_sg90'])
    outputs['assembly_open']=[group(outputs['installed_'+n]) for n in kwargs['pieces'] if n != 'clamshell']+[
        group(outputs['reference_servo_sg90']),group(bearing['components'])]
    outputs['exploded']=exploded+[group(outputs['reference_servo_sg90']),group(bearing['components'],pos=[0,0,10])]
    outputs['horn_interface']=[group(outputs['installed_female_rotor'],pos=[0,0,d['split']],rot=[180,0,0])]
    half=oobb.get_default_thing(type='micro_section')
    add(half,kwargs,'oobb_cube_center',size=[120,80,120],pos=[-7.5,-40,-40])
    outputs['section']=[group(outputs['assembly']),group(half['components'],typ='negative')]
    coupons=oobb.get_default_thing(type='micro_fit_coupons')
    mechanics.draw_fit_coupons(coupons,**kwargs)
    outputs['horn_fit_test']=coupons['components']
    for name,drawing in [('bearing_fit_test',mechanics.draw_bearing_fit_coupons),
                         ('retention_bore_test',mechanics.draw_retention_coupons)]:
        part=oobb.get_default_thing(type='micro_'+name)
        drawing(part,**kwargs)
        outputs[name]=part['components']
    pattern_gauges=[]
    for i,(key,p) in enumerate(reference()['profiles'].items()):
        gauge=oobb.get_default_thing(type='ear_pattern_'+key)
        cx=p['tab_center_x']
        add(gauge,kwargs,'rounded_rectangle',size=[40,20,2],r=1,pos=[cx,0,0])
        add(gauge,kwargs,'oobb_cube_center','negative',size=[p['body'][0]+.6,p['body'][1]+.6,4],pos=[cx,0,-1],zz='bottom')
        for x,y in p['mount_positions']:
            add(gauge,kwargs,'oobb_hole','negative',radius=p['mount_hole_diameter']/2,
                depth=4,pos=[x,y,-1])
        add(gauge,kwargs,'oobb_text',text=key,size=1.5,depth=.5,
            pos=[cx,-8.5,2],font='Liberation Sans',halign='center',valign='center')
        outputs['mount_pattern_test_'+key]=gauge['components']
        pattern_gauges.append(group(gauge['components'],pos=[(i%3)*46,(i//3)*26,0]))
    outputs['comparison_mount_patterns']=pattern_gauges
    hardware=oobb.get_default_thing(type='micro_output_hardware')
    mechanics.draw_output_hardware(hardware,**kwargs)
    outputs['reference_output_fasteners']=hardware['components']
    drivers=oobb.get_default_thing(type='micro_clamp_driver_paths')
    for x,y in clamp_joins():
        add(drivers,kwargs,'oobb_cylinder',radius=1.5,depth=20,pos=[x,y,d['servo_head_top']],zz='bottom')
    outputs['reference_clamp_drivers']=drivers['components']
    cover_hardware=oobb.get_default_thing(type='micro_cover_fasteners')
    for x,y in cover_joins():
        add(cover_hardware,kwargs,'oobb_cylinder',radius=1.5,depth=d['cover_screw_length'],
            pos=[x,y,d['cover_screw_head']],zz='bottom')
        add(cover_hardware,kwargs,'oobb_cylinder',radius=oobb.gv('screw_socket_cap_radius_m3','true'),
            depth=3,pos=[x,y,d['cover_screw_head']-3],zz='bottom')
    outputs['reference_cover_fasteners']=cover_hardware['components']
    for key,p in reference()['profiles'].items():
        fasteners=oobb.get_default_thing(type='micro_clamp_fasteners_'+key)
        nuts=oobb.get_default_thing(type='micro_clamp_nuts_'+key)
        shift=2.5-p['tab_thickness']
        for x,y in clamp_joins():
            top=d['servo_head_top'];head_depth=oobb.gv('screw_countersunk_depth_m3','true')
            add(fasteners,kwargs,'oobb_cylinder',radius=1.5,depth=d['servo_screw_length']-head_depth,
                pos=[x,y,top-d['servo_screw_length']],zz='bottom')
            add(fasteners,kwargs,'oobb_cylinder',radius_1=1.5,radius_2=oobb.gv('screw_countersunk_radius_m3','true'),
                depth=head_depth,pos=[x,y,top-head_depth],zz='bottom')
            add(nuts,kwargs,'polyg',r=5.5/math.sqrt(3),sides=6,height=2.4,
                pos=[x,y,d['servo_nut_bottom']+shift],rot=[0,0,30])
        outputs['reference_clamp_fasteners_'+key]=fasteners['components']
        outputs['reference_clamp_nuts_'+key]=nuts['components']
    outputs['bottom_adjustment']=[group(outputs['assembly']),group(drivers['components']),
        group(outputs['reference_clamp_fasteners_sg90'])]
    outputs['diagonal_connectors']=[group(outputs['installed_female_rotor']),
        group(outputs['installed_output_lid'],pos=[0,0,8]),group(hardware['components'])]
    outputs['bearing_loading']=[group(outputs['installed_holder']),group(outputs['installed_bearing_support'],pos=[0,0,4]),group(bearing['components'],pos=[0,0,8]),
        group(outputs['installed_bearing_retainer'],pos=[0,0,20])]
    # Full-scale standard/micro comparison generated from the same current source.
    import servo_v2
    import working_oomp_populate
    option=next(o for o in working_oomp_populate.get_options() if o['oobb_name']=='holder_motor_servo_standard_v2')
    working_oomp_populate.apply_taxonomy(option)
    standard=oobb.get_default_thing(type='standard_comparison')
    servo_v2.draw_assembly(standard,**option['oobb_details'])
    outputs['comparison_standard_micro']=[group(standard['additional_outputs']['assembly'],pos=[-100,0,0]),group(outputs['assembly'])]
    outputs['comparison_standard_micro_sections']=[group(standard['additional_outputs']['section'],pos=[-100,0,0]),group(outputs['section'])]
    outputs['comparison_standard_micro_coupons']=[group(standard['additional_outputs']['horn_fit_test'],pos=[-80,0,0]),group(coupons['components'])]
    thing['depth_mm']=max(p['depth'] for p in kwargs['pieces'].values())
