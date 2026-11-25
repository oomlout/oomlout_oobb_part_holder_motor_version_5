"""N20 holders and interchangeable single-D grips, using OOBB v5 primitives.

Canonical coordinates put the gearbox front at Z=0 and the output along +Z.
The cradle rotates that same motor/grip frame onto its horizontal foot.
All tolerances are catalogue parameters; hardware references are nominal solids.
"""
import copy
import math

import oobb


HOLDERS = ('through_plate', 'bearing_cassette')
GRIPS = ('split_clamp', 'nut_grub', 'metal_hub', 'taper_collet', 'press_fit')


def defaults():
    return dict(motor_body_length_mm=25.6, motor_width_mm=12, motor_height_mm=10,
        gearbox_length_mm=9, body_clearance_mm=.25, shaft_diameter_mm=3,
        shaft_flat_mm=2.5, shaft_extension_mm=10, shaft_profile_offset_mm=.08,
        press_fit_profile_offset_mm=0, boss_diameter_mm=4, boss_height_mm=.7,
        bearing_od_mm=27, bearing_id_mm=20, bearing_width_mm=4,
        bearing_seat_diameter_clearance_mm=.3, journal_diameter_clearance_mm=.2,
        bearing_bottom_mm=10, bearing_axial_clearance_mm=.2,
        output_bottom_mm=18, output_thickness_mm=8, grip_bottom_mm=1.5,
        metal_hub_diameter_mm=17.5, metal_hub_depth_mm=5, metal_hub_pcd_mm=12.7,
        collet_radial_clearance_mm=.05, collet_cap_travel_mm=.5,
        cradle_axis_height_mm=22.5, motor_pocket_fit_values_mm=[.15,.25,.35],
        shaft_fit_values_mm=[0,.05,.1,.15])


def add(t, p, shape, typ='positive', **fields):
    q = copy.deepcopy(p)
    for key in ('pieces','radius','radius_1','radius_2','radius_name','r','r1','r2',
                'size','rot','depth','height','width','mode','inclusion','color'):
        q.pop(key, None)
    q.update(shape=shape, type=typ, zz='bottom')
    q.update(copy.deepcopy(fields))
    if 'screw' in shape or 'nut' in shape:
        q.setdefault('overhang', True)
    oobb.append_full(t, **q)


def group(objects, pos=None, rot=None, typ='positive'):
    return dict(type='rotation',typetype=typ,pos=pos or [0,0,0],
                rot=rot or [0,0,0],objects=copy.deepcopy(objects))


def box(t,p,size,pos,typ='positive',**kw):
    add(t,p,'oobb_cube',typ,size=size,pos=pos,**kw)


def cylinder(t,p,r,z,h,typ='positive',pos=None,**kw):
    add(t,p,'oobb_cylinder',typ,radius=r,depth=h,pos=pos or [0,0,z],**kw)


def hole(t,p,pos,depth,name='m3',rot=None,radius=None):
    fields = dict(pos=pos,depth=depth,rot=rot or [0,0,0])
    fields.update(radius=radius) if radius is not None else fields.update(radius_name=name)
    add(t,p,'oobb_hole','negative',**fields)


def nut(t,p,pos,name='m3',rot=None,depth=None,clearance=''):
    add(t,p,'oobb_nut','negative',pos=pos,radius_name=name,
        depth=depth or oobb.gv('nut_depth_'+name,'3dpr'),rot=rot or [0,0,0],
        clearance=clearance,overhang=True)


def screw(t,p,pos,length,name='m3',rot=None,style='socket_cap'):
    add(t,p,'oobb_screw_'+style,'negative',pos=pos,depth=length,
        radius_name=name,rot=rot or [0,0,0],zz='none',nut_include=False,
        clearance='top',overhang=True)


def d_profile(t,p,z,h,offset=None,typ='negative',pos=None):
    """A single flat, using a native cylinder minus a native rectangular cutter."""
    offset=p['shaft_profile_offset_mm'] if offset is None else offset
    r=p['shaft_diameter_mm']/2+offset
    plane=p['shaft_flat_mm']-p['shaft_diameter_mm']/2+offset
    cut=oobb.get_default_thing(type='n20_D_profile')
    cylinder(cut,p,r,0,h)
    box(cut,p,[12,12,h+2],[0,plane+6,-1],typ='negative')
    t['components'].append(group(cut['components'],pos=pos or [0,0,z],typ=typ))
    t['components_objects'].extend(cut['components_objects'])


def nominal_nut(t,p,pos,name,rot=None):
    """Native nut with nominal AF rather than the enlarged print-pocket profile."""
    key='n20_nominal_'+name
    for mode in ('laser','3dpr','true'):
        oobb.set_variable('nut_radius_'+key, {'m3':5.5,'m6':10}[name]/math.sqrt(3),mode)
    add(t,p,'oobb_nut',pos=pos,radius_name=key,depth={'m3':2.4,'m6':5}[name],
        rot=rot or [0,0,0],overhang=False)


def nominal_screw(t,p,pos,length,name='m3',rot=None,head='socket'):
    ref=oobb.get_default_thing(type='n20_nominal_screw')
    radius={'m1_6':.8,'m3':1.5,'m6':3}[name]
    cylinder(ref,p,radius,-length,length)
    if head=='socket':
        cylinder(ref,p,{'m1_6':1.5,'m3':2.75,'m6':5}[name],0,{'m1_6':1.6,'m3':3,'m6':6}[name])
    elif head=='countersunk':
        height=.96 if name=='m1_6' else 1.5
        add(ref,p,'oobb_cylinder',radius_1=radius,radius_2=1.5 if name=='m1_6' else 3,
            depth=height,pos=[0,0,-height])
    t['components'].append(group(ref['components'],pos=pos,rot=rot))


def audit_grid(t,p,width,height,bottom,depth,label,exclusions=(),allowed=None,nuts=(),origin=(0,0)):
    """Record every full/half-grid site; protect head/nut as well as shaft space."""
    records=t.setdefault('grid_hole_audit',[])
    for ix in range(2*width-1):
        for iy in range(2*height-1):
            x,y=(ix-width+1)*7.5,(iy-height+1)*7.5
            name='m6' if ix%2==0 and iy%2==0 else 'm3'
            # External nuts and screw heads must also fit at a usable grid site.
            radius=max(oobb.gv('nut_radius_'+name,'3dpr'),
                       oobb.gv('screw_socket_cap_radius_'+name,'3dpr'))
            reasons=[why for cx,cy,r,why in exclusions
                     if math.hypot(x-cx,y-cy)<r+radius+.8]
            if allowed is not None and (x,y) not in allowed:
                reasons.append('reserved motor, coupling, nut or tool envelope')
            rec=dict(face=label,x=x+origin[0],y=y+origin[1],radius_name=name,included=not reasons,
                     exclusions=reasons,bottom=bottom,depth=depth)
            records.append(rec)
            if reasons:
                continue
            hole(t,p,[x+origin[0],y+origin[1],bottom-.1],depth+.2,name)
            if (x,y) in nuts:
                nut(t,p,[x+origin[0],y+origin[1],bottom],name)


def motor_reference(t,**p):
    l=p['motor_body_length_mm']; g=p['gearbox_length_mm']
    box(t,p,[p['motor_width_mm'],p['motor_height_mm'],g],[0,0,-g])
    box(t,p,[p['motor_width_mm'],p['motor_height_mm'],l-g],[0,0,-l])
    cylinder(t,p,p['boss_diameter_mm']/2,0,p['boss_height_mm'])
    d_profile(t,p,p['boss_height_mm'],p['shaft_extension_mm']-p['boss_height_mm'],offset=0,typ='positive')
    # Conservative solder/terminal/rear-shaft envelopes; not printable parts.
    for x in (-3.45,3.45):
        box(t,p,[1.5,1.8,4],[x,0,-l-4])
    cylinder(t,p,.5,-l-5,5)


def vertical_holder(t,**p):
    l=p['motor_body_length_mm']; c=p['body_clearance_mm']
    add(t,p,'oobb_plate',width=3,height=3,depth=6,holes=False,pos=[0,0,-6])
    box(t,p,[20,18,10.2],[0,0,-9])
    box(t,p,[p['motor_width_mm']+2*c,p['motor_height_mm']+2*c,9.5],
        [0,0,-9.5],typ='negative')
    hole(t,p,[0,0,-.1],2,radius=p['boss_diameter_mm']/2+.25)
    # Long bolt columns leave the rear shaft and terminal plane open.
    rear=-l-4
    for x in (-12,12):
        box(t,p,[8,9,l-6],[x,0,rear+4])
        hole(t,p,[x,0,rear-.1],l+5)
        nut(t,p,[x,0,-5.6],rot=[0,0,0],clearance='left' if x>0 else 'right')
    allowed={(-15.,-15.),(-15.,15.),(15.,-15.),(15.,15.)}
    audit_grid(t,p,3,3,-6,6,'motor_face',allowed=allowed)
    if p['grip_style']=='taper_collet':
        for y in (-8.5,8.5):
            hole(t,p,[0,y,-p['motor_body_length_mm']-8],40,radius=1.7)
    if p['holder_style']=='bearing_cassette':
        # Recess the socket heads 1 mm: an M6 x 20 reaches the whole nut
        # without protruding into the rotating output's swept volume.
        for x in (-15,15):
            for y in (-15,15):
                screw(t,p,[x,y,-5],20,'m6',rot=[180,0,0])


def rear_keeper(t,**p):
    l=p['motor_body_length_mm']; rear=-l-4
    box(t,p,[32,16,4],[0,0,rear])
    # A 9 x 6 cable window clears both terminals and the optional rear shaft.
    box(t,p,[9.2,6.4,6],[0,0,rear-1],typ='negative')
    for x in (-12,12):
        screw(t,p,[x,0,rear],30,rot=[180,0,0],style='countersunk')
    if p['grip_style']=='taper_collet':
        for y in (-8.5,8.5):
            hole(t,p,[0,y,rear-.1],4.2,radius=1.7)


def cradle_world_holder(t,**p):
    axis=p['cradle_axis_height_mm']; l=p['motor_body_length_mm']; c=p['body_clearance_mm']
    add(t,p,'oobb_plate',width=4,height=3,depth=6,holes=False,pos=[-15,0,0])
    # Motor can bed with two screw towers, below the removable saddle.
    box(t,p,[18,32,axis-6-.4],[-17,0,6])
    box(t,p,[l-9,10+2*c,16],[-(l+9)/2,0,axis-6],typ='negative')
    # Gearbox cage and axial shoulder, protecting the exposed gear train.
    box(t,p,[10.2,18,16],[-3.9,0,axis-8])
    box(t,p,[9.5,10+2*c,12+2*c],[-4.75,0,axis-6-c],typ='negative')
    hole(t,p,[0,0,axis],2,rot=[0,90,0],radius=2.25)
    # Rear stop contacts the end-cap rim, with an open terminal/shaft window.
    box(t,p,[3,18,15],[-l-1.8,0,axis-7.5])
    box(t,p,[5,9.2,8.8],[-l-1.8,0,axis-4.4],typ='negative')
    # Tie the cages to the foot without placing material in the motor envelope.
    for x in (-l-1.8,-4):
        # Narrow rear pedestal leaves a clear M3 mounting-nut bay either side.
        box(t,p,[4,6 if x < -10 else 18,axis-13.5],[x,0,6])
    for y in (-12,12):
        hole(t,p,[-17,y,5.9],30)
        nut(t,p,[-17,y,6.3],clearance='left' if y>0 else 'right')
    # Grid coordinates are local to the base centre; preserve corner M6 access.
    allowed={(-22.5,-15.),(-22.5,15.),(22.5,-15.),(22.5,15.),
             (-15.,-7.5),(-15.,7.5)}
    audit_grid(t,p,4,3,0,6,'cradle_foot',allowed=allowed,origin=(-15,0))
    if p['grip_style']=='taper_collet':
        for y in (-8.5,8.5):
            hole(t,p,[-40,y,axis],42,rot=[0,90,0],radius=1.7)


def cradle_saddle_world(t,**p):
    axis=p['cradle_axis_height_mm']
    box(t,p,[10,32,8.5],[-17,0,axis])
    box(t,p,[12,10+2*p['body_clearance_mm'],6.1],[-17,0,axis],typ='negative')
    for y in (-12,12):
        screw(t,p,[-17,y,axis+8.5],25,style='countersunk')
    if p['grip_style']=='taper_collet':
        for y in (-8.5,8.5):
            hole(t,p,[-24,y,axis],14,rot=[0,90,0],radius=1.7)


def bearing_half(t,upper=False,**p):
    bottom,top=(12.1,15.4) if upper else (8.8,12.1)
    add(t,p,'oobb_plate',width=3,height=3,depth=top-bottom,holes=False,pos=[0,0,bottom])
    hole(t,p,[0,0,bottom-.1],top-bottom+.2,radius=12.5)
    # Seat extends 0.2 mm beyond nominal bearing width, avoiding axial preload.
    seat_bottom=p['bearing_bottom_mm']-.1
    z=max(bottom,seat_bottom); end=min(top,seat_bottom+p['bearing_width_mm']+.2)
    if end>z:
        hole(t,p,[0,0,z-.001],end-z+.002,
             radius=(p['bearing_od_mm']+p['bearing_seat_diameter_clearance_mm'])/2)
    corners={(x,y) for x in (-15.,15.) for y in (-15.,15.)}
    audit_grid(t,p,3,3,bottom,top-bottom,'bearing_cap' if upper else 'bearing_lower',allowed=corners)
    for x,y in corners:
        if upper:
            nut(t,p,[x,y,top-5.5],'m6')
    # Upper nut pockets continue into the lower half so a whole M6 nut seats.
    if not upper:
        for x,y in corners:
            nut(t,p,[x,y,15.4-5.5],'m6')


def output_grid(t,**p):
    z=p['output_bottom_mm']; h=p['output_thickness_mm']
    add(t,p,'oobb_plate',width=3,height=3,depth=h,holes=False,pos=[0,0,z])
    corners={(x,y) for x in (-15.,15.) for y in (-15.,15.)}
    cross={(-7.5,0.),(7.5,0.),(0.,-7.5),(0.,7.5)}
    # Central bore is coupling/tool access, not an advertised M6 fastener site.
    allowed=set(corners)
    if p['grip_style']!='metal_hub':
        allowed|=cross
    audit_grid(t,p,3,3,z,h,'output',allowed=allowed)
    for x,y in corners:
        nut(t,p,[x,y,z],'m6')
    if p['grip_style']!='metal_hub':
        for x,y in cross:
            # Radial side-loading keeps the nut below a solid top skin and
            # makes a top-down screw usable without burying its head in the neck.
            nut(t,p,[x,y,z+.8],'m3',rot=[0,0,math.degrees(math.atan2(y,x))],clearance='left')


def rotor(t,**p):
    grip=p['grip_style']; z=p['grip_bottom_mm']
    r=(p['bearing_id_mm']-p['journal_diameter_clearance_mm'])/2
    cylinder(t,p,r,z,p['output_bottom_mm']-z+.01)
    # Upper inner-race shoulder, bearing slides over the free lower journal.
    cylinder(t,p,11,14.2,p['output_bottom_mm']-14.2+.01)
    output_grid(t,**p)
    hole(t,p,[0,0,10.8],p['output_bottom_mm']+p['output_thickness_mm']-10.7,'m6')
    if grip in ('split_clamp','nut_grub','press_fit'):
        d_profile(t,p,z-.1,10.5-z,
                  offset=p['press_fit_profile_offset_mm'] if grip=='press_fit' else None)
    if grip=='split_clamp':
        box(t,p,[.8,12,7.5],[0,7,z-.1],typ='negative')
        screw(t,p,[7.5,5.5,5],16,rot=[0,90,0])
        # Extend the hex entry past the curved OD so the nut can slide in
        # axially; a shallow pocket alone is hidden behind the cylinder wall.
        nut(t,p,[-15.5,5.5,5],rot=[0,90,0],depth=10)
    elif grip=='nut_grub':
        hole(t,p,[0,1,5],14,rot=[-90,0,0])
        nut(t,p,[0,5,5],rot=[-90,0,0],clearance='left')
    elif grip=='metal_hub':
        cylinder(t,p,p['metal_hub_diameter_mm']/2+.2,z-.1,p['metal_hub_depth_mm']+.2,'negative')
        hole(t,p,[0,0,z+p['metal_hub_depth_mm']-.1],4.5,radius=1.75)
        # Full-depth native socket recesses double as unobstructed hex-key wells.
        for x,y in metal_centers(p):
            screw(t,p,[x,y,12],8)
        # Radial M3 grub access, above boss and below the bearing housing.
        hole(t,p,[0,7.5,4],10,rot=[-90,0,0],radius=2)
    elif grip=='taper_collet':
        # Lower skirt houses side-loadable M3 nuts below the bearing.
        cylinder(t,p,12,4.2,4.6)
        hole(t,p,[0,0,z-.1],5.2-z+.1,radius=5.7)
        add(t,p,'oobb_cylinder','negative',radius_1=4.5+p['collet_radial_clearance_mm'],
            radius_2=3.5+p['collet_radial_clearance_mm'],depth=5.5,pos=[0,0,5.2])
        hole(t,p,[0,0,10.7],.2,radius=2.3)
        # No rotor body below the skirt, leaving room for insert and cap.
        box(t,p,[30,30,4.22-z+.001],[0,0,z-.001],typ='negative')
        for y in (-8.5,8.5):
            hole(t,p,[0,y,4.1],6)
            nut(t,p,[0,y,5.5],rot=[0,0,90 if y>0 else 270],clearance='left')


def metal_centers(p):
    a=p['metal_hub_pcd_mm']/2/math.sqrt(2)
    return [(x,y) for x in (-a,a) for y in (-a,a)]


def collet_insert(t,**p):
    cylinder(t,p,5.5,3.7,1.5)
    add(t,p,'oobb_cylinder',radius_1=4.5,radius_2=3.5,depth=5.5,pos=[0,0,5.2])
    d_profile(t,p,3.6,7.2)
    # Three axial slots terminate above the unbroken flange.
    for angle in (0,120,240):
        slit=oobb.get_default_thing(type='n20_collet_slit')
        box(slit,p,[.7,10,5.7],[0,5,5.1])
        t['components'].append(group(slit['components'],rot=[0,0,angle],typ='negative'))


def collet_cap(t,**p):
    cylinder(t,p,12,1.7,2)
    hole(t,p,[0,0,1.6],2.2,radius=2.3)
    for y in (-8.5,8.5):
        screw(t,p,[0,y,1.7],8,rot=[180,0,0],style='countersunk')


def bearing_reference(t,**p):
    cylinder(t,p,p['bearing_od_mm']/2,p['bearing_bottom_mm'],p['bearing_width_mm'])
    cylinder(t,p,p['bearing_id_mm']/2,p['bearing_bottom_mm']-.1,p['bearing_width_mm']+.2,'negative')


def hub_reference(t,**p):
    z=p['grip_bottom_mm']
    cylinder(t,p,p['metal_hub_diameter_mm']/2,z,p['metal_hub_depth_mm'])
    hole(t,p,[0,0,z-.1],6,radius=1.5)
    for x,y in metal_centers(p):
        hole(t,p,[x,y,z-.1],6,radius=1.5)
    hole(t,p,[0,0,4],10,rot=[-90,0,0],radius=1.5)


def grip_hardware(t,**p):
    grip=p['grip_style']
    if grip=='split_clamp':
        nominal_screw(t,p,[7.5,5.5,5],16,rot=[0,90,0])
        nominal_nut(t,p,[-8.2,5.5,5],'m3',rot=[0,90,0])
    elif grip in ('nut_grub','metal_hub'):
        # Nominal unthreaded envelopes; screw end touches the D flat at Y=1.
        cylinder(t,p,1.5,0,8,pos=[0,1,5 if grip=='nut_grub' else 4],rot=[-90,0,0])
        if grip=='nut_grub':
            nominal_nut(t,p,[0,5.3,5],'m3',rot=[-90,0,0])
        else:
            for x,y in metal_centers(p):
                nominal_screw(t,p,[x,y,12],8)
    elif grip=='taper_collet':
        for y in (-8.5,8.5):
            nominal_screw(t,p,[0,y,1.7],8,rot=[180,0,0],head='countersunk')
            nominal_nut(t,p,[0,y,5.8],'m3',rot=[0,0,90 if y>0 else 270])


def holder_hardware(t,**p):
    if p['holder_style']=='cradle':
        for y in (-12,12):
            nominal_screw(t,p,[-17,y,p['cradle_axis_height_mm']+8.5],25,head='countersunk')
            nominal_nut(t,p,[-17,y,6.6],'m3')
        return
    rear=-p['motor_body_length_mm']-4
    for x in (-12,12):
        nominal_screw(t,p,[x,0,rear],30,rot=[180,0,0],head='countersunk')
        nominal_nut(t,p,[x,0,-5.3],'m3')
    if p['holder_style']=='bearing_cassette':
        for x in (-15,15):
            for y in (-15,15):
                nominal_screw(t,p,[x,y,-5],20,'m6',rot=[180,0,0])
                nominal_nut(t,p,[x,y,10.2],'m6')


def draw_assembly(t,**p):
    """Every piece is drawn in assembly coordinates, then placed flat for export."""
    cradle=p['holder_style']=='cradle'
    transform=lambda objects: group(objects,rot=[0,90,0],pos=[0,0,p['cradle_axis_height_mm']]) if cradle else group(objects)
    definitions=[('holder',cradle_world_holder if cradle else vertical_holder,'stationary',False),
                 ('saddle' if cradle else 'rear_keeper',cradle_saddle_world if cradle else rear_keeper,'stationary',False),
                 ('rotor',rotor,'rotating',True)]
    if p['holder_style']=='bearing_cassette':
        definitions += [('bearing_lower',lambda t,**kw:bearing_half(t,False,**kw),'stationary',False),
                        ('bearing_cap',lambda t,**kw:bearing_half(t,True,**kw),'stationary',False)]
        for x in (-15,15):
            for y in (-15,15):
                def spacer(t,x=x,y=y,**kw):
                    cylinder(t,kw,5.8,0,8.8,pos=[x,y,0])
                    hole(t,kw,[x,y,-.1],9,'m6')
                definitions.append((f'spacer_{x}_{y}',spacer,'stationary',False))
    if p['grip_style']=='taper_collet':
        definitions += [('collet_insert',collet_insert,'rotating',False),('collet_cap',collet_cap,'rotating',False)]
    t['additional_outputs']={}; t['piece_placements']={}; t['grid_hole_audit']={}
    stationary=[]; rotating=[]; exploded=[]
    for index,(name,draw,role,flip) in enumerate(definitions):
        piece=oobb.get_default_thing(type='n20_'+name)
        draw(piece,**p)
        # Explicit print transforms: vertical holder prints face-down on its
        # flange; rotor prints output-face-down with the socket opening upwards.
        rot=[0,0,0]; shift=[0,0,0]
        if name=='holder' and not cradle:
            rot=[180,0,0]; shift=[0,0,1.2]
        elif name=='rear_keeper': shift=[0,0,p['motor_body_length_mm']+4]
        elif name=='saddle': shift=[17,0,-p['cradle_axis_height_mm']]
        elif name=='rotor': rot=[180,0,0]; shift=[0,0,p['output_bottom_mm']+p['output_thickness_mm']]
        elif name=='bearing_lower': shift=[0,0,-8.8]
        elif name=='bearing_cap': rot=[180,0,0]; shift=[0,0,15.4]
        elif name=='collet_insert': shift=[0,0,-3.7]
        elif name=='collet_cap': shift=[0,0,-1.7]
        elif name.startswith('spacer_'):
            shift=[-x for x in [float(name.split('_')[1]),float(name.split('_')[2]),0]]
        bed=group(piece['components'],pos=shift,rot=rot)
        t['additional_outputs'][name]=[bed]
        xy=[(index%3)*80,(index//3)*80,0]
        t['components'].append(group([bed],pos=xy))
        canonical=group(piece['components'])
        installed=canonical if cradle and role=='stationary' else transform(piece['components'])
        (stationary if role=='stationary' else rotating).append(installed)
        separation=(0 if name=='holder' else 20+index*8)
        exploded.append(group([installed],pos=[separation if cradle else 0,0,0 if cradle else separation]))
        t['piece_placements'][name]=dict(print_pos=shift,print_rot=rot,print_xy=xy,
            role=role,world_coordinates=cradle and role=='stationary')
        t['grid_hole_audit'][name]=piece.get('grid_hole_audit',[])
        t['components_objects'].extend(piece['components_objects'])
    printed=stationary+rotating
    t['additional_outputs']['assembled_printed']=printed
    t['additional_outputs']['stationary_local']=stationary
    t['additional_outputs']['rotating_local']=rotating
    references=[]
    for name,draw,world in [('motor',motor_reference,False),('grip_fasteners',grip_hardware,False),
                            ('holder_fasteners',holder_hardware,cradle)]:
        part=oobb.get_default_thing(type='n20_reference_'+name); draw(part,**p)
        objects=part['components'] if world else [transform(part['components'])]
        t['additional_outputs']['reference_'+name]=objects
        references.extend(objects)
    if p['holder_style']=='bearing_cassette':
        part=oobb.get_default_thing(type='n20_reference_bearing'); bearing_reference(part,**p)
        t['additional_outputs']['reference_bearing']=part['components']; references+=part['components']
    if p['grip_style']=='metal_hub':
        part=oobb.get_default_thing(type='n20_reference_hub'); hub_reference(part,**p)
        objects=[transform(part['components'])]
        t['additional_outputs']['reference_hub']=objects; references+=objects
    t['additional_outputs']['assembly']=printed+references
    t['additional_outputs']['exploded']=exploded+references
    t['depth_mm']=p['depth']


def draw_fit_tests(t,**p):
    t['additional_outputs']={}; t['coupon_labels']=[]
    for index,offset in enumerate(p['shaft_fit_values_mm']):
        part=oobb.get_default_thing(type='n20_shaft_coupon')
        cylinder(part,p,6,0,7)
        d_profile(part,p,-.1,7.2,offset=offset)
        box(part,p,[12,7,1.2],[0,-7,0])
        add(part,p,'oobb_text',text=f'{offset:.2f}',size=2.2,depth=.4,
            pos=[0,-7.5,1.1],font='Liberation Sans',halign='center',valign='center')
        label=f'shaft_offset_{offset:.2f}'.replace('.','d')
        t['additional_outputs'][label]=part['components']
        t['components'].append(group(part['components'],pos=[index*18,0,0]))
        t['components_objects'].extend(part['components_objects'])
        t['coupon_labels'].append(dict(name=label,xy=[index*18,0],offset_mm=offset))
    for index,c in enumerate(p['motor_pocket_fit_values_mm']):
        part=oobb.get_default_thing(type='n20_motor_coupon')
        box(part,p,[20,18,7],[0,0,0])
        box(part,p,[12+2*c,10+2*c,7.2],[0,0,-.1],typ='negative')
        box(part,p,[20,6,1.2],[0,-10,0])
        add(part,p,'oobb_text',text=f'{c:.2f}/side',size=2,depth=.4,
            pos=[0,-10.5,1.1],font='Liberation Sans',halign='center',valign='center')
        label=f'motor_per_side_{c:.2f}'.replace('.','d')
        t['additional_outputs'][label]=part['components']
        t['components'].append(group(part['components'],pos=[index*25,27,0]))
        t['components_objects'].extend(part['components_objects'])
        t['coupon_labels'].append(dict(name=label,xy=[index*25,27],clearance_per_side_mm=c))
    # Dedicated native M3/M6 screw/nut coupons, using the same pocket settings.
    for index,name in enumerate(('m3','m6')):
        part=oobb.get_default_thing(type='n20_hardware_coupon')
        box(part,p,[20,20,10],[0,0,0])
        screw(part,p,[0,0,10],16,name)
        nut(part,p,[0,0,0],name)
        box(part,p,[20,6,1.2],[0,-11,0])
        add(part,p,'oobb_text',text=name.upper(),size=2.5,depth=.4,
            pos=[0,-11.5,1.1],font='Liberation Sans',halign='center',valign='center')
        label=name+'_screw_nut'
        t['additional_outputs'][label]=part['components']
        t['components'].append(group(part['components'],pos=[index*25,55,0]))
        t['components_objects'].extend(part['components_objects'])
        t['coupon_labels'].append(dict(name=label,xy=[index*25,55]))
    t['depth_mm']=10
