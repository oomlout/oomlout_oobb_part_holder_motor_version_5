"""Validate the native version 5 redraws after action_make_scad_no_stl.py.

Checks catalogue consistency, actual mesh dimensions, watertight solids, grid
hole fits and debug-attribute propagation. The original SCAD is retained as
historical provenance; native hardware geometry intentionally differs from it.
"""
import argparse
import copy
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

import numpy as np
import oobb
import trimesh
import yaml

import working_scad
from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id

ROOT = Path(__file__).resolve().parent
REFERENCE = ROOT / "source_file" / "migration_reference"
OUTPUT = ROOT / "outputs" / "native_validation"


def run_scad(executable, source, output, *, preview=False):
    arguments = [executable, "--backend=Manifold", "-o", str(output)]
    if preview:
        arguments += ["--render", "--autocenter", "--viewall", "--imgsize=900,700",
                      "--colorscheme=Tomorrow", "--camera=0,0,0,55,0,25,180"]
    arguments.append(str(source))
    process = subprocess.run(arguments, capture_output=True, text=True, timeout=180,
                             creationflags=getattr(subprocess, "CREATE_NO_WINDOW", 0))
    log = process.stdout + process.stderr
    output.with_suffix(output.suffix + ".log").write_text(log, encoding="utf-8")
    if process.returncode or "ERROR:" in log or "WARNING:" in log or not output.is_file():
        raise RuntimeError(f"OpenSCAD failed for {source}:\n{log}")


def check_debug_attributes(option):
    """Exercise **kwargs through the real component library and SCAD serializer."""
    parameters = copy.deepcopy(option["oobb_details"])
    parameters["type"] = "debug_check"
    parameters["m"] = "#"
    original = copy.deepcopy(parameters)
    thing = oobb.get_default_thing(**parameters)
    getattr(working_scad, "get_" + option["oobb_name"])(thing, **parameters)
    assert parameters == original, "Drawing mutated the caller's kwargs"
    assert all(item.get("m") == "#" for item in thing["components_objects"])
    debug_source = OUTPUT / (option["oobb_name"] + "_debug.scad")
    oobb.opsc_make_object(str(debug_source), thing["components"], mode="3dpr", save_type="none")
    text = debug_source.read_text()
    assert "#" in text, "Highlight modifier did not reach SCAD"
    assert "#" not in (ROOT / "parts" / build_oomp_id(option) / "3dpr.scad").read_text()


def validate_part(option, executable, previews):
    part_id = build_oomp_id(option)
    folder = ROOT / "parts" / part_id
    name = option["oobb_name"].removesuffix("_legacy")
    source = folder / "3dpr.scad"
    navigation = ROOT / "navigation_oobb"
    for index in range(1, 14):
        value = option.get(f"taxonomy_{index}")
        if value:
            navigation /= str(value)
    for yaml_path in [ROOT / "parts_source" / part_id / "working.yaml",
                      folder / "working.yaml", navigation / "working.yaml"]:
        metadata = yaml.safe_load(yaml_path.read_text(encoding="utf-8"))
        assert build_oomp_id(metadata) == part_id, yaml_path
        for key in ["width", "height", "depth"]:
            assert metadata["oobb_details"][key] == option[key], yaml_path
        assert metadata["oobb_details"]["grid_pitch_mm"] == 15, yaml_path
    assert (navigation / "3dpr.scad").read_bytes() == source.read_bytes()

    run_scad(executable, source, folder / "3dpr.stl")
    mesh = trimesh.load_mesh(folder / "3dpr.stl")
    assert mesh.is_watertight and mesh.is_winding_consistent and mesh.volume > 0, name
    is_hub = name == "bearing_plate_motor_servo_standard_screws"
    is_plate = name.startswith("bearing_plate") and not is_hub
    top_z = (0.5 if is_hub else -15 if name.endswith("_bottom") else
             option["depth"] if name == "holder_motor_gear_tt" else 0)
    center_x = (-7.5 if name in ["holder_motor_gear_tt", "holder_motor_servo_micro"] else
                -15 if name.startswith("holder_motor_servo_standard") else 0)
    nominal_x = 22 if is_hub else option["width"] * 15 - 1
    nominal_y = 22 if is_hub else option["height"] * 15 - 1
    expected_bounds = [[center_x - nominal_x / 2, -nominal_y / 2, top_z - option["depth"]],
                       [center_x + nominal_x / 2, nominal_y / 2, top_z]]
    # Circular faceting at $fn=50 shortens the Y envelope by up to 0.044 mm.
    assert np.allclose(mesh.bounds, expected_bounds, atol=0.05), (name, mesh.bounds)
    assert np.isclose(mesh.extents[2], option["depth"], atol=0.001), name
    solids = mesh.split(only_watertight=False)
    expected_solids = 2 if is_plate else 1
    assert len(solids) == expected_solids, (name, len(solids))
    assert all(body.is_watertight and body.volume > 0 for body in solids), name

    # Measure an unobstructed grid hole in the actual exported mesh. This
    # catches wrong named radii or inherited depth/position attributes.
    measured_holes = {}
    if not is_hub:
        samples = [(1, 1, "m6")]
        if name.startswith("holder_motor"):
            samples.append((1, 1.5, "m3") if "micro" in name else (1.5, 1, "m3"))
        for column, row, radius_name in samples:
            center = [center_x + (column - (option["width"] + 1) / 2) * 15,
                      (row - (option["height"] + 1) / 2) * 15]
            radius = np.linalg.norm(mesh.vertices[:, :2] - center, axis=1).min()
            expected = oobb.gv("hole_radius_" + radius_name, "3dpr")
            assert np.isclose(radius, expected, atol=0.002), (name, radius_name, radius, expected)
            measured_holes[radius_name] = float(radius)
    if previews:
        run_scad(executable, source, folder / "3dpr.png", preview=True)
    result = dict(id=part_id, drawing=name, depth_mm=option["depth"],
                  bounds_mm=mesh.bounds.tolist(), volume_mm3=float(mesh.volume),
                  solids=len(solids), watertight=bool(mesh.is_watertight),
                  grid_hole_radii_mm=measured_holes, debug_kwargs_passed=True, passed=True)
    print(f"PASS {name}: {len(solids)} solid(s), {mesh.extents[2]:g} mm depth", flush=True)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--previews", action="store_true")
    parser.add_argument("--filter", default="", help="Match a drawing name")
    args = parser.parse_args()
    executable = shutil.which("openscad")
    if not executable:
        raise RuntimeError("OpenSCAD is not on PATH")
    OUTPUT.mkdir(parents=True, exist_ok=True)
    for entry in json.loads((REFERENCE / "manifest.json").read_text()):
        source = REFERENCE / (entry["drawing"] + ".scad")
        assert hashlib.sha256(source.read_bytes()).hexdigest() == entry["sha256"], source
    options = [option for option in get_options()
               if args.filter in option["oobb_name"] and option.get("legacy_id")]
    if not options:
        raise ValueError("Filter matched no parts")
    # The Python geometry serializer has global state; keep drawing sequential.
    for option in options:
        apply_taxonomy(option)
        check_debug_attributes(option)
    with ThreadPoolExecutor(max_workers=4) as executor:
        results = list(executor.map(lambda option: validate_part(option, executable, args.previews), options))
    report = OUTPUT / ("report.json" if not args.filter else "report_filtered.json")
    report.write_text(json.dumps(results, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
