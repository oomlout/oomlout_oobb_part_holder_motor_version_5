"""N20 holders with flat rear pieces located by the front M3 tension screws."""
import copy
import math

import oobb
import n20

add=n20.add
box=n20.box
hole=n20.hole
nut=n20.nut
screw=n20.screw
cylinder=n20.cylinder
group=n20.group


def parameters():
    return dict(motor_length_min_mm=20,motor_length_max_mm=35,
        motor_brush_style="precious_metal", extended_rear_shaft=True,
        face_bottom_mm=-3,face_top_mm=3,motor_face_screw_length_mm=4,
        motor_face_countersink_lift_mm=.4,motor_face_screw_pitch_mm=9,motor_thread_engagement_limit_mm=1.3,
        clamp_centers_x_mm=[-10.75,10.75],
        attachment_nut_centers_mm=[[-7.5,15],[7.5,15]],
        rear_clamp_depth_mm=6,rear_ranges_mm=[[20,25],[25,30],[30,35]],
        rear_range_mm=[25,30],rear_clamp_screw_length_mm=35,
        rear_nut_recess_mm=.5,rear_nut_depth_mm=3.2,
        rear_clamp_width_mm=31,rear_clamp_height_mm=12,clamp_driver_radius_mm=1.4,
        bearing_clamp_access_radius_mm=1.45,
        minimum_grid_web_mm=.7,cradle_axis_height_mm=30,
        bearing_join_centers_mm=[[-22.5,-7.5],[-22.5,7.5],[22.5,-7.5],[22.5,7.5]],
        bearing_join_screw_length_mm=25,bearing_spacer_bottom_mm=3,
        bearing_spacer_top_mm=8.8,bearing_nut_block_bottom_mm=-9.5,
        bearing_nut_block_depth_mm=6.5)


def rect_distance(x,y,cx,cy,w,h):
    return math.hypot(max(abs(x-cx)-w/2,0),max(abs(y-cy)-h/2,0))


def face_grid(p):
    width=p['face_width']; height=p['height']; web=p['minimum_grid_web_mm']
    records=[]
    for ix in range(2*width-1):
        for iy in range(2*height-1):
            x,y=(ix-width+1)*7.5,(iy-height+1)*7.5
            name='m6' if ix%2==0 and iy%2==0 else 'm3'
            r=oobb.gv('hole_radius_'+name,'3dpr'); reasons=[]
            if rect_distance(x,y,0,0,p['motor_width_mm']+2*p['body_clearance_mm'],
                             p['motor_height_mm']+2*p['body_clearance_mm']) < r+web:
                reasons.append('motor locating pocket and minimum web')
            for cx in p['clamp_centers_x_mm']:
                if math.hypot(x-cx,y)<r+oobb.gv('screw_countersunk_radius_m3','3dpr')+web:
                    reasons.append('front M3 rear-clamp countersink')
            for cx in (-4.5,4.5):
                if math.hypot(x-cx,y)<r+oobb.gv('screw_countersunk_radius_m1_6','3dpr')+web:
                    reasons.append('M1.6 motor countersink')
            records.append(dict(face='motor_face',x=x,y=y,radius_name=name,
                radius_mm=r,bottom=-3,depth=6,included=not reasons,exclusions=reasons,coordinate_frame='motor'))
    return records


def plain_grid(t,p,records):
    t.setdefault('grid_hole_audit',[]).extend(copy.deepcopy(records))
    for site in records:
        if site['included']:
            hole(t,p,[site['x'],site['y'],site['bottom']-.1],site['depth']+.2,site['radius_name'])


def range_parameters(p,band,length=None):
    q=copy.deepcopy(p);q['rear_range_mm']=list(band)
    q['rear_clamp_screw_length_mm']=band[1]+10
    if length is not None:q['motor_body_length_mm']=length
    return q


def holder(t,**p):
    add(t,p,'oobb_plate',width=p['face_width'],height=3,depth=6,holes=False,pos=[0,0,-3])
    face_interface(t,p)
    plain_grid(t,p,face_grid(p))
    for x,y in p['attachment_nut_centers_mm']:
        nut(t,p,[x,y,-3.1],depth=3.3)


def face_interface(t,p):
    # Three mm gearbox inset: its face stops at Z=0, under the 3 mm front skin.
    box(t,p,[p['motor_width_mm']+2*p['body_clearance_mm'],
             p['motor_height_mm']+2*p['body_clearance_mm'],3.2],[0,0,-3.2],typ='negative')
    # A shallow entry step catches the gearbox without changing the locating land.
    box(t,p,[p['motor_width_mm']+2*p['body_clearance_mm']+.6,
             p['motor_height_mm']+2*p['body_clearance_mm']+.6,.7],[0,0,-3.1],typ='negative')
    hole(t,p,[0,0,-.1],3.2,radius=p['boss_diameter_mm']/2+.25)
    for x in (-4.5,4.5):
        screw(t,p,[x,0,3+p['motor_face_countersink_lift_mm']],p['motor_face_screw_length_mm'],'m1_6',style='countersunk')
    for x in p['clamp_centers_x_mm']:
        screw(t,p,[x,0,3],p['rear_clamp_screw_length_mm'],style='countersunk')


def rear_boss_height(p):
    return {'precious_metal':1.2, 'hpcb':.8}[p['motor_brush_style']]


def contact_length(p):
    return p['motor_body_length_mm'] - rear_boss_height(p)


def rear_clamp(t,**p):
    l=contact_length(p); depth=p['rear_clamp_depth_mm'];bottom=-l-depth
    box(t,p,[p['rear_clamp_width_mm'],p['rear_clamp_height_mm'],depth],[0,0,bottom])
    box(t,p,[9.2,6.4,depth+.2],[0,0,bottom-.1],typ='negative')
    for x in p['clamp_centers_x_mm']:
        hole(t,p,[x,0,bottom-.1],depth+.2)
        # Native hex pocket opens at the rear face, which is the print's top.
        # Keep a solid 2.8 mm bearing floor between nut and motor contact face.
        nut(t,p,[x,0,bottom-.1],depth=p['rear_nut_depth_mm']+.1)
    low,high=p['rear_range_mm']
    add(t,p,'oobb_text','negative',text=f'{low}-{high}',size=1.8,depth=.55,
        pos=[0,4.6,bottom+.45],rot=[180,0,0],font='Liberation Sans',halign='center',valign='center')


def cradle_holder(t,**p):
    canonical=oobb.get_default_thing(type='n20_cradle_face')
    holder(canonical,**p)
    t['components'].append(group(canonical['components'],rot=[0,90,0],pos=[0,0,30]))
    t['components_objects'].extend(canonical['components_objects'])
    t['grid_hole_audit']=canonical['grid_hole_audit']
    add(t,p,'oobb_plate',width=4,height=3,depth=6,holes=False,pos=[-15,0,0])
    box(t,p,[6,44,4],[0,0,6])
    # All 35 foot candidates fit the plain-hole grid.
    records=[]
    for ix in range(7):
        for iy in range(5):
            x,y=(ix-3)*7.5-15,(iy-2)*7.5
            name='m6' if ix%2==0 and iy%2==0 else 'm3'
            records.append(dict(face='cradle_foot',x=x,y=y,radius_name=name,
                radius_mm=oobb.gv('hole_radius_'+name,'3dpr'),bottom=0,depth=6,
                included=True,exclusions=[],coordinate_frame='world'))
    plain_grid(t,p,records)


def bearing_half(t,upper=False,**p):
    bottom,top=(12.1,15.4) if upper else (8.8,12.1)
    add(t,p,'oobb_plate',width=5,height=3,depth=top-bottom,holes=False,pos=[0,0,bottom])
    hole(t,p,[0,0,bottom-.1],top-bottom+.2,radius=12.5)
    seat_start=max(bottom,9.9); end=min(top,14.1)
    if end>seat_start:
        hole(t,p,[0,0,seat_start-.001],end-seat_start+.002,radius=13.65)
    records=[]
    for ix in range(9):
        for iy in range(5):
            x,y=(ix-4)*7.5,(iy-2)*7.5
            name='m6' if ix%2==0 and iy%2==0 else 'm3'
            r=oobb.gv('hole_radius_'+name,'3dpr'); reasons=[]
            if math.hypot(x,y)<13.65+r+p['minimum_grid_web_mm']:
                reasons.append('6704 seat and minimum web')
            for cx,cy in p['bearing_join_centers_mm']:
                if math.hypot(x-cx,y-cy)<.01: continue
                if upper and math.hypot(x-cx,y-cy)<r+3.6+p['minimum_grid_web_mm']:
                    reasons.append('bearing join countersink')
            records.append(dict(face='bearing_cap' if upper else 'bearing_lower',x=x,y=y,
                radius_name=name,radius_mm=r,bottom=bottom,depth=top-bottom,
                included=not reasons,exclusions=reasons))
    plain_grid(t,p,records)
    for x,y in p['bearing_join_centers_mm']:
        if upper: screw(t,p,[x,y,15.4],25,style='countersunk')
        else: hole(t,p,[x,y,8.7],3.6)
    # Front clamp screws sit beyond the bearing OD. Straight key passages
    # preserve access with the bearing and both retainers already installed.
    for x in p['clamp_centers_x_mm']:
        hole(t,p,[x,0,bottom-.1],top-bottom+.2,radius=p['bearing_clamp_access_radius_mm'])


def spacer(t,x,y,**p):
    cylinder(t,p,4.5,3,5.8,pos=[x,y,3])
    hole(t,p,[x,y,2.9],6)


def nut_block(t,x,y,**p):
    box(t,p,[8,8,6.5],[x,y,-9.5])
    hole(t,p,[x,y,-9.6],6.7)
    nut(t,p,[x,y,-9.6],depth=3.2)


def motor_reference(t,**p):
    # Pololu Rev 6.2 pp. 7-8. Overall length includes the rear bearing boss.
    # Internal gearbox detail is schematic. Its three plates retain the full
    # nominal 12 x 10 envelope at the face, intermediate plate and motor end.
    gear=p['gearbox_length_mm']
    length=contact_length(p)
    for z in (-gear,-gear*.55,-1.3):
        box(t,p,[12,10,1.3],[0,0,z])
    for x,y in ((-3.5,-2.5),(3.5,2.5)):
        cylinder(t,p,1.35,-gear,gear,pos=[x,y,-gear])
    cylinder(t,p,3.6,-gear,gear)
    can=oobb.get_default_thing(type='n20_flat_sided_can')
    cylinder(can,p,6,-length,length-gear+.02)
    for y in (-10,10):
        box(can,p,[14,10,length-gear+.2],[0,y,-length-.1],typ='negative')
    t['components'].append(group(can['components']))
    cylinder(t,p,2.5,-p['motor_body_length_mm'],rear_boss_height(p)+.01)
    if p['extended_rear_shaft']:
        cylinder(t,p,.5,-p['motor_body_length_mm']-5,5.01)
    pitch,width=(6.9,1.5) if p['motor_brush_style']=='precious_metal' else (6.2,2)
    for x in (-pitch/2,pitch/2):
        # Solder tab thickness is an allowance. Width lies across Y in side view.
        box(t,p,[.5,width,1.81],[x,0,-length-1.8])
    cylinder(t,p,2,0,.7)
    n20.d_profile(t,p,.7,9.3,offset=0,typ='positive')
    # Nominal threaded-hole voids distinguish intended engagement from collision.
    for x in (-4.5,4.5): hole(t,p,[x,0,-1.3],1.31,radius=.8)


def face_fasteners(t,**p):
    for x in (-4.5,4.5):
        n20.nominal_screw(t,p,[x,0,3],4,'m1_6',head='countersunk')


def clamp_fasteners(t,**p):
    for x in p['clamp_centers_x_mm']:
        n20.nominal_screw(t,p,[x,0,3],p['rear_clamp_screw_length_mm'],head='countersunk')
        n20.nominal_nut(t,p,[x,0,-contact_length(p)-p['rear_clamp_depth_mm']+
                            p['rear_nut_recess_mm']],'m3')


def bearing_fasteners(t,**p):
    for x,y in p['bearing_join_centers_mm']:
        n20.nominal_screw(t,p,[x,y,15.4],25,head='countersunk')
        n20.nominal_nut(t,p,[x,y,-9.25],'m3')


def draw(t,**p):
    cradle=p['holder_style']=='cradle'
    defs=[('holder',cradle_holder if cradle else holder,[0,0,0] if cradle else [0,0,3],
           [0,0,0] if cradle else [180,0,0],False),
          ('rear_clamp',rear_clamp,[0,0,-contact_length(p)],[180,0,0],True)]
    if p['holder_style']=='bearing_cassette':
        defs += [('bearing_lower',lambda t,**q:bearing_half(t,False,**q),[0,0,-8.8],[0,0,0],False),
                 ('bearing_cap',lambda t,**q:bearing_half(t,True,**q),[0,0,15.4],[180,0,0],False)]
        for i,(x,y) in enumerate(p['bearing_join_centers_mm']):
            defs += [(f'spacer_{i}',lambda t,x=x,y=y,**q:spacer(t,x,y,**q),[-x,-y,-3],[0,0,0],False),
                     (f'nut_block_{i}',lambda t,x=x,y=y,**q:nut_block(t,x,y,**q),[-x,-y,9.5],[0,0,0],False)]
    t['additional_outputs']={}; t['piece_placements']={};t['grid_hole_audit']={}
    printed=[]; exploded=[]
    transform=lambda objects: group(objects,rot=[0,90,0],pos=[0,0,30]) if cradle else group(objects)
    for i,(name,draw,shift,rot,canonical) in enumerate(defs):
        piece=oobb.get_default_thing(type='n20_holder_only_'+name); draw(piece,**p)
        bed=group(piece['components'],pos=shift,rot=rot)
        t['additional_outputs'][name]=[bed]
        xy=[(i%4)*85,(i//4)*85,0]
        t['components'].append(group([bed],pos=xy))
        installed=transform(piece['components']) if cradle and canonical else group(piece['components'])
        printed.append(installed)
        exploded.append(group([installed],pos=[0 if not cradle else -i*14,0,i*12 if not cradle else 0]))
        t['piece_placements'][name]=dict(print_pos=shift,print_rot=rot,print_xy=xy,
            role='stationary',world_coordinates=cradle and not canonical)
        t['grid_hole_audit'][name]=piece.get('grid_hole_audit',[])
        t['components_objects'].extend(piece['components_objects'])
    t['additional_outputs']['assembled_printed']=printed
    t['additional_outputs']['stationary_local']=printed
    references=[]
    for name,fn in [('motor',motor_reference),('face_fasteners',face_fasteners),('clamp_fasteners',clamp_fasteners)]:
        part=oobb.get_default_thing(type='n20_reference_'+name); fn(part,**p)
        objects=[transform(part['components'])]; t['additional_outputs']['reference_'+name]=objects
        references+=objects
    if p['holder_style']=='bearing_cassette':
        for name,fn in [('bearing',n20.bearing_reference),('bearing_fasteners',bearing_fasteners)]:
            part=oobb.get_default_thing(type='n20_reference_'+name); fn(part,**p)
            t['additional_outputs']['reference_'+name]=part['components']; references+=part['components']
    t['additional_outputs']['assembly']=printed+references
    t['additional_outputs']['exploded']=exploded+references
    rears=[];t['rear_piece_options']=[]
    for index,band in enumerate(p['rear_ranges_mm']):
        q=range_parameters(p,band,sum(band)/2)
        part=oobb.get_default_thing(type='n20_rear_range');rear_clamp(part,**q)
        bed=group(part['components'],pos=[0,0,-contact_length(q)],rot=[180,0,0])
        name=f'rear_{band[0]}_{band[1]}'
        t['additional_outputs'][name]=[bed];rears.append(group([bed],pos=[index*50,0,0]))
        t['rear_piece_options'].append(dict(name=name,motor_length_range_mm=list(band),
            screw_length_mm=q['rear_clamp_screw_length_mm'],print_height_mm=p['rear_clamp_depth_mm'],
            construction='slim flat rear; top-open native OOBB nuts; screw length covers whole labelled range'))
    t['additional_outputs']['rear_pieces']=rears
    if p['holder_style']=='through_plate':
        # Actual production interface in three small faceplates, plus the common rear.
        tray=[]
        for index,clearance in enumerate(p['motor_pocket_fit_values_mm']):
            trial=dict(p,body_clearance_mm=clearance)
            face=oobb.get_default_thing(type='n20_mount_trial')
            box(face,trial,[32,18,6],[0,0,-3])
            face_interface(face,trial)
            add(face,trial,'oobb_text','negative',text=f'{clearance:.2f}',size=1.8,
                depth=.5,pos=[0,7,-2.6],rot=[180,0,0],halign='center',valign='center')
            tray.append(group(face['components'],rot=[180,0,0],pos=[index*36,0,3]))
        tray.append(group(t['additional_outputs']['rear_clamp'],pos=[0,23,0]))
        t['additional_outputs']['mount_trial_tray']=tray
        for style in ('precious_metal','hpcb'):
            for gear,length in ((9,25.6),(12.5,29.1)):
                motor=oobb.get_default_thing(type='n20_motor_sample')
                motor_reference(motor,**dict(p,motor_brush_style=style,gearbox_length_mm=gear,
                                             motor_body_length_mm=length))
                t['additional_outputs'][f'motor_sample_{style}_{gear:g}'.replace('.','d')]=motor['components']
    t['depth_mm']=p['depth']


def draw_shaft_test(t,**p):
    # Keep the previous grip trials independent from the revised holder geometry.
    t['additional_outputs']={};t['piece_placements']={}
    defs=[('rotor',n20.rotor,[0,0,26],[180,0,0])]
    if p['grip_style']=='taper_collet':
        defs += [('collet_insert',n20.collet_insert,[0,0,-3.7],[0,0,0]),
                 ('collet_cap',n20.collet_cap,[0,0,-1.7],[0,0,0])]
    installed=[]
    for i,(name,fn,shift,rot) in enumerate(defs):
        part=oobb.get_default_thing(type='n20_testing_'+name);fn(part,**p)
        bed=group(part['components'],pos=shift,rot=rot)
        t['components'].append(group([bed],pos=[i*65,0,0]));t['additional_outputs'][name]=[bed]
        installed.append(group(part['components']))
        t['piece_placements'][name]=dict(print_pos=shift,print_rot=rot,print_xy=[i*65,0,0],
            role='rotating',world_coordinates=False)
        t['components_objects'].extend(part['components_objects'])
    t['additional_outputs']['assembled_printed']=installed
    t['additional_outputs']['assembly']=installed
    t['depth_mm']=p['depth']
