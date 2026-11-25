"""Validate actual pipeline exports, shaft fits, assembly clearance and access.

Run action_make_tt_v2.py first. Geometry checks cannot establish printed grip,
creep, wear or a torque rating; those require the supplied physical coupons.
"""
import copy
import json
from pathlib import Path
import shutil
import subprocess

import numpy as np
import oobb
import trimesh
import yaml

import working_oomp_populate as populate
import working_scad as drawings
from validate_servo_v2 import contains


ROOT = Path(__file__).resolve().parent


def main():
    results = []
    def check(name, condition, **details):
        results.append(dict(test=name,passed=bool(condition),**details))
        if not condition: print("FAIL",name,details,flush=True)

    options = [o for o in populate.get_options()
               if o["oobb_name"].startswith("holder_motor_gear_tt_v2")]
    check("five_catalogue_entries",len(options)==5)
    folders, metadata = {}, {}
    for option in options:
        populate.apply_taxonomy(option)
        folder = ROOT/"parts"/populate.build_oomp_id(option)
        key = option["variant"]
        folders[key] = folder
        metadata[key] = yaml.safe_load((folder/"thing.yaml").read_text())["thing"]
        for location in (ROOT/"parts_source"/folder.name,folder):
            saved = yaml.safe_load((location/"working.yaml").read_text())
            check(key+"_"+location.parent.name+"_metadata",
                  saved["oobb_details"]==option["oobb_details"])
        # Exercise actual dispatch with debug attributes and independent kwargs.
        kwargs = dict(copy.deepcopy(option["oobb_details"]),m="#")
        before = copy.deepcopy(kwargs)
        thing = oobb.get_default_thing(type="tt_v2_debug")
        getattr(drawings,"get_"+option["oobb_name"])(thing,**kwargs)
        check(key+"_kwargs_preserved",kwargs==before)
        check(key+"_debug_propagates",bool(thing["components_objects"]) and
              all(c.get("m")=="#" for c in thing["components_objects"]))
        source = (folder/"3dpr.scad").read_text()
        check(key+"_native_standalone_scad","import(" not in source and "use <" not in source)

    cache = {}
    def mesh(folder,name):
        key = (str(folder),name)
        if key not in cache: cache[key] = trimesh.load_mesh(folder/(name+".stl"))
        return cache[key]

    def solid(folder,name,count=1):
        obj = mesh(folder,name)
        parts = list(obj.split(only_watertight=False))
        check(name+"_closed_solids",len(parts)==count and all(
            p.is_watertight and p.is_winding_consistent and p.volume>0 for p in parts),
            count=len(parts))
        check(name+"_on_bed",abs(obj.bounds[0,2])<.002)
        return obj

    main_folder = folders["version2"]
    assembly_folder = folders["testing_shaft_parts"]
    reports = main_folder/"validation_checks"
    reports.mkdir(parents=True,exist_ok=True)
    production = next(o for o in options if o["variant"]=="version2")
    p = production["oobb_details"]
    holder_names = [name for name,piece in p["pieces"].items() if piece["role"]=="holder"]
    shaft_names = [name for name,piece in p["pieces"].items() if piece["role"]=="shaft"]
    for name in holder_names: solid(main_folder,name)
    bridge = mesh(main_folder,"bridge")  # Inverted print orientation, broad base at Z=8.
    check("continuous_bridge_base_in_all_four_corners",all(
        contains(bridge,[x,y,z]) for x in (-19,19) for y in (-18,18) for z in (3.5,6,7.9)))
    for name in shaft_names: solid(assembly_folder,name)
    layout = solid(main_folder,"3dpr",len(holder_names))
    check("production_layout_no_fused_or_overlapping_pieces",
          np.isclose(layout.volume,sum(mesh(main_folder,n).volume for n in holder_names),atol=.05))
    check("production_layout_fits_220_bed",np.all(layout.extents[:2]<220))
    check("production_depth_matches_catalogue",abs(layout.extents[2]-production["depth"])<.002)
    holder_names = [name for name,piece in p["pieces"].items() if piece["role"]=="holder"]
    shaft_names = [name for name,piece in p["pieces"].items() if piece["role"]=="shaft"]
    check("holder_and_shaft_roles_separated",len(holder_names)==4 and len(shaft_names)==4)
    check("no_wire_management_parts_in_catalogue","wire_lid" not in p["pieces"] and not p["wire_management"])
    check("no_wire_management_in_drawing",not any(c.get("shape")=="oobb_wire"
          for c in metadata["version2"]["components_objects"]))
    shell = mesh(main_folder,"clamshell")
    check("plain_shell_floor",contains(shell,[-36,0,2]) and contains(shell,[-33,6.5,1]))
    check("rear_lead_exit_clear",all(not contains(shell,[x,0,z+23.5])
          for x in (-51,-49,-46) for z in (-16,-8,-.1)))
    check("rear_exit_preserves_floor",contains(shell,[-51,0,5.5]))
    for folder,name,names in ((main_folder,"holder_print",holder_names),(assembly_folder,"shaft_print",shaft_names)):
        tray = solid(folder,name,len(names))
        check(name+"_contains_only_assigned_parts",np.isclose(tray.volume,
            sum(mesh(folder,n).volume for n in names),atol=.05))
    check("default_holder_has_four_solids",len(layout.split())==4)
    check("no_obsolete_wire_lid_files",not any(main_folder.glob("wire_lid.*")))
    check("default_holder_matches_holder_print",np.isclose(layout.volume,
          mesh(main_folder,"holder_print").volume,atol=.001))
    check("holder_folder_has_no_shaft_files",
          not any((main_folder/(name+".stl")).exists() for name in shaft_names))
    check("shaft_parts_in_separate_catalogue_folder",all((assembly_folder/(name+".stl")).is_file() for name in shaft_names))
    shaft_layout = solid(assembly_folder,"3dpr",4)
    check("shaft_parts_depth_matches_catalogue",abs(shaft_layout.extents[2]-11.028)<.002)
    for a in metadata["version2"]["grid_hole_audit"]:
        check("grid_reason_"+a["face"]+str((a["x"],a["y"])),
              a["included"] != bool(a["exclusions"]))

    gauges = folders["testing_motor_mount"]
    samples = metadata["testing_motor_mount"]["mount_samples"]
    check("mount_sweep_mm_per_side",
          [r["clearance_per_side_mm"] for r in samples]==[.1,.2,.4])
    for r in samples:
        seat = solid(gauges,r["name"])
        edge = p["case_width_mm"]/2+r["clearance_per_side_mm"]
        check(r["name"]+"_case_width",contains(seat,[-5,edge+.04,6]) and
              not contains(seat,[-5,edge-.04,6]))
    bar = solid(gauges,"nut_bar")
    tray = solid(gauges,"3dpr",4)
    check("mount_test_tray_separation",np.isclose(tray.volume,bar.volume+
          sum(mesh(gauges,r["name"]).volume for r in samples),atol=.03))
    check("mount_tray_bed_and_depth",max(tray.extents[:2])<220 and abs(tray.extents[2]-23.5)<.002)
    for y in (-8.8,8.8):
        check("motor_M3_seat_"+str(y),all(
              not contains(obj,[x+2.5,y,2.95]) and contains(obj,[x+2.5,y,3.05])
              for obj,x in ((bar,0),(shell,-20.6))))
    check("tip_stays_inside_shell_with_full_nut_engagement",
          -23.5 < 7-p["motor_screw_length_mm"] <= -23.5+p["motor_nut_recess_mm"]-2.4)
    check("pin_relief_has_floor",not contains(shell,[-11.25,0,5.75]) and
          contains(shell,[-11.25,0,5.6]))

    fits = folders["shaft_fit_v2"]
    records = metadata["shaft_fit_v2"]["fit_test_samples"]
    check("nine_diameter_flat_and_three_depth_trials",len(records)==12)
    for sample in records:
        obj = solid(fits,sample["name"])
        d,f,depth = sample["diameter_mm"],sample["flats_mm"],sample["socket_depth_mm"]
        check(sample["name"]+"_major_dimension",
              not contains(obj,[d/2-.05,0,2]) and contains(obj,[d/2+.05,0,2]))
        check(sample["name"]+"_flat_dimension",
              not contains(obj,[0,f/2-.05,2]) and contains(obj,[0,f/2+.05,2]))
        check(sample["name"]+"_depth_stop",
              not contains(obj,[1.5,0,depth-.05]) and contains(obj,[1.5,0,depth+.05]))
    solid(fits,"motor_pocket")
    layout = solid(fits,"3dpr",13)
    check("shaft_tray_fits_220_bed",np.all(layout.extents[:2]<220))
    check("shaft_tray_no_piece_overlap",np.isclose(layout.volume,
        sum(mesh(fits,s["name"]).volume for s in records)+mesh(fits,"motor_pocket").volume,atol=.05))

    coupling = folders["coupling_tests_v2"]
    sample_names = [s["name"] for s in metadata["coupling_tests_v2"]["coupling_test_samples"]]
    check("all_five_styles_present",set(s["style"] for s in metadata["coupling_tests_v2"]["coupling_test_samples"] if s["style"]!="common")
          == {"plain","pinch","jaws","collet","stock"})
    for name in sample_names+["legend"]: solid(coupling,name)
    layout = solid(coupling,"3dpr",11)
    check("coupling_tray_no_piece_overlap",np.isclose(layout.volume,
        sum(mesh(coupling,n).volume for n in sample_names+["legend"]),atol=.05))
    check("coupling_tray_fits_220_bed",np.all(layout.extents[:2]<220))
    check("coupling_depth_matches_catalogue",abs(layout.extents[2]-16.8)<.002)
    check("common_carrier_and_cap_in_combined_tray",{'carrier','output_lid'}<=set(sample_names))
    label_map=json.loads((coupling/'connector_map.json').read_text())
    check("label_map_matches_print_metadata",label_map['samples']==metadata['coupling_tests_v2']['coupling_test_samples'])
    check("unique_part_codes",len({s['code'] for s in label_map['samples']})==len(sample_names)==10)
    check("labelled_png_present",(coupling/'3dpr_labeled.png').is_file())
    check("all_parts_have_type_and_name",all(s['type'] and s['part_name'] for s in label_map['samples']))

    executable = shutil.which("openscad")
    def source(folder,name):
        # Tests operate on native exported CSG, independently of mesh samples.
        return "union(){\n"+(folder/(name+".scad")).read_text()+"\n}\n"

    def collision(name,first,second,allowance=.0001):
        scad = reports/(name+".scad")
        target = scad.with_suffix(".stl")
        scad.write_text("intersection(){\n"+first+"\n"+second+"\n}\n")
        process = subprocess.run([executable,"--backend=Manifold","-o",str(target),str(scad)],
            capture_output=True,text=True,timeout=120,
            creationflags=getattr(subprocess,"CREATE_NO_WINDOW",0))
        log = process.stdout+process.stderr
        scad.with_suffix(".log").write_text(log)
        check(name+"_render_clean","ERROR:" not in log and "WARNING:" not in log)
        if "Current top level object is empty" in log:
            target.unlink(missing_ok=True)  # Discard a previous nonempty intersection.
            volume = 0
        elif process.returncode==0:
            volume = abs(trimesh.load_mesh(target).volume)
        else:
            volume = float("inf")
        check(name,volume<allowance,volume_mm3=float(volume))

    stationary, rotating = [source(assembly_folder,n) for n in ("stationary","rotating")]
    for angle in (0,22.5,45,90,135,180,270):
        collision("rotation_"+str(angle),stationary,f"rotate([0,0,{angle}]){{\n"+rotating+"\n}")
    for name in ("reference_motor","reference_bearing"):
        collision("assembly_clear_"+name,source(assembly_folder,"assembled_printed"),source(main_folder,name))

    # 3777 STEP shaft tip is at Z=12, leaving 0.2 mm under the socket stop.
    check("shaft_end_clearance",12.2-(p["motor_inset_mm"]+9)>.19)
    check("retention_screw_full_nut_engagement",
          p["output_split_mm"]-p["retention_screw_length_mm"]<=p["retention_nut_bottom_mm"]+.001)
    check("rear_bridge_screw_stays_out_of_gearbox",
          p["motor_inset_mm"]+.39 <= p["retainer_top_mm"]-p["rear_bridge_head_recess_mm"]-p["bridge_rear_screw_length_mm"] <= p["rear_bridge_nut_roof_mm"]-2.4)
    check("collar_bearing_end_float",
          p["bearing_bottom_mm"]>p["cartridge_shoulder_mm"] and
          p["carrier_lip_bottom_mm"]>p["bearing_bottom_mm"]+4)

    # Nominal true-mode OOBB fastener geometry checks both material clearance
    # and gearbox clearance, including the shortened rear bridge fastener.
    hardware = oobb.get_default_thing(type="tt_v2_fastener_witness")
    q = dict(p,mode="true")
    for x,y in ((18,0),(-18,0),(0,18),(0,-18)):
        drawings.tt_v2_add(hardware,q,"oobb_screw_countersunk",radius_name="m3",
            depth=p["bridge_rear_screw_length_mm"] if x==-18 else p["bridge_screw_length_mm"],
            pos=[x,y,p["retainer_top_mm"]-(p["rear_bridge_head_recess_mm"] if x==-18 else 0)],
            zz="none",nut_include=False,overhang=False,clearance="")
        drawings.tt_v2_add(hardware,q,"oobb_nut",radius_name="m3",depth=2.4,
            pos=[x,y,p["rear_bridge_nut_roof_mm"] if x==-18 else 3],zz="top",overhang=False)
    drawings.tt_v2_add(hardware,q,"oobb_screw_socket_cap",radius_name="m3",
        depth=p["retention_screw_length_mm"],pos=[0,0,p["output_split_mm"]],
        zz="none",nut_include=False,overhang=False,clearance="")
    for x in (-p["clamp_axis_x_mm"],p["clamp_axis_x_mm"]):
        drawings.tt_v2_add(hardware,q,"oobb_screw_socket_cap",radius_name="m3",
            depth=p["clamp_screw_length_mm"],pos=[x,p["clamp_head_seat_y_mm"],p["clamp_axis_z_mm"]],
            rot=[-90,0,0],zz="none",nut_include=False,overhang=False,clearance="")
        drawings.tt_v2_add(hardware,q,"oobb_nut",radius_name="m3",depth=2.4,
            pos=[x,-5.6,p["clamp_axis_z_mm"]],rot=[-90,0,0],zz="bottom",overhang=False)
    drawings.tt_v2_add(hardware,q,"oobb_nut",radius_name="m3",depth=2.4,
        pos=[0,0,p["retention_nut_bottom_mm"]],zz="bottom",overhang=False)
    hardware_path = reports/"hardware.scad"
    oobb.opsc_make_object(str(hardware_path),hardware["components"],mode="true",save_type="none",overwrite=True)
    hardware_source = "union(){\n"+hardware_path.read_text()+"\n}\n"
    collision("hardware_clear_printed",hardware_source,source(assembly_folder,"assembled_printed"))
    collision("hardware_clear_motor",hardware_source,source(main_folder,"reference_motor"))
    collision("hardware_clear_bearing",hardware_source,source(main_folder,"reference_bearing"))
    mount_hw = oobb.get_default_thing(type="tt_mount_hardware")
    for x,y,z,length,up in [(-20.6,y,7,30,False) for y in (-8.8,8.8)]+[
            (x,y,-18,25,True) for x in (-37.5,7.5) for y in (-15,15)]:
        drawings.tt_v2_add(mount_hw,q,"oobb_screw_countersunk",radius_name="m3",
            depth=length,pos=[x,y,z],rot=[0,180 if up else 0,0],zz="none",
            nut_include=False,overhang=False,clearance="")
        drawings.tt_v2_add(mount_hw,q,"oobb_nut",radius_name="m3",depth=2.4,
            pos=[x,y,4 if up else -20.5],zz="bottom" if up else "top",overhang=False)
    mount_path = reports/"mount_hardware.scad"
    oobb.opsc_make_object(str(mount_path),mount_hw["components"],mode="true",save_type="none",overwrite=True)
    witness = "union(){"+mount_path.read_text()+"}"
    collision("mount_fasteners_clear_holder",witness,stationary)
    collision("mount_fasteners_clear_motor",witness,source(main_folder,"reference_motor"))
    motor_driver = "union(){"+ "".join(
        f"translate([-20.6,{y},7]) cylinder(r=2.5,h=25,$fn=50);"
        for y in (-8.8,8.8))+"}"
    collision("motor_driver_through_bridge_and_cap",motor_driver,stationary)
    check("stationary_fasteners_all_M3",all(
        c.get("radius_name")=="m3" for c in metadata["version2"]["components_objects"]
        if c.get("shape") in ("oobb_screw_countersunk","oobb_nut") and
        c.get("radius_name") is not None))
    # Restore print transforms to exercise the actual two-piece bench fixture.
    saddle = "translate([-20.6,0,-23.5])"+source(gauges,"nut_bar")
    for r in samples:
        seat = "translate([0,0,7]) rotate([180,0,0])"+source(gauges,r["name"])
        collision(r["name"]+"_motor_fit","union(){"+saddle+seat+"}",source(main_folder,"reference_motor"))
        collision(r["name"]+"_saddle_closes",seat,saddle)

    # Driver sweeps along clamp axes, and nut insertion paths along their hex
    # pockets. Other hardware is omitted so its own intentionally occupied
    # volume cannot hide a blocked tool path.
    tools = oobb.get_default_thing(type="tt_v2_access")
    nuts = oobb.get_default_thing(type="tt_v2_nut_access")
    for x in (-p["clamp_axis_x_mm"],p["clamp_axis_x_mm"]):
        drawings.tt_v2_add(tools,q,"oobb_cylinder",radius=1.45,depth=30,
            pos=[x,8.5,p["clamp_axis_z_mm"]],rot=[-90,0,0],zz="bottom")
        drawings.tt_v2_add(nuts,q,"oobb_nut",radius_name="m3",depth=25,
            pos=[x,-30,p["clamp_axis_z_mm"]],rot=[-90,0,0],zz="bottom",overhang=False)
    access_path = reports/"access.scad"
    oobb.opsc_make_object(str(access_path),tools["components"],mode="true",save_type="none",overwrite=True)
    collision("assembled_clamp_tool_access","union(){\n"+access_path.read_text()+"\n}",
              source(assembly_folder,"assembled_printed"))
    nut_path = reports/"nut_access.scad"
    oobb.opsc_make_object(str(nut_path),nuts["components"],mode="true",save_type="none",overwrite=True)
    clamp_stage = "union(){\n"+source(coupling,"jaws_assembly")+"\n"
    # Holder is exported inverted for printing: restore its assembly transform.
    clamp_stage += "translate([0,0,8]) rotate([180,0,0]){\n"+source(main_folder,"holder")+"\n}\n}\n"
    collision("clamp_nut_loading_before_bridge","union(){\n"+nut_path.read_text()+"\n}",clamp_stage)

    passed = all(r["passed"] for r in results)
    report = dict(passed=passed,checks=len(results),physical_fit_tested=False,
        shaft_dimensions_provisional=True,results=results,
        print_folders={k:str(v) for k,v in folders.items()})
    (reports/"validation.json").write_text(json.dumps(report,indent=2)+"\n")
    (main_folder/"validation.json").write_text(json.dumps(report,indent=2)+"\n")
    print(f'{"PASS" if passed else "FAIL"}: {len(results)} TT V2 checks',flush=True)
    assert passed,[r["test"] for r in results if not r["passed"]]


if __name__=="__main__":
    main()
