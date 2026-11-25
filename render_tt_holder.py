"""Render presentation plates from the generated TT holder and mounting-test STLs.
Run python render_tt_holder.py after action_make_tt_v2.py (Blender on PATH).
"""
import json
import math
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parent


def render(work):
    import bpy
    from mathutils import Euler, Matrix, Vector
    from bpy_extras.object_utils import world_to_camera_view

    job = json.loads((work/"job.json").read_text())
    holder, tests = Path(job["holder"]), Path(job["tests"])
    bpy.ops.wm.read_factory_settings(use_empty=True)
    scene = bpy.context.scene
    scene.render.engine = "CYCLES"
    scene.cycles.samples = 32
    scene.cycles.use_denoising = True
    prefs = bpy.context.preferences.addons["cycles"].preferences
    try:
        prefs.compute_device_type = "OPTIX"
        prefs.refresh_devices()
        if any(d.type=="OPTIX" for d in prefs.devices):
            for d in prefs.devices:
                d.use = d.type=="OPTIX"
            scene.cycles.device = "GPU"
    except (TypeError, RuntimeError):
        pass
    scene.render.film_transparent = True
    scene.world = bpy.data.worlds.new("Studio")
    scene.world.use_nodes = True
    scene.world.node_tree.nodes["Background"].inputs["Color"].default_value = (.8,.88,1,1)
    scene.world.node_tree.nodes["Background"].inputs["Strength"].default_value = .5
    scene.view_settings.view_transform = "AgX"
    scene.view_settings.look = "AgX - Medium High Contrast"
    def mat(name, rgb, metal=0, rough=.33):
        material = bpy.data.materials.new(name)
        material.use_nodes = True
        shader = material.node_tree.nodes.get("Principled BSDF")
        shader.inputs["Base Color"].default_value = (*rgb,1)
        shader.inputs["Roughness"].default_value = rough
        shader.inputs["Metallic"].default_value = metal
        return material

    # Bambu Lab PLA Basic store swatches, expressed as scene-linear RGB.
    def filament(name, hex_rgb):
        srgb = [int(hex_rgb[i:i+2],16)/255 for i in (0,2,4)]
        linear = [c/12.92 if c<=.04045 else ((c+.055)/1.055)**2.4 for c in srgb]
        return mat(name,linear,rough=.39)

    teal = filament("PLA Basic Turquoise 10605","00B1B7")
    black = filament("PLA Basic Black 10101","121212")  # Studio lift for shadow detail.
    accent = filament("PLA Basic Sunflower Yellow 10402","FEC601")
    yellow = mat("TT yellow",(.99,.58,.024))
    steel = mat("Satin steel",(.51,.57,.60),.78)
    screw = mat("Gunmetal",(.17,.205,.235),.72)
    brass = mat("Terminal",(.65,.32,.05),.65)
    nylon = mat("Axle",(.92,.87,.75))
    library = {}
    def load(name, folder, material, matrix=None):
        bpy.ops.wm.stl_import(filepath=str(folder/(name+".stl")))
        obj = bpy.context.object
        obj.data.materials.append(material)
        if matrix is not None:
            obj.data.transform(matrix)
        library[name] = obj.data
        bpy.data.objects.remove(obj,do_unlink=True)
    def v(xyz):
        return Vector(xyz)
    for name,material in [("clamshell",teal),("holder",teal),("bridge",black),("bearing_retainer",teal)]:
        p = job["pieces"][name]
        rotation = Euler(tuple(map(math.radians,p["print_rot"]))).to_matrix().to_4x4()
        transform = Matrix.Translation(v(p["print_offset"])) @ rotation
        load(name,holder,material,transform.inverted())
    # A finish on the retainer identifies the short rear screw in both views.
    # Texture coordinates stay local to the part as it moves in the explosion.
    marker = teal.copy()
    marker.name = "Teal retainer with sunflower rear screw index"
    library["bearing_retainer"].materials[0] = marker
    nodes,links = marker.node_tree.nodes,marker.node_tree.links
    coord = nodes.new("ShaderNodeTexCoord")
    distance = nodes.new("ShaderNodeVectorMath")
    distance.operation = "DISTANCE"
    links.new(coord.outputs["Object"],distance.inputs[0])
    distance.inputs[1].default_value = (-18,0,20)
    mask = nodes.new("ShaderNodeMath")
    mask.operation = "LESS_THAN"
    links.new(distance.outputs["Value"],mask.inputs[0])
    mask.inputs[1].default_value = 4.1
    mix = nodes.new("ShaderNodeMixRGB")
    links.new(mask.outputs[0],mix.inputs[0])
    shader = marker.node_tree.nodes.get("Principled BSDF")
    mix.inputs[1].default_value = shader.inputs["Base Color"].default_value[:]
    mix.inputs[2].default_value = accent.node_tree.nodes.get("Principled BSDF").inputs["Base Color"].default_value[:]
    links.new(mix.outputs[0],shader.inputs["Base Color"])
    load("reference_bearing",holder,steel)
    load("reference_motor",holder,yellow)
    motor = library["reference_motor"]
    for material in (steel,brass,nylon):
        motor.materials.append(material)
    for face in motor.polygons:
        x,y,z = face.center
        if x < -36.81:
            face.material_index = 2 if (-49.1<x<-46.9 and z>1.7 and abs(y)>1.95) else 1
        elif abs(x)<2.75 and abs(y)<2 and (z>3.001 or z<-15.601):
            face.material_index = 3
    for name,material in [("seat_A",teal),("seat_B",teal),("seat_C",teal),("nut_bar",black)]:
        load(name,tests,material)

    # Smooth shanks and hex sockets show the nominal head/seat and orientation.
    def hardware_mesh(name, rings, material):
        n = 60
        verts,faces = [],[]
        for shape,r,z in rings:
            for i in range(n):
                a = math.tau*i/n
                radius = r if shape=="round" else r*math.cos(math.pi/6)/math.cos((a % (math.pi/3))-math.pi/6)
                verts.append((radius*math.cos(a),radius*math.sin(a),z))
        for k in range(len(rings)-1):
            for i in range(n):
                j = (i+1)%n
                faces.append((k*n+i,k*n+j,(k+1)*n+j,(k+1)*n+i))
        if name=="nut":
            last = (len(rings)-1)*n
            for i in range(n):
                j=(i+1)%n
                faces.append((last+i,last+j,j,i))
        else:
            faces.extend([tuple(reversed(range(n))),tuple(range(len(verts)-n,len(verts)))])
        mesh = bpy.data.meshes.new(name)
        mesh.from_pydata(verts,[],faces)
        mesh.materials.append(material)
        library[name] = mesh
    hardware_mesh("nut",[("hex",3.00,0),("hex",3.175,.15),("hex",3.175,2.25),("hex",3,2.4),
                         ("round",1.5,2.4),("round",1.5,0)],steel)
    for length in (16,20,25,30):
        hardware_mesh(str(length),[("round",1.28,-length),("round",1.5,.25-length),
            ("round",1.5,-1.7),("round",2.9,-.15),("round",2.9,0),
            ("hex",1.15,0),("hex",1.15,-1)],screw)

    def light(pos,energy,size):
        data=bpy.data.lights.new("Softbox","AREA")
        data.energy,data.shape,data.size=energy,"DISK",size
        obj=bpy.data.objects.new("Softbox",data)
        scene.collection.objects.link(obj)
        obj.location=pos
        obj.rotation_euler=(-v(pos)).to_track_quat("-Z","Y").to_euler()
    light((-120,-110,220),560000,155)
    light((100,115,135),380000,120)
    light((-80,10,-140),130000,110)
    cam=bpy.data.objects.new("Orthographic",bpy.data.cameras.new("Ortho"))
    scene.collection.objects.link(cam)
    cam.data.type="ORTHO"
    cam.data.clip_end=1200
    scene.camera=cam
    objects=[]
    def piece(name,pos=(0,0,0),up=False):
        obj=bpy.data.objects.new(name,library[name])
        scene.collection.objects.link(obj)
        obj.location=pos
        if up: obj.rotation_euler.x=math.pi
        objects.append(obj)
    def parts(*names):
        for name in names: piece(name)
    axes=[(-18,0),(18,0),(0,-18),(0,18)]
    def bolts():
        for y in (-8.8,8.8):
            piece("30",(-20.6,y,7))
            piece("nut",(-20.6,y,-22.9))
        for x in (-37.5,7.5):
            for y in (-15,15):
                piece("25",(x,y,-18),True)
                piece("nut",(x,y,4))
        for x,y in axes:
            piece("16" if x==-18 else "20",(x,y,19.4 if x==-18 else 20))
            piece("nut",(x,y,3.5 if x==-18 else .6))
    def image(name,direction,width,height,anchors=None):
        bpy.context.view_layer.update()
        direction=v(direction).normalized()
        rot=(-direction).to_track_quat("-Z","Y")
        right,above=rot@v((1,0,0)),rot@v((0,1,0))
        coords=[obj.matrix_world@vertex.co for obj in objects for vertex in obj.data.vertices]
        u=[p.dot(right) for p in coords]
        w=[p.dot(above) for p in coords]
        target=right*((max(u)+min(u))/2)+above*((max(w)+min(w))/2)
        cam.location=target+direction*375
        cam.rotation_euler=rot.to_euler()
        cam.data.ortho_scale=max(max(u)-min(u),(max(w)-min(w))*width/height)*max(1,height/width)*1.055
        scene.render.resolution_x,scene.render.resolution_y=width,height
        scene.render.resolution_percentage=100
        scene.render.filepath=str(work/(name+".png"))
        bpy.context.view_layer.update()
        if anchors:
            points=[]
            for coord in anchors:
                uv=world_to_camera_view(scene,cam,v(coord))
                points.append([uv.x*width,(1-uv.y)*height])
            (work/(name+".json")).write_text(json.dumps(points))
        bpy.ops.render.render(write_still=True)
        for obj in objects: bpy.data.objects.remove(obj,do_unlink=True)
        objects.clear()
    assembly=("clamshell","reference_motor","holder","bridge","reference_bearing","bearing_retainer")
    parts(*assembly); bolts()
    image("hero",(-.60,-1,.79),1020,710)
    parts("clamshell","reference_motor")
    image("open",(-.62,-1,1.04),540,285)
    parts(*assembly); bolts()
    image("bottom",(-.42,-1,-1.25),540,285)

    piece("clamshell",(0,0,-37))
    piece("reference_motor",(0,0,-8))
    piece("holder",(0,0,25))
    for y in (-8.8,8.8):
        piece("30",(-20.6,y,75))
        piece("nut",(-20.6,y,-83))
    image("lower",(-.49,-1,.46),505,900,[(-20.6,-8.8,73),(12,-18,30),(7,-8,-15),
        (12,-18,-51),(-20.6,-8.8,-82)])
    piece("holder",(0,0,-30))
    piece("bridge",(0,0,-8))
    piece("reference_bearing",(0,0,19))
    piece("bearing_retainer",(0,0,44))
    for x,y in axes:
        piece("16" if x==-18 else "20",(x,y,99.4 if x==-18 else 100))
        piece("nut",(x,y,-50 if x==-18 else -52.9))
    image("upper",(-.49,-1,.46),505,900,[(-18,0,97),(16,-14,63),(11,-5,35),
        (15,-13,6),(13,-18,-26),(18,0,-52)])
    for n,y in enumerate([0,35,70]):
        piece("seat_"+chr(65+n),(0,y,0))
    piece("nut_bar",(-10,105,0))
    image("tray",(.68,-1,1.7),885,685)
    piece("nut_bar",(-20.6,0,-23.5))
    piece("reference_motor")
    image("saddle",(-.57,-1,.87),640,390)


def source_job():
    from working_oomp_populate import get_options,apply_taxonomy,build_oomp_id
    job={}
    for o in get_options():
        if o["motor_style"]=="tt" and o["variant"] in ("version2","testing_motor_mount"):
            apply_taxonomy(o)
            key="holder" if o["variant"]=="version2" else "tests"
            job[key]=str(ROOT/"parts"/build_oomp_id(o))
            if key=="holder": job["pieces"]=o["pieces"]
    return job

def compose(work, job):
    from PIL import Image, ImageDraw, ImageFont, ImageFilter
    holder,tests=Path(job["holder"]),Path(job["tests"])
    paper="#F5F4EE"; ink="#172E34"; muted="#526A6D"; rule="#BBCAC5"; teal="#0D6366"
    fonts=Path("C:/Windows/Fonts")
    font_cache={}
    def text(x,y,s,size=22,color=ink,face="segoeui.ttf"):
        key=face,size
        if key not in font_cache: font_cache[key]=ImageFont.truetype(str(fonts/face),size)
        for row,part in enumerate(s.splitlines()):
            draw.text((x,y+(size+6)*row),part,font=font_cache[key],fill=color,anchor="lt")
    def bold(x,y,s,size=25,color=ink):
        text(x,y,s,size,color,"segoeuib.ttf")
    def mono(x,y,s,size=18,color=teal):
        text(x,y,s,size,color,"consola.ttf")
    def line(x1,y1,x2,y2,color=rule):
        draw.line((x1,y1,x2,y2),fill=color,width=2)
    def page(num,title,deck,height):
        nonlocal canvas,draw
        canvas=Image.new("RGB",(1720,height),paper)
        draw=ImageDraw.Draw(canvas)
        mono(55,30,"OOBB   /   MOTOR MOUNTS     •     TT SERIES")
        mono(1410,30,f"DESIGN STUDY    {num} / 03")
        line(55,65,1665,65)
        bold(52,87,title,58)
        text(57,167,deck,24,muted)
    def card(x,y,w,h,fill):
        draw.rounded_rectangle((x,y,x+w,y+h),radius=19,fill=fill)
    def photo(key,x,y,w,h,shadow=False):
        src=Image.open(work/(key+".png")).convert("RGBA")
        box=src.getchannel("A").getbbox()
        crop=src.crop(box)
        ratio=min(w/crop.width,h/crop.height)
        crop=crop.resize((round(crop.width*ratio),round(crop.height*ratio)),Image.Resampling.LANCZOS)
        left,top=round(x+(w-crop.width)/2),round(y+(h-crop.height)/2)
        if shadow:
            alpha=crop.getchannel("A").point(lambda p:round(p*.11))
            mask=Image.new("L",canvas.size)
            mask.paste(alpha,(left+5,top+12))
            canvas.paste("#234F51",(0,0),mask.filter(ImageFilter.GaussianBlur(15)))
        canvas.paste(crop,(left,top),crop)
        return lambda px,py:(round(left+(px-box[0])*ratio),round(top+(py-box[1])*ratio))
    def finish(folder,name,left):
        y=canvas.height-62
        line(55,y,1665,y)
        mono(55,y+18,left,16,muted)
        for x,colour,label in [(1185,"#00B1B7","TEAL"),(1305,"#121212","BLACK"),(1440,"#FEC601","SUNFLOWER")]:
            draw.rounded_rectangle((x,y+16,x+21,y+37),radius=4,fill=colour)
            mono(x+29,y+19,label,15,ink)
        canvas.save(folder/name,optimize=True)
    canvas=draw=None
    page("01","Inside the TT motor holder","A 5 × 3 OOBB mount with four printed parts, a 6704 bearing and ten countersunk M3 screws.",1110)
    card(55,230,950,790,"#E1EBE6")
    mono(90,260,"01A   /   ASSEMBLED")
    photo("hero",105,320,850,595,True)
    bold(90,943,"Output face",27)
    text(90,978,"The bridge carries the bearing above the gearbox shaft.",20,muted)
    card(1030,230,635,385,"#EDEBE0")
    mono(1060,253,"01B   /   SHELL OPEN")
    photo("open",1060,291,575,225,True)
    bold(1060,531,"Motor in the lower shell",24)
    text(1060,572,"The open end gives the motor leads a clear exit.",20,muted)
    card(1030,635,635,385,"#E4E9E7")
    mono(1060,658,"01C   /   UNDERSIDE")
    photo("bottom",1060,698,575,225,True)
    bold(1060,932,"Shell and gearbox fasteners",24)
    text(1060,971,"Four shell screws and two motor nuts load here.",20,muted)
    finish(holder,"holder_render.png","74 × 44 mm MOUNTING FOOTPRINT")

    page("02","How the holder goes together","Both views share the face plate. Follow the screw axes down each stack to the captive nuts.",1320)
    card(55,226,793,1000,"#E8ECE5")
    card(872,226,793,1000,"#E3ECE9")
    for x,tag,title in [(55,"02A","Gearbox mounting"),(872,"02B","Bearing retention")]:
        mono(x+27,253,tag+"   /   EXPLODED")
        bold(x+26,282,title,32)
        line(x+27,335,x+764,335)
    def callouts(key,x,rows):
        project=photo(key,x+15,365,457,820)
        anchors=json.loads((work/(key+".json")).read_text())
        for pt,(name,detail) in zip(anchors,rows,strict=True):
            px,py=project(*pt)
            labelx=x+491
            line(px,py,labelx-12,py,"#739292")
            draw.ellipse((px-4,py-4,px+4,py+4),fill="#256366",outline=paper,width=1)
            bold(labelx,py-15,name,22)
            text(labelx,py+14,detail,18,muted)
    callouts("lower",55,[
        ("2 × M3 × 30","Countersunk motor screws"),
        ("Face plate","Locates the gearbox face"),
        ("TT gearbox","17.6 mm between bores"),
        ("Lower clamshell","Clears the locating pin"),
        ("2 × M3 nuts","Load from underneath")])
    callouts("upper",872,[
        ("M3 bearing screws","Yellow index • 1 × 16 mm\nOther three 20 mm"),
        ("Bearing retainer","Captures the outer race"),
        ("6704 bearing","20 × 27 × 4 mm"),
        ("Bearing bridge","Solid 8 mm support"),
        ("Face plate","Same part shown at left"),
        ("4 × M3 nuts","Fit before the gearbox")])
    finish(holder,"holder_exploded_guide.png","SHELL CLOSURE   /   4 × M3 × 25 FROM BELOW INTO FOUR FACE-PLATE NUTS")

    page("03","Finding the fit on your motor","One print gives you three face seats and a shared saddle. Start with B, the clearance used in the holder.",1080)
    card(55,228,843,761,"#E6EDE7")
    mono(85,256,"03A   /   COMBINED TEST PRINT")
    photo("tray",90,304,770,530,True)
    line(85,857,867,857)
    for n,(code,amount) in enumerate([("A","0.10 mm"),("B","0.20 mm"),("C","0.40 mm")]):
        x=89+n*265
        if code=="B":
            draw.rounded_rectangle((x-7,870,x+30,915),radius=5,fill="#FEC601")
        bold(x,878,code,28,ink if code=="B" else teal)
        text(x+40,883,amount,23)
    text(88,939,"Case clearance per side. All three use the same screw pattern.",19,muted)
    card(923,228,742,761,"#F0EDE2")
    mono(955,256,"03B   /   MOTOR IN THE SHARED SADDLE")
    photo("saddle",980,309,620,327,True)
    line(955,661,1633,661)
    for n,(title,detail) in enumerate([
        ("Seat the gearbox by hand","Use the snuggest seat that lies flat and lifts out freely."),
        ("Pass both M3 × 30 screws","Check both holes line up without forcing the screws."),
        ("Close the saddle","Check pin and shaft clearance, seat both nuts, then snug.")]):
        y=689+93*n
        mono(956,y+6,str(n+1).zfill(2))
        bold(1002,y,title,24)
        text(1002,y+36,detail,19,muted)
    finish(tests,"mount_fit_guide.png","PRINT FILE   /   3dpr.stl")


def main():
    import subprocess
    from tempfile import TemporaryDirectory
    job=source_job()
    with TemporaryDirectory() as temp:
        work=Path(temp)
        (work/"job.json").write_text(json.dumps(job))
        subprocess.run(["blender","-b","--python-exit-code","1","-P",str(Path(__file__).resolve()),
                        "--",str(work)],check=True)
        compose(work,job)


if __name__=="__main__":
    if "--" in sys.argv:
        render(Path(sys.argv[sys.argv.index("--")+1]).resolve())
    else:
        main()
