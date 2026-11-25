"""Actual exported-mesh clearance, insertion, rotation and V1 preservation tests.

Run the normal populate -> OOMP -> working_scad STL pipeline first, then this
script. Friction in the spindle/taper is intentional and tested separately
from the rigid-body non-intersection checks. This cannot predict print fit.
"""
import ast
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

import servo_v2
import working_oomp_populate


def contains(mesh, point):
    a, b, c = np.moveaxis(mesh.triangles-np.array(point), 1, 0)
    la, lb, lc = [np.linalg.norm(v, axis=1) for v in (a, b, c)]
    dot = lambda u, v: np.einsum("ij,ij->i", u, v)
    n = dot(a, np.cross(b, c))
    d = la*lb*lc+dot(a, b)*lc+dot(b, c)*la+dot(c, a)*lb
    return abs(np.sum(2*np.arctan2(n, d))) > 2*np.pi


def main():
    root = Path(__file__).resolve().parent
    option, = [o for o in working_oomp_populate.get_options() if o["oobb_name"] == "holder_motor_servo_standard_v2"]
    working_oomp_populate.apply_taxonomy(option)
    folder = root/"parts"/working_oomp_populate.build_oomp_id(option)
    report_dir = root/"outputs/servo_v2_clearance"
    report_dir.mkdir(exist_ok=True)
    executable = shutil.which("openscad")
    assert executable
    results = []
    meshes = {}

    def mesh(name):
        if name not in meshes:
            meshes[name] = trimesh.load_mesh(folder/(name+".stl"))
        return meshes[name]

    def check(label, condition, **detail):
        results.append(dict(test=label, passed=bool(condition), **detail))
        if not condition:
            print(f"FAIL: {label}: {detail}", flush=True)

    def imported(name, z=0, rotation=0):
        path = (folder/(name+".stl")).as_posix()
        return f'translate([0,0,{z}]) rotate([0,0,{rotation}]) import("{path}");'

    def collision(label, first, second, expect_empty=True, minimum_volume=1):
        scad = report_dir/(label+".scad")
        stl = scad.with_suffix(".stl")
        if stl.exists():
            stl.unlink()
        scad.write_text("intersection(){\n"+first+"\n"+second+"\n}\n")
        proc = subprocess.run([executable, "--backend=Manifold", "-o", str(stl), str(scad)],
                              capture_output=True, text=True, timeout=120,
                              creationflags=getattr(subprocess, "CREATE_NO_WINDOW", 0))
        log = proc.stdout+proc.stderr
        assert "ERROR:" not in log and "WARNING:" not in log, log
        if not stl.exists():
            assert "empty" in log.lower(), log
            volume = 0
        else:
            # Touching ears can produce zero-volume surface triangles. Their
            # mass centre is undefined, although volume is exactly zero.
            with np.errstate(invalid="ignore", divide="ignore"):
                volume = abs(float(trimesh.load_mesh(stl).volume))
        check(label, volume < .001 if expect_empty else volume > minimum_volume,
              intersection_mm3=volume, intentional_collision=not expect_empty)

    d = servo_v2.dimensions()
    data = servo_v2.reference()
    max_case = max(p["case_top"] for p in data["profiles"].values())
    check("lowest_bearing_with_case_gap_and_1mm_shoulder",
          math.isclose(d["seat"], max_case+.6+1), bearing_bottom_mm=d["seat"],
          maximum_case_top_mm=max_case, case_gap_mm=.6)
    for name, depth in [("holder", d["holder_top"]), ("bearing_retainer", d["retainer_thickness"]),
                        ("female_rotor", d["split"]-d["runner_face"]),
                        ("output_lid", d["lid_thickness"]),
                        ("clamshell", d["shell_top"]-d["shell_bottom"]),
                        ("clamp_left",6.5),("clamp_right",6.5),
                        ("spacer_left",1),("spacer_right",1)]:
        m = mesh(name)
        pieces = m.split(only_watertight=False)
        check(name+"_single_closed_print", len(pieces) == 1 and m.is_watertight and m.volume > 0,
              solids=len(pieces), volume_mm3=float(m.volume))
        check(name+"_on_bed", abs(m.bounds[0, 2]) < .002 and abs(m.extents[2]-depth) < .002,
              bounds_mm=m.bounds.tolist())

    holder = mesh("installed_holder")
    rotor = mesh("installed_rotor_mg996r")
    check("full_4mm_bearing", np.allclose(mesh("reference_bearing").extents, [27, 27, 4], atol=.06))
    cap = mesh("installed_bearing_retainer")
    check("bearing_on_oobb_column_4_row_2", np.allclose(
          mesh("reference_bearing").bounds.mean(axis=0)[:2],
          np.array(oobb.get_hole_pos(4, 2, 5, 3))+[-15, 0], atol=.002),
          spindle_xy_mm=[0, 0], oobb_column=4, oobb_row=2)
    check("upper_retaining_lip_1d5mm", math.isclose(cap.bounds[1,2]-d["bearing_roof"],1.5,abs_tol=.002))
    check("separate_bearing_side_connectors_removed", not servo_v2.joins() and
          not contains(holder, [-3.5, 15, 7.1]))
    check("unused_rear_window_filled", contains(holder, [-34, 2.5, 10.2]))
    check("base_connectors_inset_M3_sites", servo_v2.cover_joins() ==
          [(-37.5,-15),(-37.5,15),(7.5,-15),(7.5,15)])
    check("lower_plate_only_small_bore", contains(holder, [13.1, 0, d["seat"]-.3]) and
          not contains(holder, [12.5, 0, d["seat"]-.3]) and
          math.isclose(holder.bounds[1, 2], d["seat"], abs_tol=.002))
    for z in (d["seat"]+.4, d["seat"]+2, d["bearing_roof"]-.1):
        check(f"full_bearing_seat_in_upper_plate_{z:g}",
              not contains(cap, [13.55, 0, z]) and contains(cap, [14.2, 0, z]))
    check("upper_plate_small_bore_and_roof", not contains(cap, [12.4, 0, d["bearing_roof"]+.5]) and
          contains(cap, [13.1, 0, d["bearing_roof"]+.5]))
    for x in (-49, 19):
        check(f"upper_plate_flat_print_face_{x}", contains(mesh("bearing_retainer"), [x, 19, .15]))
    for x, y in servo_v2.joins():
        check(f"retainer_nut_in_upper_plate_{x}_{y}",
              not contains(cap, [x+2.5, y, d["assembly_top"]-1]) and
              contains(holder, [x+2.5, y, d["holder_top"]-.3]))
    check("default_1mm_shims", d["default_spacer"] == 1)
    check("servo_head_tops_flush_with_plate",math.isclose(d["servo_head_top"],d["assembly_top"]))
    check("M3_30mm_servo_screws",d["servo_screw_length"] == 30)
    for x,y in servo_v2.mount_positions():
        bar=mesh("installed_clamp_"+("left" if x<0 else "right"))
        check(f"top_access_shaft_and_head_{x}_{y}",
              not contains(holder,[x,y,.5]) and not contains(cap,[x,y,12]) and
              not contains(cap,[x+2.4,y,d["servo_head_top"]-.1]) and
              contains(cap,[x+2.4,y,d["servo_head_top"]-1.2]))
        # A nominal metal cone must actually seat at the surface, with no
        # oversized cone allowing its rim to sink below the top face.
        check(f"nominal_flush_conical_seat_{x}_{y}",
              not contains(cap,[x+2.75,y,d["servo_head_top"]-.1]) and
              contains(cap,[x+2.75,y,d["servo_head_top"]-.4]))
        check(f"bar_nut_roof_and_bottom_loading_{x}_{y}",
              not contains(bar,[x+2,y,d["clamp_bottom"]+.5]) and
              contains(bar,[x+2,y,d["clamp_bottom"]+3.5]) and
              not contains(bar,[x,y,d["clamp_top"]-.2]))
        check(f"shaft_clears_bearing_OD_{x}_{y}",math.hypot(x,y)-1.5>13.5,
              radial_gap_mm=math.hypot(x,y)-15)
    for x, y in servo_v2.cover_joins():
        shell = mesh("installed_clamshell")
        check(f"cover_25mm_screw_head_and_access_{x}_{y}",
              math.isclose(d["cover_screw_length"],25) and
              not contains(shell,[x+2.5,y,d["shell_bottom"]+.8]) and
              not contains(shell,[x+2.5,y,d["cover_screw_head"]-.5]) and
              contains(shell,[x+2.5,y,d["cover_screw_head"]+.2]),
              head_z_mm=d["cover_screw_head"], screw_length_mm=d["cover_screw_length"])
    for face, name, z in [("holder", "installed_holder",10.2),
                           ("retainer","installed_bearing_retainer",d["assembly_top"]-.3),
                           ("bottom","installed_clamshell",d["shell_bottom"]+1.5)]:
        records=servo_v2.grid_layout(face)
        for x in (-45,15):
            for y in (-15,15):
                site,=[s for s in records if s["x"] == x and s["y"] == y]
                check(f"{face}_corner_M6_preserved_{x}_{y}", site["included"] and
                      site["radius_name"] == "m6" and not site["reserved_for_cover"] and
                      not contains(mesh(name),[x,y+math.copysign(2.7,y),z]))
    check("female_socket_opening", not contains(rotor, [2.5, 0, d["runner_face"]+.3]) and
          contains(rotor, [4.6, 0, d["runner_face"]+.3]))
    check("socket_has_roof", contains(rotor, [2.5, 0, servo_v2.installed_profile("mg996r")["spline_top"]+.55]))
    baseline_rotor = json.loads((root/"source_file/servo_v2_reference/rotor_before_raised_nuts.json").read_text())
    check("more_rotor_plastic", rotor.volume > baseline_rotor["volume_mm3"],
          previous_mm3=baseline_rotor["volume_mm3"], current_mm3=float(rotor.volume))
    for x, y in servo_v2.output_positions():
        for z in (d["face"]+.2, d["seat"]+2, d["nut_bottom"]-.5):
            check(f"cross_nut_through_hole_{x}_{y}_{z:g}", not contains(rotor, [x, y, z]))
        a = math.atan2(y, x)
        check(f"cross_nut_hole_preserves_journal_wall_{x}_{y}",
              contains(rotor, [9.6*math.cos(a), 9.6*math.sin(a), d["seat"]+2]))
    check("raised_nuts_above_bearing", d["nut_bottom"] >= d["seat"]+6,
          nut_bottom_mm=d["nut_bottom"], bearing_top_mm=d["seat"]+4)
    for x, y in servo_v2.output_positions():
        check(f"outside_top_loading_nut_{x}_{y}", not contains(rotor, [x, y, d["split"]-.15]) and
              not contains(rotor, [x, y, d["nut_bottom"]+.6]))
        # The roof is entirely in the lid, rather than split hex voids eating
        # both faces. Its M3 passage remains open and adjacent plastic closes it.
        check(f"nut_lid_roof_{x}_{y}", not contains(mesh("installed_output_lid"), [x, y, d["split"]+.25]) and
              contains(mesh("installed_output_lid"), [x+2.4, y, d["split"]+.25]))
    check("full_5x3_retainer", np.allclose(mesh("bearing_retainer").extents[:2], [74, 44], atol=.02))
    check("full_block_bounds", np.allclose(mesh("clamshell").extents[:2], [74, 44], atol=.02) and
          math.isclose(d["shell_bottom"], -38) and math.isclose(d["assembly_top"], 16.2))
    check("four_output_M3_cross_nuts_retained", servo_v2.output_positions() ==
          [(-7.5,0),(7.5,0),(0,-7.5),(0,7.5)])
    for x,y in servo_v2.output_joins():
        check(f"separate_diagonal_connector_{x:g}_{y:g}", math.isclose(abs(x),abs(y)) and
              math.isclose(math.hypot(x,y),d["output_join_radius"]) and
              not contains(rotor,[x,y,d["face"]+.2]) and
              not contains(rotor,[x,y,d["split"]-.2]) and
              not contains(mesh("installed_output_lid"),[x,y,d["output_top"]-.2]))
        a=math.atan2(y,x)
        check(f"diagonal_connector_preserves_journal_wall_{x:g}_{y:g}",
              contains(rotor,[9.6*math.cos(a),9.6*math.sin(a),d["seat"]+2]))
        check(f"diagonal_M3_bottom_nut_{x:g}_{y:g}",
              not contains(rotor,[x+2.3*math.cos(a),y+2.3*math.sin(a),d["output_join_nut_top"]-1]) and
              contains(rotor,[x+2.3*math.cos(a),y+2.3*math.sin(a),d["output_join_nut_top"]+1]))
        lid=mesh("installed_output_lid")
        check(f"diagonal_M3_countersink_in_top_{x:g}_{y:g}",
              not contains(lid,[x+2.4,y,d["output_top"]-.15]) and
              contains(lid,[x+2.4,y,d["split"]+.1]))
    # Every included face-grid site is witnessed in the actual mesh.
    for face, name, z in [("retainer", "installed_bearing_retainer", d["assembly_top"]-.3),
                           ("bottom", "installed_clamshell", d["shell_bottom"]+1.5)]:
        records = servo_v2.grid_layout(face)
        for site in records:
            if site["included"] and not site["reserved_for_cover"]:
                check(f'{face}_grid_{site["x"]}_{site["y"]}', not contains(mesh(name), [site["x"], site["y"], z]))
                if face == "retainer":
                    check(f'upper_frame_grid_{site["x"]}_{site["y"]}', not contains(holder, [site["x"], site["y"], 12.8]))
        free = sum(s["included"] and not s["reserved_for_cover"] for s in records)
        check(face+"_usable_grid", free == (20 if face == "retainer" else 12), free_holes=free)
    grid_sites=servo_v2.grid_layout("retainer")
    check("all_free_top_M3_sites_have_embedded_nuts", sum(s["embedded_nut"] for s in grid_sites)==12 and
          all(s["embedded_nut"] for s in grid_sites if s["included"] and
              s["radius_name"]=="m3" and not s["reserved_for_cover"]))
    for site in grid_sites:
        if site["embedded_nut"]:
            x,y=site["x"],site["y"]
            check(f"top_M3_nut_and_tip_relief_{x}_{y}",
                  not contains(cap,[x+2.4,y,d["retainer_bottom"]+.8]) and
                  contains(cap,[x+2.4,y,d["assembly_top"]-.7]) and
                  not contains(holder,[x,y,d["holder_top"]-.5]))
    for x in (-45,-30):
        check(f"blocked_top_M6_solid_{x}", contains(cap,[x,0,d["assembly_top"]-.7]))
    for site in servo_v2.grid_layout("bottom"):
        if not site["included"] and not site["reserved_for_cover"]:
            check(f'bottom_blocked_site_solid_{site["x"]}_{site["y"]}',
                  contains(mesh("installed_clamshell"),[site["x"],site["y"],d["shell_bottom"]+1.5]))

    for key, profile in data["profiles"].items():
        profile=servo_v2.installed_profile(key)
        collision(key+"_case_vs_holder", imported("installed_holder"), imported("reference_servo_"+key))
        collision(key+"_case_vs_rotor", imported("installed_rotor_"+key), imported("reference_case_"+key))
        collision(key+"_case_vs_clamshell", imported("installed_clamshell"), imported("reference_servo_"+key))
        collision(key+"_fastener_tips_vs_case", imported("fastener_clearance_"+key), imported("reference_servo_"+key))
        # Sweep from fully seated to 40 mm below the mounting ledges, without
        # the shaft-contacting output rotor installed during insertion.
        sweep = "union(){"+"".join(imported("reference_servo_"+key, z=-z) for z in (0, 2, 5, 10, 20, 40))+"}"
        collision(key+"_bottom_insertion", imported("installed_holder"), sweep)
        cx = profile["shaft_offset"]-profile["body"][0]/2
        for x in (cx-profile["mount_pitch"][0]/2, cx+profile["mount_pitch"][0]/2):
            for y in (-profile["mount_pitch"][1]/2, profile["mount_pitch"][1]/2):
                check(key+f"_mount_slot_{x:g}_{y:g}", not contains(holder, [x, y, .35]))
        mount_nuts = imported("reference_servo_nuts")
        collision(key+"_actual_mount_nuts_vs_rotor", imported("installed_rotor_"+key), mount_nuts)
        collision(key+"_actual_mount_nuts_fit_pockets", imported("installed_holder"), mount_nuts)
        collision(key+"_actual_mount_nuts_vs_case", imported("reference_case_"+key), mount_nuts)
        for mx,my in servo_v2.mount_positions():
            hx=cx+math.copysign(profile["mount_pitch"][0]/2,mx)
            hy=math.copysign(profile["mount_pitch"][1]/2,my)
            offset=math.hypot(mx-hx,my-hy)
            check(key+f"_M3_in_4d5mm_ear_{mx}_{my}",offset+1.5<2.25,
                  axis_offset_mm=offset,edge_clearance_mm=2.25-offset-1.5)
        ear_bolts = imported("fastener_clearance_"+key)
        collision(key+"_mount_screw_slots_through_upper_plate", imported("installed_bearing_retainer"), ear_bolts)
        collision(key+"_mount_screws_vs_bearing", imported("reference_bearing"), ear_bolts)
        check(key+"_socket_axial_engagement", profile["spline_top"]-max(profile["spline_bottom"], d["runner_face"]) >= 2.5,
              engagement_mm=profile["spline_top"]-max(profile["spline_bottom"], d["runner_face"]),
              modelling_status=profile["status"])
        retention=profile["retention"]
        screw_seat=profile["spline_top"]+retention["seat_above_spline"]
        r=retention["clearance_diameter"]/2
        profile_rotor=mesh("installed_rotor_"+key)
        # Probe above the two bridge layers; their square aperture is wider.
        check(key+"_profile_centre_bore",not contains(profile_rotor,[r-.05,0,profile["spline_top"]+1.1]) and
              contains(profile_rotor,[r+.15,0,profile["spline_top"]+1.1]))
        check(key+"_short_horn_screw_seat",not contains(profile_rotor,[2.5,0,screw_seat+.2]) and
              contains(profile_rotor,[2.5,0,screw_seat-.2]))
        for name in ("installed_rotor_"+key,"installed_output_lid","reference_output_fasteners"):
            collision(key+"_horn_screw_vs_"+name,imported("reference_retention_"+key),imported(name))

    rotating = "union(){"+"".join(imported("installed_rotor_mg996r", rotation=a)+
                 imported("installed_output_lid", rotation=a) for a in range(0, 360, 30))+"}"
    stationary = "union(){"+imported("installed_holder")+imported("installed_bearing_retainer")+"}"
    collision("360_degree_output_sweep", stationary, rotating)
    collision("bearing_vs_holder", imported("reference_bearing"), imported("installed_holder"))
    collision("bearing_vs_rotor", imported("reference_bearing"), imported("installed_rotor_mg996r"))
    collision("bearing_vs_retainer", imported("reference_bearing"), imported("installed_bearing_retainer"))
    bearing_insertion = "union(){"+"".join(imported("reference_bearing", z=-z)
                        for z in (0, .5, 1, 2, 4, 8, 16))+"}"
    collision("bearing_slides_over_female_end", imported("installed_rotor_mg996r"), bearing_insertion)
    collision("bearing_enters_upper_plate_from_below", imported("installed_bearing_retainer"), bearing_insertion)
    collision("lid_vs_retainer", imported("installed_output_lid"), imported("installed_bearing_retainer"))
    collision("maximum_41d5_by_21_case_envelope", imported("installed_holder"), imported("reference_maximum_envelope"))
    collision("maximum_case_vs_clamshell", imported("installed_clamshell"), imported("reference_maximum_envelope"))
    collision("clamshell_vs_holder", imported("installed_clamshell"), imported("installed_holder"))
    collision("retainer_vs_holder", imported("installed_bearing_retainer"), imported("installed_holder"))
    collision("servo_nuts_outside_insertion", imported("installed_holder"), imported("servo_nut_insertion_sweep"))
    collision("servo_nuts_vs_bearing", imported("reference_servo_nuts"), imported("reference_bearing"))
    collision("servo_nuts_vs_rotor", imported("reference_servo_nuts"), imported("installed_rotor_mg996r"))
    collision("servo_nuts_vs_maximum_case", imported("reference_servo_nuts"), imported("reference_maximum_envelope"))
    for name in ("installed_rotor_mg996r","installed_output_lid","reference_bearing",
                 "reference_output_nuts","reference_maximum_envelope"):
        collision("diagonal_hardware_vs_"+name, imported("reference_output_fasteners"), imported(name))
    for name in ("installed_bearing_retainer","reference_bearing","installed_rotor_mg996r"):
        collision("cover_nuts_vs_"+name, imported("reference_cover_nuts"), imported(name))
    collision("output_nuts_fit_rotor", imported("reference_output_nuts"), imported("installed_rotor_mg996r"))
    cross_bolts = "union(){"+"".join(
        f'translate([{x},{y},{d["face"]}]) cylinder(r=1.5,h={d["split"]-d["face"]},$fn=32);'
        for x,y in servo_v2.output_positions())+"}"
    for name in ("installed_rotor_mg996r", "reference_bearing",
                 "reference_output_fasteners", "reference_maximum_envelope"):
        collision("cross_nut_through_bolts_vs_"+name, cross_bolts, imported(name))
    for name in ("installed_holder","installed_bearing_retainer","installed_clamshell",
                 "reference_maximum_envelope","reference_bearing","installed_rotor_mg996r"):
        collision("bottom_full_length_bolts_vs_"+name,imported("bottom_through_bolts"),imported(name))
    for name in ("installed_bearing_retainer","reference_bearing","installed_rotor_mg996r"):
        collision("top_grid_nuts_vs_"+name,imported("reference_top_grid_nuts"),imported(name))
    for name in ("installed_holder","installed_bearing_retainer"):
        collision("extended_top_tip_reliefs_vs_"+name,imported("top_grid_tip_reliefs"),imported(name))
    check("tip_reliefs_clear_servo_nut_roofs",d["top_tip_relief_bottom"]>8.8 and
          d["top_tip_relief_bottom"]<d["face"]-0.5)
    runner_nut_sweep = "union(){"+"".join(
        f'translate([{x},{y},{d["output_join_nut_top"]-2.5-offset}]) '
        f'rotate([0,0,{30+math.degrees(math.atan2(y,x))}]) '
        f'cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);'
        for x,y in servo_v2.output_joins() for offset in (0,.5,1,2,4,8))+"}"
    collision("runner_M3_nuts_load_from_bottom",imported("installed_rotor_mg996r"),runner_nut_sweep)
    turned_runner_nuts = "union(){"+"".join(
        f'translate([{x},{y},{d["output_join_nut_top"]-2.5}]) '
        f'rotate([0,0,{60+math.degrees(math.atan2(y,x))}]) '
        f'cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);'
        for x,y in servo_v2.output_joins())+"}"
    collision("positive_control_runner_M3_nuts_cannot_spin",imported("installed_rotor_mg996r"),
              turned_runner_nuts,expect_empty=False,minimum_volume=.01)
    turned_nuts = "union(){"+"".join(
        f'translate([{x},{y},{d["servo_nut_bottom"]}]) rotate([0,0,60]) '
        f'cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);'
        for x,y in servo_v2.mount_positions())+"}"
    bars="union(){"+imported("installed_clamp_left")+imported("installed_clamp_right")+"}"
    collision("bar_nuts_fit",bars,imported("reference_servo_nuts"))
    collision("bar_nuts_insert_from_bottom",bars,imported("servo_nut_insertion_sweep"))
    for name in ("installed_holder","installed_bearing_retainer","installed_clamshell",
                 "reference_bearing","installed_rotor_mg996r"):
        collision("top_servo_screws_vs_"+name,imported("fastener_clearance_mg996r"),imported(name))
        collision("floating_bars_vs_"+name,bars,imported(name))
    for key in data["profiles"]:
        collision("floating_bars_vs_"+key,bars,imported("reference_case_"+key))
    check("nine_solids_in_default_print",len(mesh("3dpr").split(only_watertight=False))==9)
    for thickness in servo_v2.SPACERS:
        label=str(thickness).replace(".","d")
        pair=mesh(f"spacer_pair_{label}mm")
        check(f"spacer_{label}mm_pair",len(pair.split())==2 and pair.is_watertight and
              abs(pair.bounds[0,2])<.002 and abs(pair.extents[2]-thickness)<.002)
        # Move both bars with the ears; cover remains closed in these checks.
        dz=servo_v2.DEFAULT_SPACER-thickness
        moved_bars="union(){"+imported("installed_clamp_left",z=dz)+imported("installed_clamp_right",z=dz)+"}"
        collision(f"spacer_{label}mm_bars_clear_shell",moved_bars,imported("installed_clamshell"))
        collision(f"spacer_{label}mm_maximum_case_clears_shell",
                  imported("reference_maximum_envelope",z=dz),imported("installed_clamshell"))
        nut_top=d["servo_nut_bottom"]+2.4+dz
        tip=d["servo_head_top"]-d["servo_screw_length"]
        check(f"spacer_{label}mm_full_nut_engagement",tip<=nut_top-2.4,
              screw_tip_mm=tip,nut_top_mm=nut_top)
        for key in data["profiles"]:
            p=servo_v2.installed_profile(key,thickness)
            n=f"installed_rotor_{key}_spacer_{label}mm"
            m=mesh(f"female_rotor_{key}_spacer_{label}mm")
            check(f"{key}_{label}mm_runner_closed_on_bed",m.is_watertight and len(m.split())==1 and
                  abs(m.bounds[0,2])<.002 and abs(m.extents[2]-(d["split"]-p["runner_face"]))<.002)
            check(f"{key}_{label}mm_spline_engagement",
                  p["spline_top"]-max(p["spline_bottom"],p["runner_face"])>=2.5)
            for stationary_name in ("installed_holder","installed_bearing_retainer","reference_bearing"):
                collision(f"{key}_{label}mm_runner_vs_"+stationary_name,imported(n),imported(stationary_name))
            collision(f"{key}_{label}mm_case_vs_runner",imported(n),imported("reference_case_"+key,z=dz))
            collision(f"{key}_{label}mm_case_vs_shell",imported("installed_clamshell"),
                      imported("reference_case_"+key,z=dz))
    collision("positive_control_captive_nuts_cannot_spin", bars,
              turned_nuts, expect_empty=False, minimum_volume=.01)
    turned_cover_nuts = "union(){"+"".join(
        f'translate([{x},{y},{d["cover_screw_head"]+d["cover_screw_length"]-2.7}]) '
        f'rotate([0,0,30]) cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);'
        for x,y in servo_v2.cover_joins())+"}"
    collision("positive_control_cover_nuts_cannot_spin", imported("installed_bearing_retainer"),
              turned_cover_nuts, expect_empty=False, minimum_volume=.01)
    check("cover_nuts_have_M3_not_M6_passages", all(s["radius_name"] == "m3"
          for s in servo_v2.grid_layout("retainer") if s["reserved_for_cover"]))
    # These must FAIL geometrically, proving the harness detects collisions.
    collision("positive_control_case_interference", imported("installed_holder", z=-3),
              imported("reference_case_s3004"), expect_empty=False)
    collision("positive_control_bearing_interference", imported("reference_bearing", z=-.8),
              imported("installed_holder"), expect_empty=False)

    for drawing in servo_v2.DRAWINGS.values():
        t = oobb.get_default_thing(type="servo_v2_primitive_audit")
        kw = dict(option["oobb_details"], m="#")
        saved = copy.deepcopy(kw)
        drawing(t, **kw)
        check(drawing.__name__+"_kwargs_preserved", kw == saved)
        if drawing is servo_v2.draw_retainer:
            screws=[c for c in t["components_objects"] if "screw" in c["shape"]]
            check("four_flush_servo_countersinks",len(screws)==4 and all(
                c["shape"]=="oobb_screw_countersunk" and c["radius_name"]==servo_v2.SERVO_SCREW_PROFILE and
                c["pos"][2]==d["assembly_top"] for c in screws))
        if drawing is servo_v2.draw_output_lid:
            screws=[c for c in t["components_objects"] if "screw" in c["shape"]]
            check("topper_has_two_M3_countersinks",len(screws)==2 and all(
                  c["shape"]=="oobb_screw_countersunk" and c["radius_name"]=="m3" for c in screws))
            check("topper_has_no_embedded_connector_nuts",not any("nut" in c["shape"] for c in t["components_objects"]))
        for c in t["components_objects"]:
            if "nut" in c["shape"] or c.get("nut_include"):
                check(drawing.__name__+"_nut_overhang", c.get("overhang") is True)

    baseline = json.loads((root/"source_file/servo_v2_reference/v1_preservation.json").read_text())
    functions = {n.name:ast.dump(n, include_attributes=False) for n in ast.parse((root/"working_scad.py").read_text()).body
                 if isinstance(n, ast.FunctionDef) and n.name in baseline["functions"]}
    check("v1_drawing_functions_preserved", functions == baseline["functions"])
    check("v1_scad_stl_png_preserved", all(hashlib.sha256((root/name).read_bytes()).hexdigest() == digest
          for name, digest in baseline["files"].items()), files_checked=len(baseline["files"]))
    for path in (folder/"working.yaml", root/"parts_source"/folder.name/"working.yaml"):
        check("catalogue_parameters_"+path.parent.parent.name,
              yaml.safe_load(path.read_text())["oobb_details"] == option["oobb_details"])
    passed = all(r["passed"] for r in results)
    report = dict(passed=passed, checks=len(results), catalogue_id=folder.name,
                  datum=data["datum"], dimensions=d, results=results,
                  limitation="Mesh clearance validates these modelled envelopes. Estimated profile dimensions and friction/spline fit still require measurement and print coupons.")
    (report_dir/"report.json").write_text(json.dumps(report, indent=2))
    print(f"{'PASS' if passed else 'FAIL'}: {len(results)} checks; report: {report_dir/'report.json'}")
    assert passed, [r["test"] for r in results if not r["passed"]]


if __name__ == "__main__":
    main()
