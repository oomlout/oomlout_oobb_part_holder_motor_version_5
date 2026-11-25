"""Export and validate NEMA17 assemblies, their full grids and actual mesh fits.

Run --export after a SCAD-only build to render independent sources in parallel.
Normal action_make_nema17.py also exports every file through scad_help.
"""
import argparse
import copy
import json
import math
import shutil
import subprocess
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

import numpy as np
import oobb
import trimesh
import yaml

import scad_help
import working_scad as drawings
from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id
from validate_tt_tight import contains

ROOT = Path(__file__).resolve().parent


def local_mesh(folder, name, placement):
    mesh = trimesh.load_mesh(folder / (name + ".stl"))
    matrix = trimesh.transformations.euler_matrix(*np.radians(placement["print_rot"]))
    matrix[:3, 3] = placement["print_pos"]
    mesh.apply_transform(np.linalg.inv(matrix))
    return mesh


def exact_empty(folder, label, expression):
    source = folder / ("check_" + label + ".scad")
    target = source.with_suffix(".stl")
    source.write_text(expression, encoding="utf-8")
    result = subprocess.run([shutil.which("openscad"), "--backend=Manifold", "-o",
                             str(target), str(source)], capture_output=True, text=True,
                            timeout=180, creationflags=getattr(subprocess, "CREATE_NO_WINDOW", 0))
    log = result.stdout + result.stderr
    source.with_suffix(".log").write_text(log, encoding="utf-8")
    assert "ERROR:" not in log and "WARNING:" not in log, log
    if "Current top level object is empty" in log:
        return 0.0
    assert result.returncode == 0 and target.is_file(), log
    mesh = trimesh.load_mesh(target)
    assert abs(mesh.volume) < 1e-5, (label, mesh.volume)
    return float(mesh.volume)


def validate(option):
    apply_taxonomy(option)
    p = option["oobb_details"]
    folder = ROOT / "parts" / build_oomp_id(option)
    for path in [folder / "working.yaml", ROOT / "parts_source" / folder.name / "working.yaml"]:
        assert yaml.safe_load(path.read_text())["oobb_details"] == p, path
    original = copy.deepcopy(p)
    thing = oobb.get_default_thing(type="nema17_validation")
    drawings.get_holder_motor_stepper_nema17_assembly(thing, **p)
    assert p == original
    assert p["coupler_flange_diameter_mm"] == 22
    assert p["coupler_pcd_mm"] == 16
    nut_pockets = [c for c in thing["components_objects"]
                   if c.get("shape") == "oobb_nut" and c.get("type") in ["negative", "n"]]
    assert nut_pockets and all(c.get("overhang") is True for c in nut_pockets), "Nut print relief disabled"
    audit = thing["grid_hole_audit"]
    (folder / "grid_hole_audit.json").write_text(json.dumps(audit, indent=2) + "\n")
    supported = p["support"] != "direct"
    mesh = trimesh.load_mesh(folder / "3dpr.stl")
    solids = mesh.split(only_watertight=False)
    square_clamshell = p["support"] == "6810" or (p["support"] == "6705" and p["output_style"] == "square_3x3")
    assert len(solids) == (6 if p["support"] == "6810" else 10 if square_clamshell else 9 if supported else 2), (folder.name, len(solids))
    assert all(s.is_watertight and s.is_winding_consistent and s.volume > 0 for s in solids)
    assert all(abs(s.bounds[0, 2]) < 1e-5 for s in solids), "Piece not on print bed"
    assert np.isclose(mesh.extents[2], p["journal_length_mm"] + 4 if p["support"] == "6810" else option["depth"], atol=.03)
    pieces = {name: local_mesh(folder, name, placement)
              for name, placement in thing["piece_placements"].items()}
    for name, part in pieces.items():
        assert len(part.split(only_watertight=False)) == 1, name
    checked = 0
    counts = {}
    # Every included grid hole is checked in the exported mesh at two depths.
    # An adjacent material witness distinguishes a real hole from missing stock.
    for name, records in audit.items():
        part = pieces[name]
        depths = {"holder": [.5, 2.5] if p["support"] == "6810" else [1, 5], "bearing_housing": [1, 3],
                  "bearing_cap": [.5, 3.5] if p["support"] == "6705" else [.5, 5.5],
                  "hub": [7.5, 9.7], "output_lid": [.3, 3.7] if p["support"] == "6810" else [.3, 2.7],
                  "output": ([.3, 2.7] if p["support"] == "6705" else [p["journal_length_mm"] + .3, p["journal_length_mm"] + 3.7] if p["support"] == "6810" else
                             [4 if supported else 1, part.bounds[1, 2] - .5])}
        counts[name] = {}
        for rec in records:
            key = rec["face"] + ":" + rec["radius_name"]
            counts[name].setdefault(key, {"included": 0, "excluded": 0})
            counts[name][key]["included" if rec["included"] else "excluded"] += 1
            if not rec["included"]:
                assert rec["exclusions"], rec
                continue
            radius = oobb.gv("hole_radius_" + rec["radius_name"], "3dpr")
            for z in depths[name]:
                point = np.array([rec["x"], rec["y"], z], dtype=float)
                assert not contains(part, point), (name, rec, point, "blocked hole")
                # Embedded nuts widen the hole on a split face. Probe both
                # shaft and nut perimeter, at several angles, for retained stock.
                witnesses = [point + [r * math.cos(a), r * math.sin(a), 0]
                             for r in [radius + .15, 3.65, 6.1]
                             for a in np.arange(8) * math.pi / 4]
                assert any(contains(part, w) for w in witnesses), (name, rec, "missing hole wall")
            checked += 1
    for x in [-15.5, 15.5]:
        for y in [-15.5, 15.5]:
            shaft_z = .5 if p["support"] == "6810" else 3
            top_z = 2.8 if p["support"] == "6810" else 5.8
            assert not contains(pieces["holder"], [x, y, shaft_z])
            assert contains(pieces["holder"], [x + 1.95, y, shaft_z])
            assert not contains(pieces["holder"], [x + 3.2, y, top_z]), "Missing flush countersink"
            assert contains(pieces["holder"], [x + 2.4, y, shaft_z]), "Countersink removed shaft support"
    assert not contains(pieces["holder"], [11.1, 0, 1])
    assert contains(pieces["holder"], [11.4, 0, 1])
    # Four 16 mm-PCD holes remain distinct from the 15 mm output grid.
    for x, y in drawings.nema17_flange_centers(**p):
        assert np.isclose(math.hypot(x, y), 8)
        if p["support"] != "6810" and (p["support"] != "6705" or square_clamshell):
            assert not contains(pieces["output"], [x, y, 2 if square_clamshell else 4])
        if p["support"] == "6705":
            assert not contains(pieces["hub"], [x, y, 3])
    hardware_checks = {}
    for reference in ["motor", "coupler"] + (["bearing", "stack_fasteners"] if supported else []):
        expression = f'intersection() {{ include <assembled_local.scad>; include <reference_{reference}.scad>; }}'
        if reference == "coupler" and p["support"] == "6810":
            # Only the explicit .1 mm diametral barrel/disc press fit may overlap.
            expression = 'difference() { ' + expression + ' translate([0,0,23]) cylinder(r=5.01,h=4,$fn=120); }'
        hardware_checks[reference] = exact_empty(folder, reference, expression + "\n")
    if supported:
        bore, od, bw, shoulder, lip = drawings.NEMA17_BEARINGS[p["support"]]
        housing = pieces["bearing_housing"]
        hub = pieces["output"] if p["support"] == "6810" else pieces["hub"]
        assert not contains(housing, [(od + .15) / 2, 0, 3])
        assert contains(housing, [(od + .5) / 2, 0, 3])
        assert contains(housing, [(lip + .4) / 2, 0, 1])
        assert not contains(housing, [(lip - .4) / 2, 0, 1])
        assert contains(hub, [(bore - .3) / 2, 0, 3])
        assert not contains(hub, [bore / 2, 0, 3])
        if p["support"] != "6810":
            assert contains(hub, [(shoulder - .3) / 2, 0, 1])
        # A circular sweep envelope covers every output angle, including square
        # output corners. It clears the four 12 mm spacers radially, and the
        # stationary cap axially by .5 mm.
        moving_radius = np.linalg.norm(pieces["output"].vertices[:, :2], axis=1).max()
        post_radius = math.hypot((p["width"] - 1) * 7.5, (p["height"] - 1) * 7.5)
        # Compact nuts sit below the cap; only the 6 mm screw shafts extend
        # into the output's axial range. Spacers end well below the square.
        hardware_radius = 3 if p["height"] == 3 else 6
        assert post_radius - hardware_radius - moving_radius > (1 if p["height"] == 3 else 4)
        assert (thing["piece_placements"]["output"]["assembly_z"] + (p["journal_length_mm"] if p["support"] == "6810" else 0)
                - (thing["piece_placements"]["bearing_cap"]["assembly_z"] + pieces["bearing_cap"].extents[2])) >= .49
        # Exact printed rotor vs stationary housing intersections at useful angles.
        # Import inverse-print-transformed individual mesh files prepared below.
        for angle in [0, 22.5, 45, 90]:
            expression = f'''intersection() {{
  union() {{ include <stationary_local.scad>; include <reference_stack_fasteners.scad>; }}
  rotate([0,0,{angle}]) {{ include <rotating_local.scad>; }}
}}'''
            hardware_checks["rotor_" + str(angle)] = exact_empty(folder, "rotor_" + str(angle), expression)
    captured_nuts = 0
    if p["support"] == "6810":
        lower, cap = pieces["bearing_housing"], pieces["bearing_cap"]
        assert np.isclose(pieces["holder"].extents[2], 3)
        assert np.isclose(thing["piece_placements"]["bearing_housing"]["assembly_z"], 3)
        assert "spacer" not in thing["additional_outputs"]
        assert "hub" not in thing["additional_outputs"]
        assert "coupler_sleeve" not in thing["additional_outputs"]
        assert not (folder / "coupler_sleeve.stl").exists()
        assert np.isclose(thing["piece_placements"]["output"]["assembly_z"], 6.6)
        assert np.isclose(lower.extents[2], 6) and np.isclose(cap.extents[2], 6)
        assert np.isclose(thing["piece_placements"]["bearing_cap"]["assembly_z"] + cap.extents[2]
                          - thing["piece_placements"]["bearing_housing"]["assembly_z"], 12)
        # Mirror seat halves give a 7.2 mm pocket centred on the split.
        for mesh_half, open_z, lip_z in [(lower, 4, 1), (cap, 2, 5)]:
            assert not contains(mesh_half, [32.55, 0, open_z])
            assert contains(mesh_half, [32.75, 0, open_z])
            assert contains(mesh_half, [32, 0, lip_z])
            assert not contains(mesh_half, [31.2, 0, lip_z])
        for x, y in drawings.nema17_6810_shell_joins():
            assert not contains(lower, [x + 3, y, 4.5]), "Missing shell nut pocket"
            assert contains(lower, [x + 3, y, 2.8]), "Missing shell nut floor"
            assert contains(cap, [x + 3, y, .2]), "Missing shell nut roof"
            assert not contains(cap, [x + 3.2, y, 5.8]), "Missing flush shell countersink"
            captured_nuts += 1
        for x, y in drawings.nema17_6810_plate_joins():
            assert not contains(pieces["holder"], [x + 3.2, y, .2]), "Missing underside plate countersink"
            assert contains(pieces["holder"], [x + 2.4, y, 2.5])
            assert not contains(lower, [x + 3, y, 4.5])
            assert contains(lower, [x + 3, y, 2.8])
            assert contains(cap, [x + 3, y, .2])
            captured_nuts += 1
        perimeter = drawings.nema17_6810_perimeter_nuts()
        assert len(perimeter) == 24
        for x, y in perimeter:
            assert not contains(lower, [x + 5, y, 4.5])
            assert not contains(cap, [x + 5, y, 1.5])
            assert contains(lower, [x + 5, y, 3])
            assert contains(cap, [x + 5, y, 3])
            for name in ["holder", "bearing_housing", "bearing_cap"]:
                assert any(r["included"] and r["radius_name"] == "m6" and r["x"] == x and r["y"] == y for r in audit[name])
            captured_nuts += 1
        journal = pieces["output"]
        length = p["journal_length_mm"]
        assert np.isclose(length, 22.4)
        below_tube = journal.vertices[journal.vertices[:, 2] < 5.99]
        assert np.linalg.norm(below_tube[:, :2], axis=1).max() <= 24.926, "Lower retaining lip remains"
        # Probe between the faceted journal OD and tube ID ($fn=50).
        for z in [.3, 3, 10, 20]:
            assert contains(journal, [0, 24.8, z])
            assert not contains(journal, [0, 25.0, z])
        assert np.isclose(p["drive_tube_length_difference_mm"], 6)
        assert np.isclose(length - p["drive_tube_length_difference_mm"], 16.4)
        assert np.isclose((62.8 - 59.8) / 2, p["drive_tube_holder_radial_clearance_mm"])
        for z in [6.1, 10, 20]:
            assert not contains(journal, [0, 25.0, z]), "Tube ID gap lost"
            assert contains(journal, [0, 25.2, z]), "Tube ID oversized"
            assert contains(journal, [0, 29.8, z]), "Missing outer drive tube"
            assert not contains(journal, [0, 30, z]), "Tube exceeds 59.8 OD"
        assert not contains(journal, [0, 28, 5.9]), "Tube is not 6 mm shorter"
        assert np.isclose(6.6 + 6 - 12.5, .1), "Tube touches bearing face"
        nut_lid = pieces["coupler_nut_lid"]
        assert np.isclose(nut_lid.extents[2], 4)
        assert np.isclose(p["coupler_nut_disc_interference_mm"], .1)
        assert not contains(nut_lid, [0, 4.9, 2]), "Disc barrel bore too small"
        assert contains(nut_lid, [0, 4.975, 2]), "Disc lacks barrel interference"
        assert np.isclose(p["shaft_extension_mm"] - 17, 7)
        assert 22 + 1.5 < p["shaft_extension_mm"], "Mid-barrel grub screw beyond shaft end"
        for x, y in drawings.nema17_6810_rotor_joins(**p):
            # Radial witness inside the hex recess, away from the barrel bore.
            ux, uy = x / 8, y / 8
            assert not contains(nut_lid, [5 * ux, 5 * uy, 2]), "Fragile barrel/nut web remains"
            assert not contains(nut_lid, [x + 2 * ux, y + 2 * uy, 2.5])
            assert contains(nut_lid, [x + 2 * ux, y + 2 * uy, .2]), "Missing nut disc floor"
            assert not contains(journal, [x, y, length + 2])
            assert not contains(pieces["output_lid"], [x + 3.2, y, 3.8])
            captured_nuts += 1
        central = drawings.nema17_6810_central_m6_nuts()
        assert len(central) == 8 and (0, 0) not in central
        for x, y in central:
            assert not contains(journal, [x + 5, y, length + 2.4])
            assert contains(journal, [x + 5, y, length + 1])
            assert not contains(pieces["output_lid"], [x + 5, y, 1.5])
            assert contains(pieces["output_lid"], [x + 5, y, 3.1])
            for name in ["output", "output_lid"]:
                assert any(r["included"] and r["radius_name"] == "m6" and r["x"] == x and r["y"] == y for r in audit[name])
            captured_nuts += 1
        rotor_fasteners = []
        lid_nut_access = []
        for x, y in drawings.nema17_6810_output_lid_joins():
            for z in [.2, 2.5, 3.8]:
                assert contains(journal, [x + 3, y, length + z]), "Embedded joining nut pocket remains"
            radial = math.hypot(x, y)
            for z in [6.1, 10, length - .1]:
                assert not contains(journal, [x - 4*x/radial, y - 4*y/radial, z]), "Blocked bottom nut clearance"
            assert contains(pieces["output_lid"], [x + 3, y, .2])
            assert not contains(pieces["output_lid"], [x + 3.2, y, 3.8]), "Missing lid countersink"
            assert contains(pieces["output_lid"], [x + 2, y, .5]), "Missing screw shaft wall"
            rotor_fasteners.append(f'translate([{x},{y},25]) cylinder(r=1.5,h=12,$fn=32);')
            rotor_fasteners.append(f'translate([{x},{y},35.5]) cylinder(r1=1.5,r2=3,h=1.5,$fn=32);')
            rotor_fasteners.append(f'translate([{x},{y},26.6]) cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);')
            lid_nut_access.append(f'translate([{x},{y},15.1]) cylinder(r=4.4,h=13.89,$fn=50);')
        hardware_checks["output_lid_bottom_access"] = exact_empty(folder, "output_lid_bottom_access",
            'intersection() { include <assembled_local.scad>; union() { ' + '\n'.join(lid_nut_access) + ' } }')
        for i, (x, y) in enumerate(drawings.nema17_6810_rotor_joins(**p)):
            rotor_fasteners.append(f'translate([{x},{y},22]) cylinder(r=1.5,h=15,$fn=32);')
            rotor_fasteners.append(f'translate([{x},{y},35.5]) cylinder(r1=1.5,r2=3,h=1.5,$fn=32);')
            rotor_fasteners.append(f'translate([{x},{y},24.6]) rotate([0,0,{p["coupler_angle_deg"]+i*90+30}]) cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);')
        for x, y in central:
            rotor_fasteners.append(f'translate([{x},{y},30.25]) cylinder(r={10/math.sqrt(3)},h=5,$fn=6);')
        hardware_checks["rotor_fasteners"] = exact_empty(folder, "rotor_fasteners",
            'intersection() { include <assembled_local.scad>; union() { ' + '\n'.join(rotor_fasteners) + ' } }')
        for lift in [0, 5, 14]:
            hardware_checks["journal_lift_" + str(lift)] = exact_empty(folder, "journal_lift_" + str(lift),
                f'intersection() {{ union() {{ include <stationary_local.scad>; include <reference_bearing.scad>; }} translate([0,0,{lift}]) {{ include <rotating_local.scad>; }} }}')
        for tool_z in [21.5, 22]:
            hardware_checks["grub_tool_access_" + str(tool_z)] = exact_empty(folder, "grub_tool_access_" + str(tool_z), f'''intersection() {{
  union() {{
    include <holder.scad>;
    translate([0,0,3]) {{ include <bearing_housing.scad>; }}
    translate([0,0,29]) rotate([180,0,0]) {{ include <bearing_cap.scad>; }}
    include <rotating_local.scad>;
    include <reference_bearing.scad>;
  }}
  translate([5.2,0,{tool_z}]) rotate([0,90,0]) cylinder(r=.95,h=60,$fn=32);
}}''')
    if p["support"] == "6705":
        assert np.isclose(pieces["bearing_housing"].extents[2], 4.1)
        assert np.isclose(pieces["bearing_cap"].extents[2], 4.1)
        cap = pieces["bearing_cap"]
        assert not contains(cap, [16.05, 0, 1])
        assert contains(cap, [15.5, 0, 3])
        if p["height"] == 3:
            for x in [-30, 30]:
                for y in [-15, 15]:
                    assert not contains(cap, [x + 5, y, 3.8]), "Stack nut not recessed"
                    assert contains(pieces["bearing_housing"], [x + 5, y, 2.4]), "Missing nut seat floor"
                    assert not contains(pieces["bearing_housing"], [x + 5, y, 3]), "Stack nut pocket not continued across split"
    if supported:
        lower_name, upper_name, split_local = ("output", "output_lid", p["journal_length_mm"] + 4 if p["support"] == "6810" else 3) if square_clamshell else ("hub", "output", 10.2)
        nuts = drawings.nema17_6810_output_nuts() if p["support"] == "6810" else drawings.nema17_6705_output_nuts("square_3x3" if square_clamshell else "circle")
        if square_clamshell:
            if p["support"] != "6810":
                nuts += drawings.nema17_flange_centers(**p)
            assert thing["piece_placements"]["output_lid"]["assembly_z"] > thing["piece_placements"]["bearing_cap"]["assembly_z"] + pieces["bearing_cap"].extents[2]
            assert sum(v["role"] == "rotating" for v in thing["piece_placements"].values()) == 3
        else:
            assert sum(v["role"] == "rotating" for v in thing["piece_placements"].values()) == 2
        for x, y in nuts:
            assert not contains(pieces[lower_name], [x + 3, y, split_local - .7])
            assert not contains(pieces[upper_name], [x + 3, y, .7])
            assert contains(pieces[lower_name], [x + 3, y, split_local - 1.7]), "No bottom nut skin"
            assert contains(pieces[upper_name], [x + 3, y, 1.7]), "No top nut skin"
            captured_nuts += 1
    assembled = trimesh.load_mesh(folder / "assembled_local.stl")
    assert len(assembled.split(only_watertight=False)) == (3 if p["support"] == "6810" else 2), "Unexpected assembled connected parts"
    result = dict(id=folder.name, passed=True, watertight_print_solids=len(solids),
                  print_bounds_mm=mesh.bounds.tolist(), checked_grid_holes=checked,
                  grid_counts=counts, intersection_volumes_mm3=hardware_checks,
                  captured_nuts_checked=captured_nuts, flush_motor_countersinks=4,
                  nut_pockets_with_overhang=len(nut_pockets),
                  external_output_joining_nuts=4 if p["support"] == "6810" else 0,
                  physical_fit_tested=False)
    (folder / "validation.json").write_text(json.dumps(result, indent=2) + "\n")
    print(f'PASS {folder.name}: {len(solids)} print solids, {checked} grid holes', flush=True)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--export", action="store_true")
    parser.add_argument("--filter", default="")
    args = parser.parse_args()
    options = [p for p in get_options() if p["motor_style"] == "nema17"]
    for option in options:
        apply_taxonomy(option)
    active = {part["id"] for part in drawings.get_parts({})
              if part["oobb_details"].get("motor_style") == "nema17"}
    assert active == {build_oomp_id(p) for p in options}, "Retired variants remain active"
    options = [p for p in options if args.filter in build_oomp_id(p)]
    assert options
    if args.export:
        paths = [path for p in options for path in (ROOT / "parts" / build_oomp_id(p)).glob("*.scad")
                 if not path.name.startswith("check_")]
        with ThreadPoolExecutor(max_workers=3) as pool:
            for path, _ in zip(paths, pool.map(scad_help.export_motor_outputs, map(str, paths))):
                print("EXPORTED " + path.parent.name + "/" + path.name, flush=True)
    results = [validate(p) for p in options]
    report = ROOT / "source_file/nema17_reference" / ("validation" + ("_filtered" if args.filter else "") + ".json")
    report.write_text(json.dumps(results, indent=2) + "\n")


if __name__ == "__main__":
    main()
