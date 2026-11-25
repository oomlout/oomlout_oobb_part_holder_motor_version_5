"""Render the current standard-servo catalogue assembly. Run python render_servo_holder.py."""
import json
import math
from pathlib import Path
import subprocess
import sys
from tempfile import TemporaryDirectory

ROOT = Path(__file__).resolve().parent
PART = ROOT / "parts/oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2"


def source_job():
    import servo_v2 as cad

    return dict(d=cad.dimensions(), profile=cad.installed_profile("mg996r"),
                mount=cad.mount_positions(), cover=cad.cover_joins(),
                cross=cad.mechanics.output_positions(), diagonal=cad.mechanics.output_joins(),
                grid=[(s["x"], s["y"]) for s in cad.grid_layout("retainer") if s["embedded_nut"]])


def render(work):
    import bpy
    from mathutils import Vector
    from bpy_extras.object_utils import world_to_camera_view

    job = json.loads((work / "job.json").read_text())
    d = job["d"]
    bpy.ops.wm.read_factory_settings(use_empty=True)
    scene = bpy.context.scene
    scene.render.engine = "CYCLES"
    scene.cycles.samples = 40
    scene.cycles.use_denoising = True
    prefs = bpy.context.preferences.addons["cycles"].preferences
    try:
        prefs.compute_device_type = "OPTIX"
        prefs.refresh_devices()
        if any(device.type == "OPTIX" for device in prefs.devices):
            for device in prefs.devices:
                device.use = device.type == "OPTIX"
            scene.cycles.device = "GPU"
    except (RuntimeError, TypeError):
        pass
    scene.render.film_transparent = True
    scene.world = bpy.data.worlds.new("Studio")
    scene.world.use_nodes = True
    scene.world.node_tree.nodes["Background"].inputs["Strength"].default_value = .58
    scene.world.node_tree.nodes["Background"].inputs["Color"].default_value = (.87,.91,1,1)
    scene.view_settings.view_transform = "AgX"
    scene.view_settings.look = "AgX - Medium High Contrast"

    def material(name, swatch, roughness=.4, metallic=0):
        rgb = [int(swatch[i:i+2],16)/255 for i in (0,2,4)]
        linear = [c/12.92 if c <= .04045 else ((c+.055)/1.055)**2.4 for c in rgb]
        mat = bpy.data.materials.new(name)
        mat.use_nodes = True
        shader = mat.node_tree.nodes["Principled BSDF"]
        shader.inputs["Base Color"].default_value = (*linear,1)
        shader.inputs["Roughness"].default_value = roughness
        shader.inputs["Metallic"].default_value = metallic
        return mat

    teal = material("Turquoise PLA", "00B1B7")
    black = material("Black PLA", "121212")
    yellow = material("Sunflower PLA", "FEC601")
    steel = material("Bright steel", "CBD0D1", .28, .88)
    gunmetal = material("Socket screws", "5C6061", .29, .8)
    case = material("Moulded servo case", "282A29", .29)
    shaft = material("Output spline", "CBA365", .31, .76)
    library = {}

    # A representative three-core lead follows the CAD case outlet through the shell port.
    path = [(-33,0,-25.8),(-44,0,-25.8),(-54,0,-27.5),(-61,-2,-33),
            (-64,-9,-36.5),(-63,-17,-36.5),(-62,-23,-36.5),(-62,-28,-36.5)]
    for index, swatch in enumerate(("683F28","B84436","DE8A36")):
        curve = bpy.data.curves.new("Insulated wire", "CURVE")
        curve.dimensions = "3D"
        curve.resolution_u, curve.bevel_depth, curve.bevel_resolution = 14,.49,4
        spline = curve.splines.new("BEZIER")
        spline.bezier_points.add(len(path)-1)
        for i, pt in enumerate(spline.bezier_points):
            a, b = path[max(0,i-1)], path[min(len(path)-1,i+1)]
            dx,dy = b[0]-a[0],b[1]-a[1]
            offset = (index-1)/math.hypot(dx,dy)
            x,y,z = path[i]
            pt.co = (x-dy*offset,y+dx*offset,z)
            pt.handle_left_type = pt.handle_right_type = "AUTO"
        obj = bpy.data.objects.new("Wire",curve)
        scene.collection.objects.link(obj)
        mesh = bpy.data.meshes.new_from_object(obj.evaluated_get(bpy.context.evaluated_depsgraph_get()))
        mesh.materials.append(material("Lead jacket",swatch,.5))
        library[f"wire{index}"] = mesh
        bpy.data.objects.remove(obj,do_unlink=True)

    # Thin walls leave the three sockets open at the end of the plug.
    verts, faces = [], []
    def plug_box(x0,x1,y0,y1,z0,z1):
        start = len(verts)
        verts.extend([(x,y,z) for z in (z0,z1) for y in (y0,y1) for x in (x0,x1)])
        for quad in ((0,2,3,1),(4,5,7,6),(0,1,5,4),(2,6,7,3),(0,4,6,2),(1,3,7,5)):
            faces.append(tuple(start+i for i in quad))
    plug_box(-65.8,-58.2,-40,-27,-38,-37.25)
    plug_box(-65.8,-58.2,-40,-27,-35.25,-34.5)
    for x in (-65.8,-63.4,-60.85,-58.65):
        plug_box(x,x+.45,-40,-27,-37.25,-35.25)
    plug_box(-65.8,-58.2,-35,-27,-37.25,-35.25)
    plug = bpy.data.meshes.new("Lead plug")
    plug.from_pydata(verts,[],faces)
    plug.materials.append(case)
    library["plug"] = plug

    def load(key, filename, mat):
        bpy.ops.wm.stl_import(filepath=str(PART / (filename + ".stl")))
        obj = bpy.context.object
        obj.data.materials.append(mat)
        library[key] = obj.data
        bpy.data.objects.remove(obj, do_unlink=True)

    for key, mat in dict(clamshell=teal, holder=black, bearing_retainer=teal,
                         female_rotor=black, output_lid=yellow, clamp_left=black,
                         clamp_right=black, spacer_left=teal, spacer_right=teal).items():
        load(key, "installed_" + key, mat)
    load("servo", "reference_servo_mg996r", case)
    library["servo"].materials.append(shaft)
    for face in library["servo"].polygons:
        if face.center.z > job["profile"]["spline_bottom"] + .001:
            face.material_index = 1
    load("bearing", "reference_bearing", steel)
    # Ring finishes on the nominal hardware envelope distinguish the races from the shield.
    shield = steel.copy()
    shield.name = "Bearing races and brushed shield"
    library["bearing"].materials[0] = shield
    nodes, links = shield.node_tree.nodes, shield.node_tree.links
    coords = nodes.new("ShaderNodeTexCoord")
    flatten = nodes.new("ShaderNodeVectorMath")
    flatten.operation = "MULTIPLY"
    links.new(coords.outputs["Object"],flatten.inputs[0])
    flatten.inputs[1].default_value = (1,1,0)
    radius = nodes.new("ShaderNodeVectorMath")
    radius.operation = "LENGTH"
    links.new(flatten.outputs[0],radius.inputs[0])
    ramp = nodes.new("ShaderNodeValToRGB")
    fraction = nodes.new("ShaderNodeMath")
    fraction.operation = "DIVIDE"
    links.new(radius.outputs["Value"],fraction.inputs[0])
    fraction.inputs[1].default_value = 13.5
    links.new(fraction.outputs[0],ramp.inputs[0])
    ramp.color_ramp.interpolation = "CONSTANT"
    for r, value in [(0,.6),(10.9,.09),(11.05,.35),(12.6,.07),(12.8,.68)]:
        stop = ramp.color_ramp.elements.new(r/13.5) if r else ramp.color_ramp.elements[0]
        stop.color = (value*.96,value,value,1)
    links.new(ramp.outputs[0],nodes["Principled BSDF"].inputs["Base Color"])
    load("retention", "reference_retention_mg996r", gunmetal)

    # Lathed profiles preserve nominal head seats and add visible internal hex drives.
    def lathe(name, rings, mat, closed=False):
        count = 72
        vertices, faces = [], []
        for kind, radius, z in rings:
            for i in range(count):
                angle = math.tau*i/count
                r = radius
                if kind == "hex":
                    r *= math.cos(math.pi/6)/math.cos(angle % (math.pi/3) - math.pi/6)
                vertices.append((r*math.cos(angle),r*math.sin(angle),z))
        for k in range(len(rings) if closed else len(rings)-1):
            next_ring = (k+1) % len(rings)
            for i in range(count):
                j = (i+1) % count
                faces.append((k*count+i,k*count+j,next_ring*count+j,next_ring*count+i))
        if not closed:
            faces.extend([tuple(reversed(range(count))),tuple(range(len(vertices)-count,len(vertices)))])
        mesh = bpy.data.meshes.new(name)
        mesh.from_pydata(vertices, [], faces)
        mesh.materials.append(mat)
        library[name] = mesh

    lathe("nut", [("hex",3.02,0),("hex",3.175,.16),("hex",3.175,2.24),
                  ("hex",3.02,2.4),("r",1.5,2.4),("r",1.5,0)], steel, True)
    for length in [d["servo_screw_length"], d["output_screw_length"]]:
        lathe(str(length), [("r",1.25,-length),("r",1.5,.25-length),("r",1.5,-1.7),
                            ("r",2.9,-.18),("r",2.9,0),("hex",1.16,0),("hex",1.16,-1.05)], gunmetal)
    length = d["cover_screw_length"]
    lathe("cap", [("r",1.25,-length),("r",1.5,.25-length),("r",1.5,0),
                  ("r",2.75,0),("r",2.75,2.8),("r",2.55,3),("hex",1.45,3),
                  ("hex",1.45,1.5)], gunmetal)

    def light(pos, energy, size):
        data = bpy.data.lights.new("Softbox", "AREA")
        data.energy, data.size = energy, size
        obj = bpy.data.objects.new("Softbox",data)
        scene.collection.objects.link(obj)
        obj.location = pos
        obj.rotation_euler = (-Vector(pos)).to_track_quat("-Z","Y").to_euler()
    light((-100,-135,180),430000,125)
    light((70,80,165),560000,108)
    light((60,-75,-70),95000,85)
    cam = bpy.data.objects.new("Camera", bpy.data.cameras.new("Ortho"))
    scene.collection.objects.link(cam)
    cam.data.type = "ORTHO"
    cam.data.clip_end = 1200
    scene.camera = cam
    objects = []

    def piece(name, z=0, xy=(0,0), flip=False, angle=0):
        obj = bpy.data.objects.new(name, library[name])
        scene.collection.objects.link(obj)
        obj.location = (*xy,z)
        obj.rotation_euler = (math.pi if flip else 0,0,angle)
        objects.append(obj)

    def nuts(pattern, z):
        for x, y in job[pattern]:
            # CAD's rotated hex orientation on the output follows its radial pattern.
            angle = math.atan2(y,x) if pattern in ("cross","diagonal") else 0
            piece("nut", z, (x,y), angle=angle)

    def screws(pattern, key, z):
        for xy in job[pattern]:
            piece(key, z, xy, flip=key=="cap")

    def rotor(z=0):
        piece("female_rotor", z)
        piece("output_lid", z)
        nuts("cross", d["nut_bottom"]+.1+z)
        nuts("diagonal", d["output_join_nut_top"]-2.5+z)
        screws("diagonal", str(d["output_screw_length"]), d["output_top"]+z)

    def plate(z=0):
        piece("bearing_retainer", z)
        nuts("cover", d["cover_screw_head"]+d["cover_screw_length"]-2.7+z)
        nuts("grid", d["retainer_bottom"]+.1+z)

    def sides(name,z=0):
        for side in ("left","right"):
            piece(name+"_"+side,z)

    def mechanism(z=0):
        rotor(z)
        plate(z)
        for name in ("holder","servo","bearing","retention","wire0","wire1","wire2","plug"):
            piece(name,z)
        sides("clamp",z)
        sides("spacer",z)
        nuts("mount", d["servo_nut_bottom"]+z)
        screws("mount", str(d["servo_screw_length"]), d["servo_head_top"]+z)

    def view(key, direction, size, anchors=()):
        bpy.context.view_layer.update()
        direction = Vector(direction).normalized()
        rot = (-direction).to_track_quat("-Z","Y")
        right, up = rot @ Vector((1,0,0)), rot @ Vector((0,1,0))
        # Use the actual mesh silhouette for an equal margin in each view.
        pts = [obj.matrix_world @ v.co for obj in objects for v in obj.data.vertices]
        us, vs = [p.dot(right) for p in pts], [p.dot(up) for p in pts]
        center = right*((min(us)+max(us))/2) + up*((min(vs)+max(vs))/2)
        width,height = size
        cam.location = center + direction*420
        cam.rotation_euler = rot.to_euler()
        cam.data.ortho_scale = max((max(us)-min(us))/width,(max(vs)-min(vs))/height)*max(size)*1.055
        scene.render.resolution_x, scene.render.resolution_y = size
        scene.render.resolution_percentage = 100
        bpy.context.view_layer.update()
        uv = [world_to_camera_view(scene,cam,Vector(pt)) for pt in anchors]
        (work / (key+".json")).write_text(json.dumps([(p.x*width,(1-p.y)*height) for p in uv]))
        scene.render.filepath = str(work / (key+".png"))
        bpy.ops.render.render(write_still=True)
        for obj in objects:
            bpy.data.objects.remove(obj, do_unlink=True)
        objects.clear()

    mechanism()
    piece("clamshell")
    screws("cover","cap",d["cover_screw_head"])
    view("closed",(-.68,-1,.85),(1150,890))
    mechanism()
    view("open",(.56,-1,-.43),(720,500))
    piece("clamshell")
    view("shell",(-.72,-1,1.15),(720,500))

    # Explode on Z only. Each arrow target retains the installed X/Y datum.
    screws("diagonal","10",69)
    piece("output_lid",24)
    nuts("cross",30)
    piece("female_rotor")
    nuts("diagonal",-3)
    view("runner",(.48,-1,.49),(640,1040),
         [(4.49,4.49,69),(9,-5,45),(7.5,0,31),(9,-4,14),(4.49,4.49,-2)])
    rotor(72)
    plate(39)
    piece("bearing",12)
    piece("holder",-12)
    view("seat",(.48,-1,.52),(700,1040),
         [(9,-4,92),(17,-14,55),(11,-6,26),(17,-14,-3)])

    screws("mount","30",82)
    plate(17)
    rotor(17)
    piece("bearing",17)
    piece("holder",17)
    sides("spacer",0)
    piece("servo",-20)
    sides("clamp",-57)
    nuts("mount",-79)
    view("clamps",(.53,-1,.33),(670,1090),
         [(14.5,-5.2,81),(18,-14,32),(15,-5,-.5),(8,-9,-42),(16,-7,-64),(14.5,-5.2,-78)])

    mechanism(73)
    piece("clamshell")
    screws("cover","cap",-74)
    view("closure",(-.62,-1,.42),(670,1090),
         [(0,0,94),(-15,-10,63),(-51,-5,-26),(-18,-22,-33),(7.5,-15,-76)])


def compose(work, dest):
    from functools import lru_cache
    from PIL import Image, ImageDraw, ImageFilter, ImageFont

    paper, ink, muted, teal = "#F8F7F0", "#173332", "#495F5C", "#126B69"
    rule = "#BBC8BD"
    @lru_cache(None)
    def font(style, size):
        name = {"body":"segoeui", "bold":"segoeuib", "mono":"consola"}[style]
        return ImageFont.truetype("C:/Windows/Fonts/" + name + ".ttf", size)

    def write(x,y,s,size,style="body",color=ink):
        draw.multiline_text((x,y),s,font=font(style,size),fill=color,spacing=4,anchor="la")

    def line(x0,y0,x1,y1,fill=rule):
        draw.line((x0,y0,x1,y1),fill=fill,width=2)

    def page(num,title,deck):
        nonlocal sheet,draw
        sheet = Image.new("RGB",(1800,1280),paper)
        draw = ImageDraw.Draw(sheet)
        write(56,33,"OOBB    /    MOTOR HOLDERS",22,"mono",teal)
        write(1220,33,"STANDARD SERVO     /     V2",22,"mono",teal)
        write(1633,33,f"{num:02} / 03",22,"mono",teal)
        line(56,83,1744,83)
        write(52,91,title,64,"bold")
        write(57,183,deck,26,"body",muted)

    def finish(key, note):
        line(56,1204,1744,1204)
        write(56,1221,note,20,"mono",teal)
        for x,col,label in [(1098,"#00B1B7","Housing"),(1290,"#151515","Supports"),(1500,"#FEC601","Output lid")]:
            draw.rounded_rectangle((x,1230,x+18,1248),radius=4,fill=col)
            write(x+29,1219,label,20)
        sheet.save(dest / (key+".png"),optimize=True)

    def photo(key, bounds, shadow=False):
        src = Image.open(work / (key+".png")).convert("RGBA")
        box = src.getchannel("A").getbbox()
        src = src.crop(box)
        x,y,w,h = bounds
        scale = min(w/src.width,h/src.height)
        src = src.resize((round(src.width*scale),round(src.height*scale)),Image.Resampling.LANCZOS)
        x = round(x+(w-src.width)/2)
        y = round(y+(h-src.height)/2)
        if shadow:
            mask = Image.new("L",sheet.size)
            mask.paste(src.getchannel("A").point(lambda p:round(p*.12)),(x+4,y+14))
            sheet.paste("#38605B",(0,0),mask.filter(ImageFilter.GaussianBlur(15)))
        sheet.paste(src,(x,y),src)
        return [(round(x+(u-box[0])*scale),round(y+(v-box[1])*scale))
                for u,v in json.loads((work/(key+".json")).read_text())]

    sheet = draw = None
    page(1,"Standard servo holder","The 5 × 3 mount encloses the servo and carries its rotating output in a 6704 bearing.")
    draw.rounded_rectangle((56,258,1106,1160),20,fill="#E7EDE6")
    write(91,284,"FIG. A    /    COMPLETE ASSEMBLY",21,"mono",teal)
    photo("closed",(95,350,971,620),True)
    line(92,997,1070,997)
    write(92,1022,"What turns",34,"bold")
    write(92,1081,"The yellow lid turns with the black runner on the servo spline.",24)
    for y,key,tag,title,detail in [
        (258,"open","B","Servo with the shell removed","The black bars clamp the mounting ears."),
        (716,"shell","C","Inside the lower shell","Four raised posts carry the shell screws.")]:
        draw.rounded_rectangle((1130,y,1744,y+444),20,fill="#EDEFE9" if key=="open" else "#EEECE2")
        write(1160,y+19,"FIG. "+tag+"    /    "+("OPEN ASSEMBLY" if key=="open" else "EMPTY SHELL"),20,"mono",teal)
        photo(key,(1165,y+67,545,245),True)
        write(1160,y+328,title,29,"bold")
        write(1160,y+381,detail,23,"body",muted)
    finish("holder_render","MG996R REFERENCE   /   1 mm SPACERS   /   74 × 44 mm FOOTPRINT")

    def panel(x,num,title,key,entries,caption,bg):
        draw.rounded_rectangle((x,257,x+832,1165),20,fill=bg)
        write(x+28,278,"ASSEMBLY    /    "+num,20,"mono",teal)
        write(x+27,313,title,37,"bold")
        line(x+28,378,x+804,378)
        pts = photo(key,(x+20,408,438,590))
        label_x = x+483
        # Keep stacked labels apart even when adjacent features project close together.
        rows = []
        for _,py in pts:
            rows.append(max(425,py-24,rows[-1]+74 if rows else 0))
        rows[-1] = min(rows[-1],947)
        for i in reversed(range(len(rows)-1)):
            rows[i] = min(rows[i],rows[i+1]-74)
        for (px,py),row,(name,detail) in zip(pts,rows,entries,strict=True):
            label_y = row+19
            draw.line([(px,py),(label_x-42,py),(label_x-19,label_y),(label_x-8,label_y)],
                      fill="#74918B",width=2)
            draw.ellipse((px-4,py-4,px+4,py+4),fill=teal,outline=paper,width=1)
            write(label_x,row-3,name,25,"bold")
            write(label_x,row+31,detail,20,"body",muted)
        line(x+28,1020,x+804,1020)
        write(x+28,1040,caption,23)

    page(2,"Build the rotating output","Load the captive nuts while their pockets are exposed. Then seat the runner and bearing between the plates.")
    panel(56,"01","Close the runner","runner",[
        ("2 × M3 × 10","Countersunk lid screws"),
        ("Output lid","Closes the four top pockets"),
        ("4 × M3 nuts","Load into the cross from above"),
        ("Female runner","Tapered socket faces down"),
        ("2 × M3 nuts","Load from below for lid screws")],
        "Load all six nuts before fitting the lid. Tighten the two diagonal\nscrews. The four cross nuts are for output attachments.","#E9EEE7")
    panel(912,"02","Seat the bearing","seat",[
        ("Runner with lid","Pass through the plate from above"),
        ("Upper bearing plate","Full recess and retaining lip"),
        ("6704 bearing","20 mm bore × 27 mm OD × 4 mm"),
        ("Lower holder","Supports the bearing from below")],
        "Load 4 shell nuts from above and 12 grid nuts from below into\nthe upper plate. Slide the bearing up over the runner’s nose,\nthen lower the stack onto the holder.","#EFEEE5")
    finish("holder_exploded_guide","OUTPUT ASSEMBLY   /   MG996R RUNNER FOR THE 1 mm SPACER PAIR")

    page(3,"Mount the servo and close the shell","The long countersunk screws clamp the servo ears. The socket-cap screws close the shell from underneath.")
    panel(56,"03","Clamp the mounting ears","clamps",[
        ("4 × M3 × 30","Countersunk, inserted from above"),
        ("Plate and holder","Heads finish flush with the plate"),
        ("Two 1 mm spacers","One above each mounting ear"),
        ("MG996R reference","Raise the spline into the socket"),
        ("Two clamp bars","Fit beneath the mounting ears"),
        ("4 × M3 nuts","Load two per bar from below")],
        "Start all four screws in the loaded bars. Fit the servo’s own\nhorn screw through the centre of the lid to retain the runner.","#E9EEE7")
    panel(912,"04","Fit the lower shell","closure",[
        ("Centre access","Reaches the horn screw"),
        ("Clamped assembly","Settle the ears before tightening"),
        ("Lead port","Feed the plug through first"),
        ("Lower clamshell","Raise around the servo case"),
        ("4 × M3 × 25","Socket caps enter from below")],
        "Drive the shell screws up the wells into the four upper-plate\nnuts. Snug the top servo screws evenly and check that the\noutput turns freely.","#EFEEE5")
    finish("holder_mounting_guide","MOUNTING SEQUENCE   /   TOP SCREWS CLAMP THE EARS • BOTTOM SCREWS CLOSE THE SHELL")


def main():
    with TemporaryDirectory() as temporary:
        work = Path(temporary)
        (work/"job.json").write_text(json.dumps(source_job()))
        subprocess.run(["blender","-b","--python-exit-code","1","-P",str(Path(__file__).resolve()),
                        "--",str(work)],check=True)
        compose(work,PART)


if __name__ == "__main__":
    if "--" in sys.argv:
        render(Path(sys.argv[sys.argv.index("--")+1]))
    else:
        main()
