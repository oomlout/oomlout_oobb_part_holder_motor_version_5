"""Validate exported calibration meshes and production roof transitions."""
import json
import math
from pathlib import Path

import trimesh
import yaml

import servo_v2
import servo_micro_v2
import working_oomp_populate
from validate_servo_v2 import contains


def main():
    root = Path(__file__).resolve().parent
    results = []

    def check(name, condition):
        results.append(dict(test=name, passed=bool(condition)))
        if not condition:
            print("FAIL", name, flush=True)

    def transition(name, mesh, roof, shaft, roof_radius, offset=(0, 0, 0)):
        half = 1.75 if shaft >= 3 else 1.25
        y = (half+min(roof_radius, 3.25 if shaft >= 3 else 2.75))/2
        def solid(x, y, z):
            return contains(mesh, [x+offset[0], y+offset[1], z+offset[2]])
        check(name+"_slot_open", not solid(0, y, roof+.15))
        check(name+"_slot_side_supported", solid(half+.12, 0, roof+.15))
        check(name+"_slot_closes_to_square", solid(0, y, roof+.45))
        check(name+"_square_corner_open", not solid(.9*half, .9*half, roof+.45))
        check(name+"_square_closes_to_round", solid(.9*half, .9*half, roof+.75))
        check(name+"_screw_passage_open", not solid(shaft/2-.05, 0, roof+.75))

    for style, design in (("standard", servo_v2), ("micro", servo_micro_v2)):
        option = next(o for o in working_oomp_populate.get_options()
                      if o["oobb_name"] == f"holder_motor_servo_{style}_adapter_fit_test")
        working_oomp_populate.apply_taxonomy(option)
        folder = root/"parts"/working_oomp_populate.build_oomp_id(option)
        mesh = trimesh.load_mesh(folder/"3dpr.stl")
        pieces = list(mesh.split())
        thing = yaml.safe_load((folder/"thing.yaml").read_text())["thing"]
        samples = thing["fit_test_samples"]
        check(style+"_fifteen_closed_samples", len(pieces) == len(samples) == 15 and
              all(p.is_watertight and p.volume > 0 for p in pieces))
        check(style+"_all_samples_on_bed", all(abs(p.bounds[0, 2]) < .002 for p in pieces))
        check(style+"_catalogue_height_matches_mesh", math.isclose(mesh.bounds[1, 2], option["depth"], abs_tol=.002))
        check(style+"_fits_146x103_layout", mesh.extents[0] <= 146.002 and mesh.extents[1] <= 103.002)
        profile = design.reference()["profiles"][option["socket_profile"]]
        shaft = profile["retention"]["clearance_diameter"]
        for sample in samples:
            name = style+"_"+sample["label"]
            x, y, _ = sample["pos"]
            piece = min(pieces, key=lambda p: abs(p.center_mass[0]-x)+abs(p.center_mass[1]-y))
            roof = sample["socket_roof_mm"]
            transition(name, piece, roof, shaft, sample["roof_diameter_mm"]/2, (x, y, 0))
            check(name+"_open_socket_on_bed", not contains(piece, [x+1, y, .05]))
            seat = sample["screw_seat_mm"]
            seat_r = (shaft+profile["retention"]["head_clearance_diameter"])/4
            check(name+"_screw_head_seat", contains(piece, [x+seat_r, y, seat-.1]) and
                  not contains(piece, [x+seat_r, y, seat+.1]))
            check(name+"_roof_land_preserved", math.isclose(seat-roof, 1.2, abs_tol=.001))
            # Check actual taper surface on each sample, away from the flare.
            face = profile.get("runner_face", design.dimensions()["face"])
            start = max(face, profile["spline_bottom"])-face
            z = start+.8
            radius = (sample["entry_diameter_mm"]+(sample["roof_diameter_mm"]-
                      sample["entry_diameter_mm"])*(z-start)/(roof-start))/2
            check(name+"_taper_dimension", not contains(piece, [x+radius-.04, y, z]) and
                  contains(piece, [x+radius+.04, y, z]))

        assembly = next(o for o in working_oomp_populate.get_options()
                        if o["oobb_name"] == f"holder_motor_servo_{style}_v2")
        working_oomp_populate.apply_taxonomy(assembly)
        folder = root/"parts"/working_oomp_populate.build_oomp_id(assembly)
        for key, p in design.reference()["profiles"].items():
            if style == "standard":
                p = servo_v2.installed_profile(key)
            rotor = trimesh.load_mesh(folder/("installed_rotor_"+key+".stl"))
            transition(style+"_production_"+key, rotor, p["spline_top"]+.35,
                       p["retention"]["clearance_diameter"], (p["spline_diameter"]-.08)/2)

    out = root/"outputs/servo_adapter_fit_v1"
    out.mkdir(parents=True, exist_ok=True)
    passed = all(r["passed"] for r in results)
    (out/"report.json").write_text(json.dumps(dict(passed=passed, checks=len(results), results=results), indent=2))
    print(f'{"PASS" if passed else "FAIL"}: {len(results)} adapter fit checks', flush=True)
    assert passed, [r["test"] for r in results if not r["passed"]]


if __name__ == "__main__":
    main()
