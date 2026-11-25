import json, math
from pathlib import Path
import bpy
from mathutils import Vector, Matrix, Euler

root=Path.cwd()/'outputs/n20'
out=root/'render_review'
placements=json.loads((out/'placements.json').read_text())
folders={k:next((Path.cwd()/'parts').glob('*n20*'+k+'_front_screw_clamp')) for k in placements}
def linear(hexcolor):
    rgb=[int(hexcolor[i:i+2],16)/255 for i in (0,2,4)]
    return tuple(c/12.92 if c<=.04045 else ((c+.055)/1.055)**2.4 for c in rgb)
side=Matrix.Rotation(math.pi/2,4,'X')
def material(name,rgb,metal,rough):
    mat=bpy.data.materials.new(name);mat.diffuse_color=(*rgb,1);mat.use_nodes=True
    node=mat.node_tree.nodes.get('Principled BSDF')
    for k,v in [('Base Color',(*rgb,1)),('Metallic',metal),('Roughness',rough)]: node.inputs[k].default_value=v
    return mat

def setup():
    bpy.ops.object.select_all(action='SELECT');bpy.ops.object.delete(use_global=False)
    global objs,mats
    objs=[]
    mats={k:material(k,*v) for k,v in {
        'frame':(linear('00B1B7'),0,.39),'rear':(linear('121212'),0,.39),
        'accent':(linear('FEC601'),0,.39),'steel':((.48,.53,.57),.79,.25),'bolts':((.13,.17,.19),.78,.28),
        'brass':((.68,.39,.095),.72,.29),'terminal':((.66,.25,.09),.72,.27),
        'cap':((.095,.12,.13),.12,.42),'floor':((.68,.71,.68),.02,.62)
    }.items()}

def obj(path,key,mat,transform,offset=(0,0,0)):
    bpy.ops.wm.stl_import(filepath=str(path));o=bpy.context.object;o.name=key
    if key=='selected seat':
        # Isolate the middle production coupon before undoing its print transform.
        import bmesh
        mesh=bmesh.new()
        mesh.from_mesh(o.data)
        bmesh.ops.delete(mesh,geom=[v for v in mesh.verts if not 19<v.co.x<53],context='VERTS')
        mesh.to_mesh(o.data)
        mesh.free()
    o.data.materials.append(mats[mat])
    if key=='motor':
        for k in ('brass','cap','terminal','bolts'): o.data.materials.append(mats[k])
        for f in o.data.polygons:
            x,y,z=f.center
            f.material_index=(1 if -9.005<z<.71 else 3 if z<-24.41 and abs(x)>2.6 else 2 if z<-23.1 and z>-25.61 else 0)
    o.matrix_world=transform @ Matrix.Translation(offset);objs.append(o);return o

def part(folder,name,style,delta=(0,0,0)):
    pos=placements[folder][name]
    pose=Matrix.Translation(pos['print_pos']) @ Euler([math.radians(a) for a in pos['print_rot']]).to_matrix().to_4x4()
    return obj(folders[folder]/(name+'.stl'),name,style,side @ Matrix.Translation(delta) @ pose.inverted())
def ref(folder,name,style,key=None):
    return obj(folders[folder]/('reference_'+name+'.stl'),key or name,style,side)

def finish(name,direction,size=(1300,1000)):
    bpy.context.view_layer.update()
    coords=[o.matrix_world@Vector(c) for o in objs for c in o.bound_box]
    d=Vector(direction).normalized();q=(-d).to_track_quat('-Z','Y')
    right=q@Vector((1,0,0));up=q@Vector((0,1,0))
    def span(axis):
        vals=[axis.dot(c) for c in coords];return (max(vals)+min(vals))/2,max(vals)-min(vals)
    rx,w=span(right);uy,h=span(up);dz,_=span(d);target=right*rx+up*uy+d*dz
    camera_data=bpy.data.cameras.new('Studio');camera=bpy.data.objects.new('Studio',camera_data);bpy.context.collection.objects.link(camera)
    camera.location=target+d*220;camera.rotation_euler=q.to_euler();camera_data.type='ORTHO';camera_data.clip_end=1000
    camera_data.ortho_scale=max(w,h*size[0]/size[1])*1.12
    scene=bpy.context.scene;scene.camera=camera;scene.view_settings.view_transform="AgX";scene.view_settings.look="AgX - Medium High Contrast"
    scene.render.film_transparent=True
    for loc,power,scale in [((-65,-95,125),360000,95),((100,60,95),290000,70),((-80,70,45),130000,45)]:
        bpy.ops.object.light_add(type='AREA',location=target+Vector(loc));lamp=bpy.context.object
        lamp.data.energy=power;lamp.data.shape='DISK';lamp.data.size=scale;lamp.rotation_euler=(target-lamp.location).to_track_quat('-Z','Y').to_euler()
    scene.world.color=(.42,.42,.42);scene.render.engine='CYCLES';scene.cycles.samples=28;scene.cycles.use_denoising=True
    scene.render.resolution_x,scene.render.resolution_y=size;scene.render.resolution_percentage=100
    scene.render.filepath=str(out/(name+'.png'));bpy.ops.render.render(write_still=True)

setup()
# Keep every bearing component on its installed axis; leave joining screws out
# of this detail so the two retaining shoulders and the bearing can be seen.
for name in placements['bearing_cassette']:
    gap=47 if name=='bearing_cap' else 9 if name=='bearing_lower' else 0
    black=name in ('rear_clamp','bearing_lower') or name.startswith(('spacer','nut_block'))
    part('bearing_cassette',name,'rear' if black else 'frame',(0,0,gap))
obj(folders['bearing_cassette']/'reference_bearing.stl','bearing','steel',side,(0,0,28))
ref('bearing_cassette','motor','steel')
ref('bearing_cassette','clamp_fasteners','bolts')
ref('bearing_cassette','face_fasteners','bolts')
finish('bearing_stack',(1,-.23,.30))
