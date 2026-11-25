"""Check real mesh fits and preservation of the two legacy drawing functions."""
import ast
import copy
import json
import shutil
import subprocess
from pathlib import Path

import numpy as np
import oobb
import trimesh
import yaml

import working_scad
from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id


def contains(mesh, point):
    # Solid-angle winding test on the exported triangles; no rtree dependency.
    a, b, c = np.moveaxis(mesh.triangles - np.array(point), 1, 0)
    la, lb, lc = [np.linalg.norm(v, axis=1) for v in (a, b, c)]
    def dot(u, v):
        return np.einsum("ij,ij->i", u, v)
    numerator = dot(a, np.cross(b, c))
    denominator = la * lb * lc + dot(a, b) * lc + dot(b, c) * la + dot(c, a) * lb
    return abs(np.sum(2 * np.arctan2(numerator, denominator))) > 2 * np.pi


def main():
    root = Path(__file__).resolve().parent
    options = [option for option in get_options() if option["variant"].startswith("tight")]
    assert len(options) == 1, "The complete TT holder must have one catalogue entry"
    option = options[0]
    apply_taxonomy(option)
    output = root / "parts" / build_oomp_id(option)
    active = [part for part in working_scad.get_parts({})
              if part["oobb_details"].get("variant", "").startswith("tight")]
    assert len(active) == 1 and active[0]["id"] == output.name
    for path in [output / "working.yaml", root / "parts_source" / output.name / "working.yaml"]:
        metadata = yaml.safe_load(path.read_text())
        assert metadata["oobb_details"] == option["oobb_details"]
    parameters = copy.deepcopy(option["oobb_details"])
    parameters["m"] = "#"
    saved = copy.deepcopy(parameters)
    assembly = oobb.get_default_thing(type="debug_assembly")
    working_scad.get_holder_motor_gear_tt_assembly(assembly, **parameters)
    assert parameters == saved and len(assembly["components"]) == 5
    assert all(c.get("m") == "#" for c in assembly["components_objects"])
    assert set(assembly["additional_outputs"]) == {
        "holder", "bearing_plate", "hub_lid", "clamshell", "wire_lid",
        "assembly", "exploded", "assembled_printed", "reference_motor", "reference_bearing"}
    # Exercise a catalogue placement edit through the actual drawing dispatch.
    parameters["pieces"]["wire_lid"]["print_pos"][0] += 3
    moved = oobb.get_default_thing(type="editable_layout_check")
    working_scad.get_holder_motor_gear_tt_assembly(moved, **parameters)
    assert moved["components"][-1]["pos"][0] == assembly["components"][-1]["pos"][0] + 3
    assert moved["components"][:-1] == assembly["components"][:-1]
    original = json.loads((root / "source_file/tt_reference/legacy_function_ast.json").read_text())
    for node in ast.parse((root / "working_scad.py").read_text()).body:
        if isinstance(node, ast.FunctionDef) and node.name.endswith("_tt_legacy"):
            node.name = node.name.removesuffix("_legacy")
            assert ast.dump(node, include_attributes=False) == original.pop(node.name)
    assert not original, "Missing legacy drawing"

    reference = yaml.safe_load((root / "source_file/tt_reference/mechanical.yaml").read_text())
    assert reference["dimensions"]["mounting_pitch_y_mm"] == 17.6
    assert reference["dimensions"]["shaft_diameter_mm"] is None
    results = []
    screws = []
    meshes = {}
    for family, piece in option["pieces"].items():
        folder = output
        mesh = trimesh.load_mesh(folder / (family + ".stl"))
        solids = sorted(mesh.split(only_watertight=False), key=lambda m: -m.volume)
        expected_solids = 2 if family in ["holder", "bearing_plate"] else 1
        assert len(solids) == expected_solids, family
        assert all(m.is_watertight and m.is_winding_consistent and m.volume > 0 for m in solids)
        size = {"holder": [74, 44, 7], "bearing_plate": [44, 44, 6],
                "hub_lid": [22.7, 22.7, 5], "clamshell": [74, 44, 23.5],
                "wire_lid": [28, 21.5, 2]}[family]
        assert np.allclose(mesh.extents, size, atol=0.05), (family, mesh.extents)
        assert np.isclose(mesh.bounds[0, 2], 0), family
        if family == "holder":
            for m in solids:
                transform = np.diag([1., -1., -1., 1.])
                transform[2, 3] = 7
                m.apply_transform(transform)
        if family == "clamshell":
            solids[0].apply_translation([0, 0, -23.5])
        meshes[family] = solids

        parameters = copy.deepcopy(option["oobb_details"])
        parameters.pop("pieces")
        parameters.update(copy.deepcopy(piece))
        parameters["m"] = "#"
        saved = copy.deepcopy(parameters)
        drawing = oobb.get_default_thing(type="debug_check")
        getattr(working_scad, "get_" + piece["oobb_name"])(drawing, **parameters)
        assert saved == parameters
        assert all(c.get("m") == "#" for c in drawing["components_objects"])
        if family == "clamshell":
            wire = [c for c in drawing["components_objects"] if c["shape"] == "oobb_wire"]
            assert len(wire) == 1 and wire[0]["wire_type"] == "motor"
            assert wire[0]["rot"] == [0, 0, 0] and wire[0]["plate"] is False
            assert wire[0]["depth"] == 3.8 and wire[0]["cutout_depth"] == 2.8
        for c in drawing["components_objects"]:
            if c["shape"] not in ["oobb_screw_countersunk", "oobb_screw_socket_cap"]:
                continue
            assert c["depth"] > 0 and c["depth"] % 5 == 0, (family, c)
            assert c["shape"] != "oobb_screw_countersunk" or c["depth"] <= 25
            screws.append(dict(family=family, shape=c["shape"], length_mm=c["depth"],
                               radius_name=c["radius_name"], pos=c["pos"]))
        scad = (folder / (family + ".scad")).read_text()
        assert "import(" not in scad and "use <" not in scad
        results.append(dict(id=folder.name, piece=family, watertight=True, solids=expected_solids,
                            bounds_mm=mesh.bounds.tolist(), volume_mm3=float(mesh.volume),
                            kwargs_preserved=True))

    # All witnesses are tested on exported triangle meshes, not component kwargs.
    diagonal = 6.5 / 2 ** 0.5
    for family in ["holder", "bearing_plate"]:
        frame, hub = meshes[family]
        lower = family == "holder"
        seat_z = 6 if lower else 1
        lip_z = 4.7 if lower else 3
        for radius, expected in [(9.7, True), (10.1, False)]:
            assert contains(hub, [radius, 0, seat_z]) == expected
        for radius, expected in [(13.55, False), (13.9, True)]:
            assert contains(frame, [radius, 0, seat_z]) == expected
        assert contains(hub, [11.1, 0, lip_z])
        assert not contains(hub, [11.6, 0, lip_z])
        assert not contains(frame, [12.1, 0, lip_z])
        assert contains(frame, [12.6, 0, lip_z])
        for z, expected in ([(4.94, True), (4.96, False)] if lower else [(2.04, False), (2.06, True)]):
            assert contains(frame, [13.0, 0, z]) == expected
        for point, expected in [([0, 1.90, lip_z], False), ([0, 1.95, lip_z], True),
                                ([2.73, 0, lip_z], False), ([2.82, 0, lip_z], True)]:
            assert contains(hub, point) == expected, (family, point)
        for x, y in [(-18, 0), (18, 0), (0, -18), (0, 18)]:
            z = 6 if lower else 1
            assert not contains(frame, [x, y, z])
            # M2.5 print radius is 1.55, not the old M3 radius of 1.8.
            assert contains(frame, [x + 1.65, y, z]), (family, x, y)
        for x, y in [(-diagonal, diagonal), (diagonal, -diagonal)]:
            assert not contains(hub, [x, y, 6 if lower else 1])
            assert contains(hub, [x + 1.65, y, 6 if lower else 1])
        if lower:
            for x, y in reference["dimensions"]["mounting_hole_centers_xy_mm"]:
                x += 14
                assert not contains(frame, [x, y, 4.5])
                assert contains(frame, [x + 2.2, y, 4.5])
            assert not contains(frame, [-10, 11.3, 2.9])
            assert contains(frame, [-10, 11.6, 2.9])
            assert not contains(frame, [-10, 0, 2.9])
            assert contains(frame, [-10, 11, 3.1])
            assert not contains(frame, [-36, 0, 5.0])
            assert contains(frame, [-36, 0, 5.2])
            assert not contains(hub, [5, 0, 3.25])
            for x, y in [(-22.5, -15), (-22.5, 15), (-7.5, -15), (-7.5, 15)]:
                assert not contains(frame, [x, y, 4])
        else:
            for y in [-8.8, 8.8]:
                assert not contains(frame, [-20.5, y, 3])  # Motor screw driver notches.
            for x, y in [(-15, -7.5), (-15, 7.5), (15, -7.5), (15, 7.5),
                         (-7.5, -15), (7.5, -15), (-7.5, 15), (7.5, 15)]:
                assert not contains(frame, [x, y, 3])

    # Captive M3 pockets have matching upper/lower hex halves on a true 15 mm
    # pattern. Check both the pockets and the retaining material at each side.
    upper_hub = meshes["bearing_plate"][1]
    lid = meshes["hub_lid"][0]
    for x, y in [(-7.5, 0), (7.5, 0), (0, -7.5), (0, 7.5)]:
        outward = np.array([x, y]) / 7.5
        pocket = np.array([x, y]) + outward * 2.5
        wall = np.array([x, y]) + outward * 3.3
        assert not contains(upper_hub, [*pocket, 3.8])
        assert not contains(lid, [*pocket, 0.2])
        assert contains(upper_hub, [*pocket, 2.3])
        assert contains(lid, [*pocket, 1.7])
        assert contains(upper_hub, [*wall, 3.8])
        assert contains(lid, [*wall, 0.2])
        assert not contains(upper_hub, [x, y, 1])
        assert not contains(lid, [x, y, 4])
    assert not contains(lid, [2.7, 0, 0.7])  # Motor shaft tip relief.
    assert contains(lid, [2.7, 0, 1.2])

    shell = meshes["clamshell"][0]
    for x, y in [(-37.5, -15), (-37.5, 15), (7.5, -15), (7.5, 15)]:
        assert not contains(shell, [x, y, -10])
        assert contains(shell, [x + 1.65, y, -10])
    for x, y in [(18, 0), (0, -18), (0, 18)]:
        assert not contains(shell, [x, y, -1])
    assert not contains(shell, [0, 0, -19])  # Rear output shaft clearance.
    assert not contains(shell, [-10, 0, -15.7])
    assert contains(shell, [-10, 0, -16.0])
    assert not contains(shell, [-36, 0, -17.6])
    assert not contains(shell, [-36, 8, -19.6])
    assert contains(shell, [-36, 8, -19.8])
    # Native motor wire channel is now recessed inside the shell, below the can.
    assert not contains(shell, [-35, 2.4, -22])
    assert contains(shell, [-35, 2.7, -22])
    assert not contains(shell, [-44, 4.9, -22])
    assert contains(shell, [-44, 5.3, -22])
    assert contains(shell, [-35, 0, -23.0])
    assert not contains(shell, [-51, 0, -22])  # Rear-facing port, no projecting tab.
    assert not contains(shell, [-23, 0, -19])  # Entry rises into lid return channel.
    # Both the connector and rear insertion port have the exact 2.8 mm height.
    # The narrow internal entry has the same bottom, rather than breaking out.
    for x in [-35, -44, -51, -23]:
        assert contains(shell, [x, 0, -22.51]), x
        assert not contains(shell, [x, 0, -22.49]), x
    assert not contains(shell, [-51, 0, -19.71])
    assert contains(shell, [-51, 0, -19.69])
    for x, y in [(-diagonal, diagonal), (diagonal, -diagonal)]:
        assert not contains(lid, [x + 2.4, y, 3.0])  # Socket-head pocket.
        assert contains(lid, [x + 2.6, y, 3.0])
        assert contains(lid, [x + 2.0, y, 2.2])  # Retaining shoulder below head.
        assert not contains(meshes["holder"][1], [x + 2.0, y, 4.0])
        assert contains(meshes["holder"][1], [x + 2.0, y, 5.7])
    wire_lid = meshes["wire_lid"][0]
    for y in [-6.5, 6.5]:
        assert not contains(shell, [-33, y, -20.5])
        assert not contains(wire_lid, [-33, y, 0.5])
    assert contains(wire_lid, [-36, 0, 0.5])
    assert not contains(wire_lid, [-36, 0, 1.5])
    assert not contains(wire_lid, [-49.5, 0, 1.5])
    assert not contains(wire_lid, [-23, 0, 0.5])

    # Exact CSG intersection of native geometry checks the assembled printable
    # parts against the nominal bearing and reference motor (no imported meshes).
    collisions = {}
    for name in ["reference_motor", "reference_bearing"]:
        source = output / ("intersection_" + name + ".scad")
        source.write_text("intersection() { union() {\n" +
                          (output / "assembled_printed.scad").read_text() + "\n} union() {\n" +
                          (output / (name + ".scad")).read_text() + "\n} }\n")
        destination = source.with_suffix(".stl")
        process = subprocess.run([shutil.which("openscad"), "--backend=Manifold", "-o", str(destination), str(source)],
                                 capture_output=True, text=True, timeout=120,
                                 creationflags=getattr(subprocess, "CREATE_NO_WINDOW", 0))
        log = process.stdout + process.stderr
        source.with_suffix(".log").write_text(log)
        assert "ERROR:" not in log and "WARNING:" not in log, log
        if "Current top level object is empty" in log:
            volume = 0
        else:
            assert process.returncode == 0, log
            collision = trimesh.load_mesh(destination)
            a, b, c = np.moveaxis(collision.triangles, 1, 0)
            volume = abs(np.einsum("ij,ij->i", a, np.cross(b, c)).sum() / 6)
        assert volume < 0.0001, (name, volume)
        collisions[name] = float(volume)

    assert len(results) == 5
    layout = trimesh.load_mesh(output / "3dpr.stl")
    assert len(layout.split()) == 7 and layout.is_watertight
    assembled = trimesh.load_mesh(output / "assembled_printed.stl")
    assert len(assembled.split()) == 2 and assembled.is_watertight, "Rotating hub touches stationary housing"
    report = dict(status="passed", catalogue_parts=1, editable_layout_checked=True, legacy_drawings_unchanged=True, parts=results,
                  print_layout_solids=7, assembled_printed_solids=2,
                  reference_intersection_volume_mm3=collisions,
                  m2d5_joining_checked=True, captive_m3_pattern_mm=15,
                  motor_inset_mm=3, native_motor_wire_checked=True,
                  connector_inside_footprint=True, bearing_size="6704",
                  connector_depth_mm=2.8, connector_insertion_height_mm=2.8,
                  connector_base_mm=1.0, screws=screws,
                  physical_fit_tested=False)
    (output / "validation.json").write_text(json.dumps(report, indent=2) + "\n")
    print("PASS: seven watertight print solids; captive M3 nuts, M2.5 joins, motor inset, wire path and reference clearances checked.")


if __name__ == "__main__":
    main()

