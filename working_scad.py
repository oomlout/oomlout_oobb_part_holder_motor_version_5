"""Editable motor holders using the native OOBB version 5 components.

Each get_* drawing is deliberately self-contained. Edit its dimensions and
p3 dictionaries in place; repetition makes each part independent to maintain.
Every component starts with a deepcopy of kwargs so attributes such as m="#"
reach the library. Add p3["m"] = "#" before any append_full to debug one feature.
Hardware fits, nut pockets and printing reliefs belong to the version 5 library.
Only motor-specific body, shaft, horn and insert dimensions remain local.
Width/height count 15 mm grid spaces; plates subtract 1 mm for clearance.
Depth is the finished printed Z extent.
"""
import copy
import math
import os
import yaml
import oobb
import scad_help

GRID_PITCH_MM = 15

# Nominal ID, OD, width and inner/outer race abutment diameters. The shared
# library subtracts print depth; these seats instead allow the full bearing.
NEMA17_BEARINGS = {"6705": (25, 32, 4, 26.8, 30.2),
                   "6810": (50, 65, 7, 52.2, 62.8)}


def nema17_group(components, pos=None, rot=None, **kwargs):
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = pos or [0, 0, 0]
    group["rot"] = rot or [0, 0, 0]
    group["objects"] = copy.deepcopy(components)
    return group


def nema17_grid(thing, grid_width, grid_height, grid_depth, *, bottom=0, exclusions=(),
                web=1.2, label="grid", circle_radius=None, nut_centers=(),
                nut_radius_name="m3", nut_reason="embedded output nut", **kwargs):
    """All M6 15 mm grid holes + M3 intervening 7.5 mm grid holes.

    Explicit circular feature envelopes protect seats, motor screws and nuts.
    Every candidate is recorded so omissions cannot silently become a sparse
    hand-picked pattern. Coordinates are local to the face receiving the grid.
    """
    records = thing.setdefault("grid_hole_audit", [])
    for ix in range(2 * grid_width - 1):
        for iy in range(2 * grid_height - 1):
            x = (ix - grid_width + 1) * 7.5
            y = (iy - grid_height + 1) * 7.5
            name = "m6" if ix % 2 == 0 and iy % 2 == 0 else "m3"
            radius = oobb.gv("hole_radius_" + name, "3dpr")
            reasons = [reason for cx, cy, r, reason in exclusions
                       if math.hypot(x - cx, y - cy) < r + radius + web]
            if circle_radius is not None and math.hypot(x, y) + radius + web > circle_radius:
                reasons.append("outside circular output")
            for cx, cy in nut_centers:
                if math.hypot(x - cx, y - cy) < .01:
                    continue
                if math.hypot(x - cx, y - cy) < oobb.gv("nut_radius_" + nut_radius_name, "3dpr") + radius + web:
                    reasons.append(nut_reason)
            records.append(dict(face=label, x=x, y=y, radius_name=name,
                                included=not reasons, exclusions=reasons))
            if reasons:
                continue
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = name
            p3["depth"] = grid_depth + 2
            p3["pos"] = [x, y, bottom - 1]
            oobb.append_full(thing, **p3)


def nema17_flange_centers(**kwargs):
    radius = kwargs["coupler_pcd_mm"] / 2
    angle = kwargs["coupler_angle_deg"]
    return [(radius * math.cos(math.radians(angle + i * 90)),
             radius * math.sin(math.radians(angle + i * 90))) for i in range(4)]


def get_nema17_holder(thing, **kwargs):
    width = kwargs["width"]
    compact_6810 = kwargs["support"] == "6810"
    depth = 3 if compact_6810 else 6
    span = width * 15 - 1
    face = oobb.get_default_thing(type="nema17_motor_face")
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = width
    p3["height"] = kwargs["height"]
    p3["depth"] = depth
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(face, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = (kwargs["motor_boss_diameter_mm"] + 0.4) / 2
    p3["depth"] = 8
    p3["pos"] = [0, 0, -1]
    oobb.append_full(face, **p3)
    exclusions = [(0, 0, p3["radius"], "motor locating boss")]
    for x in [-kwargs["motor_pitch_mm"] / 2, kwargs["motor_pitch_mm"] / 2]:
        for y in [-kwargs["motor_pitch_mm"] / 2, kwargs["motor_pitch_mm"] / 2]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_countersunk"
            p3["radius_name"] = "m3"
            p3["depth"] = 6 if compact_6810 else 10
            p3["pos"] = [x, y, depth]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = "top"
            oobb.append_full(face, **p3)
            exclusions.append((x, y, oobb.gv("screw_countersunk_radius_m3", "3dpr"), "M3 motor countersink"))
    if compact_6810:
        for x, y in nema17_6810_plate_joins():
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_countersunk"
            p3["radius_name"] = "m3"
            p3["depth"] = 10
            p3["pos"] = [x, y, 0]
            p3["rot"] = [180, 0, 0]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = "top"
            oobb.append_full(face, **p3)
    nema17_grid(face, width, kwargs["height"], depth, exclusions=exclusions,
                label="motor_face", **kwargs)
    thing["grid_hole_audit"] = face["grid_hole_audit"]
    thing["components"].extend(face["components"])
    thing["components_objects"].extend(face["components_objects"])


def get_nema17_bearing_housing(thing, **kwargs):
    _, od, bearing_width, _, lip = NEMA17_BEARINGS[kwargs["support"]]
    axial = kwargs["bearing_axial_clearance_mm"]
    depth = 2 + bearing_width + axial
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["depth"] = depth
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = lip / 2
    p3["depth"] = depth + 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    seat_radius = (od + kwargs["bearing_diameter_clearance_mm"]) / 2
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = seat_radius
    p3["depth"] = bearing_width + axial + 1
    p3["pos"] = [0, 0, 2]
    oobb.append_full(thing, **p3)
    nema17_grid(thing, kwargs["width"], kwargs["height"], depth,
                exclusions=[(0, 0, seat_radius, "bearing outer-race seat")],
                label="bearing_housing", **kwargs)


def get_nema17_bearing_cap(thing, **kwargs):
    _, od, _, _, lip = NEMA17_BEARINGS[kwargs["support"]]
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["depth"] = 2
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = lip / 2
    p3["depth"] = 4
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    # Same grid as lower housing: no holes break into the bearing contact area.
    nema17_grid(thing, kwargs["width"], kwargs["height"], 2,
                exclusions=[(0, 0, (od + kwargs["bearing_diameter_clearance_mm"]) / 2,
                             "bearing outer-race seat")], label="bearing_cap", **kwargs)


def get_nema17_hub(thing, **kwargs):
    if kwargs["support"] == "6810":
        raise ValueError("6810 uses the integrated output journal and coupler sleeve")
    bore, _, bearing_width, shoulder, _ = NEMA17_BEARINGS[kwargs["support"]]
    axial = kwargs["bearing_axial_clearance_mm"]
    lip_depth = (12 - bearing_width - axial) / 2 if kwargs["support"] == "6810" else 2
    # Lower inner-race shoulder and journal, both independent of outer housing.
    for diameter, bottom, depth in [(shoulder, 0, lip_depth),
            (bore - kwargs["journal_diameter_clearance_mm"], lip_depth, bearing_width + axial)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = diameter / 2
        p3["depth"] = depth
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, bottom]
        oobb.append_full(thing, **p3)
    # Flange counterbore seats the metal flange at local Z=.2..2.2.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = (kwargs["coupler_flange_diameter_mm"] + 0.4) / 2
    p3["depth"] = 3.2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = "m6"
    p3["depth"] = bearing_width + axial + 4
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    for x, y in nema17_flange_centers(**kwargs):
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = bearing_width + axial + 4
        p3["pos"] = [x, y, -1]
        oobb.append_full(thing, **p3)


def get_nema17_output(thing, **kwargs):
    support = kwargs["support"]
    shoulder_depth = 0 if support == "direct" else 2.5
    depth = {"direct": 8, "6705": 9, "6810": 11}[support]
    width = 5 if support == "6810" else 3
    if support != "direct":
        shoulder = NEMA17_BEARINGS[support][3]
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = shoulder / 2
        p3["depth"] = shoulder_depth + 0.01
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, 0]
        oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = width
    p3["height"] = width
    p3["depth"] = depth - shoulder_depth
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, shoulder_depth]
    oobb.append_full(thing, **p3)
    exclusions = []
    for x, y in nema17_flange_centers(**kwargs):
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth + 2
        p3["pos"] = [x, y, -1]
        oobb.append_full(thing, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m3"
        p3["depth"] = 3
        p3["zz"] = "bottom"
        p3["pos"] = [x, y, depth - 3]
        p3["overhang"] = True
        oobb.append_full(thing, **p3)
        exclusions.append((x, y, oobb.gv("nut_radius_m3", "3dpr"), "flange fixing nut"))
    nema17_grid(thing, width, width, depth, exclusions=exclusions,
                web=0.6, label="rotating_output", **kwargs)


def get_nema17_spacer(thing, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 6
    p3["depth"] = 12
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = "m6"
    p3["depth"] = 14
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)


def nema17_nut(thing, cx, cy, split, *, radius_name="m3", rotation=0, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_nut"
    p3["radius_name"] = radius_name
    p3["depth"] = oobb.gv("nut_depth_" + radius_name, "3dpr")
    p3["pos"] = [cx, cy, split]
    p3["zz"] = "middle"
    p3["rot"] = [0, 0, rotation]
    p3["overhang"] = True
    oobb.append_full(thing, **p3)


def nema17_6705_output_nuts(style):
    if style == "circle":
        return [(-7.5, 0), (7.5, 0), (0, -7.5), (0, 7.5)]
    return [(x, y) for x in [-15, 15] for y in [-7.5, 7.5]] + [
        (x, y) for x in [-7.5, 7.5] for y in [-15, 15]]


def nema17_6705_joins():
    diagonal = 10.5 / math.sqrt(2)
    return [(-diagonal, -diagonal), (diagonal, diagonal)]


def get_nema17_clamshell_lower(thing, **kwargs):
    p2 = copy.deepcopy(kwargs)
    p2["shell_half"] = "lower"
    get_nema17_clamshell_half(thing, **p2)


def get_nema17_clamshell_upper(thing, **kwargs):
    p2 = copy.deepcopy(kwargs)
    p2["shell_half"] = "upper"
    get_nema17_clamshell_half(thing, **p2)


def get_nema17_clamshell_half(thing, **kwargs):
    # Symmetric seat split at bearing centre, as in the bearing-holder project.
    _, od, bearing_width, _, lip = NEMA17_BEARINGS[kwargs["support"]]
    half_seat = (bearing_width + kwargs["bearing_axial_clearance_mm"]) / 2
    depth = 6 if kwargs["support"] == "6810" else 2 + half_seat
    lip_depth = depth - half_seat
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["depth"] = depth
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = lip / 2
    p3["depth"] = depth + 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    seat_radius = (od + kwargs["bearing_diameter_clearance_mm"]) / 2
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = seat_radius
    p3["depth"] = half_seat + 1
    p3["pos"] = [0, 0, lip_depth if kwargs["shell_half"] == "lower" else -1]
    oobb.append_full(thing, **p3)
    corner_nuts = []
    if kwargs["height"] == 3:
        # Recess the nuts below the cap surface. Bottom-entering M6 x 30
        # socket screws leave only their narrow shafts above the cap, so a
        # raised 3x3 square clears these closer corners throughout rotation.
        corner_nuts = [(x, y) for x in [-30, 30] for y in [-15, 15]]
        top = 8.2 if kwargs["shell_half"] == "lower" else 4.1
        for x, y in corner_nuts:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_nut"
            p3["radius_name"] = "m6"
            p3["depth"] = oobb.gv("nut_depth_m6", "3dpr")
            p3["zz"] = "top"
            p3["pos"] = [x, y, top]
            p3["overhang"] = True
            oobb.append_full(thing, **p3)
    if kwargs["support"] == "6810":
        corner_nuts = nema17_6810_perimeter_nuts()
        for x, y in corner_nuts:
            nema17_nut(thing, x, y, 6 if kwargs["shell_half"] == "lower" else 0,
                        radius_name="m6", **kwargs)
        if kwargs["shell_half"] == "lower":
            for x, y in nema17_6810_plate_joins():
                nema17_nut(thing, x, y, 4.5, **kwargs)
        for x, y in nema17_6810_shell_joins():
            if kwargs["shell_half"] == "lower":
                # Open at the mating face; the upper half encloses the nut.
                nema17_nut(thing, x, y, depth - 1.5, **kwargs)
            else:
                p3 = copy.deepcopy(kwargs)
                p3["type"] = "negative"
                p3["shape"] = "oobb_screw_countersunk"
                p3["radius_name"] = "m3"
                p3["depth"] = 10
                p3["pos"] = [x, y, depth]
                p3["zz"] = "none"
                p3["nut_include"] = False
                p3["overhang"] = True
                p3["clearance"] = "top"
                oobb.append_full(thing, **p3)
    nema17_grid(thing, kwargs["width"], kwargs["height"], depth,
                nut_centers=corner_nuts, nut_radius_name="m6",
                nut_reason="perimeter M6 pocket" if kwargs["support"] == "6810" else "recessed M6 stack nut",
                exclusions=[(0, 0, seat_radius, "bearing outer-race seat")],
                label="clamshell_" + kwargs["shell_half"], **kwargs)


def nema17_6810_shell_joins():
    return ([(x, y) for x in [-37.5, 37.5] for y in [-37.5, -22.5, 22.5, 37.5]]
            + [(x, y) for x in [-22.5, 22.5] for y in [-37.5, 37.5]])


def nema17_6810_plate_joins():
    return ([(x, y) for x in [-37.5, 37.5] for y in [-7.5, 7.5]]
            + [(x, y) for x in [-7.5, 7.5] for y in [-37.5, 37.5]])


def nema17_6810_perimeter_nuts():
    return [(x, y) for x in range(-45, 46, 15) for y in range(-45, 46, 15)
            if abs(x) == 45 or abs(y) == 45]


def nema17_6810_rotor_joins(**kwargs):
    return nema17_flange_centers(**kwargs)


def nema17_6810_output_nuts():
    return ([(x, y) for x in [-30, 30] for y in [-7.5, 7.5]]
            + [(x, y) for x in [-7.5, 7.5] for y in [-30, 30]])


def nema17_6810_output_lid_joins():
    return [(x, y) for x in [-22.5, 22.5] for y in [-22.5, 22.5]]


def nema17_6810_central_m6_nuts():
    return [(x, y) for x in [-15, 0, 15] for y in [-15, 0, 15] if x or y]


def nema17_6810_side_access(thing, bottom, access_height=8, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [30, 6, access_height]
    p3["zz"] = "bottom"
    p3["pos"] = [15, 0, bottom]
    oobb.append_full(thing, **p3)


def get_nema17_6810_coupler_nut_lid(thing, **kwargs):
    # Four top-loading nuts on the metal flange PCD. The barrel press-fit
    # holds this small disc in position; the flange closes the nut pockets.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 19
    p3["depth"] = 4
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = (kwargs["coupler_hub_diameter_mm"] - kwargs["coupler_nut_disc_interference_mm"]) / 2
    p3["depth"] = 6
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    for i, (x, y) in enumerate(nema17_flange_centers(**kwargs)):
        nema17_nut(thing, x, y, 2.5,
                    rotation=kwargs["coupler_angle_deg"] + i * 90 + 30, **kwargs)
        # The nominal nut clearance leaves only a .052 mm web to the barrel.
        # Open that web deliberately; the metal barrel closes this side and
        # the remaining bore arcs retain the disc's interference fit.
        relief = oobb.get_default_thing(type="nema17_nut_barrel_relief")
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [1, 2.5, 6]
        p3["zz"] = "bottom"
        p3["pos"] = [5, 0, -1]
        oobb.append_full(relief, **p3)
        group = nema17_group(relief["components"],
                              rot=[0, 0, kwargs["coupler_angle_deg"] + i * 90], **kwargs)
        group["typetype"] = "negative"
        thing["components"].append(group)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = 6
        p3["pos"] = [x, y, -1]
        oobb.append_full(thing, **p3)


def get_nema17_6810_output_half(thing, **kwargs):
    base = kwargs["square_half"] == "base"
    # Straight journal Z=6.6..29; the outer drive tube starts 6 mm higher.
    shoulder_depth = kwargs["journal_length_mm"] if base else 0
    depth = shoulder_depth + 4
    if base:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = (50 - kwargs["journal_diameter_clearance_mm"]) / 2
        p3["depth"] = shoulder_depth + .01
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, 0]
        oobb.append_full(thing, **p3)
    if base:
        # Separate annular geometry keeps its ID cutter out of the journal.
        tube = oobb.get_default_thing(type="nema17_drive_tube")
        for typ, radius, bottom, length in [
                ("positive", (NEMA17_BEARINGS["6810"][4] - 2 * kwargs["drive_tube_holder_radial_clearance_mm"]) / 2,
                 kwargs["drive_tube_length_difference_mm"], shoulder_depth - kwargs["drive_tube_length_difference_mm"] + .01),
                ("negative", (50 - kwargs["journal_diameter_clearance_mm"] + kwargs["drive_tube_id_clearance_mm"]) / 2,
                 kwargs["drive_tube_length_difference_mm"] - 1, shoulder_depth + 2)]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = typ
            p3["shape"] = "oobb_cylinder" if typ == "positive" else "oobb_hole"
            p3["radius"] = radius
            p3["depth"] = length
            p3["zz"] = "bottom"
            p3["pos"] = [0, 0, bottom]
            oobb.append_full(tube, **p3)
        thing["components"].append(nema17_group(tube["components"], **kwargs))
        thing["components_objects"].extend(tube["components_objects"])
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = 5
    p3["height"] = 5
    p3["depth"] = 4
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, shoulder_depth]
    oobb.append_full(thing, **p3)
    split = depth if base else 0
    for x, y in nema17_6810_output_nuts():
        nema17_nut(thing, x, y, split, **kwargs)
    m6_nuts = nema17_6810_central_m6_nuts()
    for x, y in m6_nuts:
        nema17_nut(thing, x, y, split, radius_name="m6", **kwargs)
    # Independent lid screws clamp both plates against loose nuts underneath.
    # Bottom-open 9 mm access channels clear the adjacent outer drive tube;
    # they stop at the plate underside, retaining its full 4 mm thickness.
    for x, y in nema17_6810_output_lid_joins():
        if base:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius"] = 4.5
            p3["depth"] = shoulder_depth + 1
            p3["pos"] = [x, y, -1]
            oobb.append_full(thing, **p3)
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m3"
            p3["depth"] = 6
            p3["pos"] = [x, y, shoulder_depth - 1]
            oobb.append_full(thing, **p3)
        else:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_countersunk"
            p3["radius_name"] = "m3"
            p3["depth"] = 12
            p3["pos"] = [x, y, 4]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = "top"
            oobb.append_full(thing, **p3)
    nema17_grid(thing, 5, 5, 4, bottom=shoulder_depth,
                nut_centers=m6_nuts, nut_radius_name="m6", web=.6,
                nut_reason="central 3x3 M6 nut pocket",
                exclusions=[(x, y, 3.8, "flange countersunk joiner") for x, y in nema17_flange_centers(**kwargs)],
                label="raised_square_" + kwargs["square_half"], **kwargs)
    if base:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 19.3
        p3["depth"] = shoulder_depth + 1
        p3["pos"] = [0, 0, -1]
        oobb.append_full(thing, **p3)
        nema17_6810_side_access(thing, 20 - (29 - shoulder_depth), access_height=4, **kwargs)
    for x, y in nema17_6810_rotor_joins(**kwargs):
        if base:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m3"
            p3["depth"] = 6
            p3["pos"] = [x, y, shoulder_depth - 1]
            oobb.append_full(thing, **p3)
        else:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_countersunk"
            p3["radius_name"] = "m3"
            p3["depth"] = 15
            p3["pos"] = [x, y, 4]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = "top"
            oobb.append_full(thing, **p3)



def get_nema17_6705_hub(thing, **kwargs):
    # Local Z=0 corresponds to assembly Z=18. The complete journal stays in
    # this lower rotating piece; its shoulder rises clear of the clamshell.
    for radius, bottom, depth in [(13.4, 0, 2),
            ((25 - kwargs["journal_diameter_clearance_mm"]) / 2, 2, 4.2),
            (14.5, 6.2, 4)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = radius
        p3["depth"] = depth
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, bottom]
        oobb.append_full(thing, **p3)
    for radius, bottom, depth in [((kwargs["coupler_flange_diameter_mm"] + .4) / 2, -1, 3.2),
                                  (oobb.gv("hole_radius_m6", "3dpr"), -1, 12.2)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = radius
        p3["depth"] = depth
        p3["pos"] = [0, 0, bottom]
        oobb.append_full(thing, **p3)
    circular = kwargs["output_style"] == "circle"
    for i, (x, y) in enumerate(nema17_flange_centers(**kwargs)):
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        # Circular flange fixings end below the output-nut plane; square
        # flange fixings pass through all three pieces into the raised square.
        p3["depth"] = 6.7 if circular else 12.2
        p3["pos"] = [x, y, -1]
        oobb.append_full(thing, **p3)
        if circular:
            nema17_nut(thing, x, y, 3.7,
                        rotation=kwargs["coupler_angle_deg"] + i * 90 + 30, **kwargs)
    if not circular:
        return
    nuts = nema17_6705_output_nuts("circle")
    for x, y in nuts:
        nema17_nut(thing, x, y, 10.2, **kwargs)
    joins = nema17_6705_joins()
    for x, y in joins:
        nema17_nut(thing, x, y, 10.2 - oobb.gv("nut_depth_m2d5", "3dpr") / 2,
                    radius_name="m2d5", rotation=30, **kwargs)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 3.9
        p3["pos"] = [x, y, 7.3]
        oobb.append_full(thing, **p3)
    nema17_grid(thing, 3, 3, 2.2, bottom=8, circle_radius=14.5,
                nut_centers=nuts, web=.6,
                exclusions=[(x, y, 3.45, "circular hub joining screw") for x, y in joins],
                label="circular_output_lower", **kwargs)


def get_nema17_6705_round_lid(thing, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 14.5
    p3["depth"] = 3
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, 0]
    oobb.append_full(thing, **p3)
    nuts = nema17_6705_output_nuts("circle")
    for x, y in nuts:
        nema17_nut(thing, x, y, 0, **kwargs)
    joins = nema17_6705_joins()
    for x, y in joins:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 5
        p3["pos"] = [x, y, 2.5]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = "top"
        oobb.append_full(thing, **p3)
    nema17_grid(thing, 3, 3, 3, circle_radius=14.5, nut_centers=nuts, web=.6,
                exclusions=[(x, y, 3.45, "circular hub joining screw") for x, y in joins],
                label="circular_output_upper", **kwargs)


def get_nema17_square_base(thing, **kwargs):
    p2 = copy.deepcopy(kwargs)
    p2["square_half"] = "base"
    get_nema17_square_half(thing, **p2)


def get_nema17_square_lid(thing, **kwargs):
    p2 = copy.deepcopy(kwargs)
    p2["square_half"] = "lid"
    get_nema17_square_half(thing, **p2)


def get_nema17_square_half(thing, **kwargs):
    if kwargs["support"] == "6810":
        get_nema17_6810_output_half(thing, **kwargs)
        return
    base = kwargs["square_half"] == "base"
    width = 3
    depth = 3
    shoulder_depth = 0
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = width
    p3["height"] = width
    p3["depth"] = 3
    p3["holes"] = False
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, shoulder_depth]
    oobb.append_full(thing, **p3)
    split = depth if base else 0
    nuts = nema17_6705_output_nuts("square_3x3")
    for x, y in nuts:
        nema17_nut(thing, x, y, split, **kwargs)
    exclusions = []
    for x, y in nema17_flange_centers(**kwargs):
        nema17_nut(thing, x, y, split, **kwargs)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth + 2
        p3["pos"] = [x, y, -1]
        oobb.append_full(thing, **p3)
        exclusions.append((x, y, oobb.gv("nut_radius_m3", "3dpr"), "embedded flange nut"))
    nema17_grid(thing, width, width, depth, nut_centers=nuts, exclusions=exclusions,
                web=.6, label="raised_square_" + kwargs["square_half"], **kwargs)


def get_nema17_reference_motor(thing, **kwargs):
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [kwargs["motor_body_mm"], kwargs["motor_body_mm"], kwargs["motor_length_mm"]]
    p3["zz"] = "bottom"
    p3["pos"] = [0, 0, -kwargs["motor_length_mm"]]
    oobb.append_full(thing, **p3)
    for diameter, depth in [(kwargs["motor_boss_diameter_mm"], kwargs["motor_boss_height_mm"]),
                            (kwargs["shaft_diameter_mm"], kwargs["shaft_extension_mm"])]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = diameter / 2
        p3["depth"] = depth
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, 0]
        oobb.append_full(thing, **p3)
    # Nominal threaded bores, for reference only; screws enter 4 mm of 4.5 mm.
    for x in [-kwargs["motor_pitch_mm"] / 2, kwargs["motor_pitch_mm"] / 2]:
        for y in [-kwargs["motor_pitch_mm"] / 2, kwargs["motor_pitch_mm"] / 2]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius"] = 1.5
            p3["depth"] = 5
            p3["pos"] = [x, y, -4.5]
            oobb.append_full(thing, **p3)


def get_nema17_reference_coupler(thing, **kwargs):
    # The 6810 flange seats directly against the output underside at Z=29.
    # Its nut disc sits below the flange, around the barrel. Set screws omitted.
    barrel_bottom = 17 if kwargs["support"] == "6810" else 8.2
    flange_bottom = 27 if kwargs["support"] == "6810" else 18.2
    for diameter, bottom, depth in [
            (kwargs["coupler_hub_diameter_mm"], barrel_bottom, kwargs["coupler_hub_length_mm"]),
            (kwargs["coupler_flange_diameter_mm"], flange_bottom, kwargs["coupler_flange_thickness_mm"])]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = diameter / 2
        p3["depth"] = depth
        p3["zz"] = "bottom"
        p3["pos"] = [0, 0, bottom]
        oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = kwargs["shaft_diameter_mm"] / 2
    p3["depth"] = 14
    p3["pos"] = [0, 0, min(barrel_bottom, flange_bottom) - 1]
    oobb.append_full(thing, **p3)
    for x, y in nema17_flange_centers(**kwargs):
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 1.5
        p3["depth"] = 4
        p3["pos"] = [x, y, flange_bottom - 1]
        oobb.append_full(thing, **p3)


def get_nema17_reference_bearing(thing, **kwargs):
    bore, od, depth, _, _ = NEMA17_BEARINGS[kwargs["support"]]
    for typ, diameter, extra in [("positive", od, 0), ("negative", bore, 1)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = typ
        p3["shape"] = "oobb_cylinder" if typ == "positive" else "oobb_hole"
        p3["radius"] = diameter / 2
        p3["depth"] = depth + extra * 2
        p3["zz"] = "bottom"
        bottom = 9 - depth / 2 if kwargs["support"] == "6810" else 20 + kwargs["bearing_axial_clearance_mm"] / 2
        p3["pos"] = [0, 0, bottom - extra]
        oobb.append_full(thing, **p3)


def get_nema17_6810_reference_fasteners(thing, **kwargs):
    # Nominal envelopes, including recessed heads and actual enclosed nuts.
    for mode in ["laser", "3dpr", "true"]:
        oobb.set_variable("nut_radius_nema17_reference_m3", 5.5 / math.sqrt(3), mode)
        oobb.set_variable("nut_radius_nema17_reference_m6", 10 / math.sqrt(3), mode)
    for centers, upward in [(nema17_6810_plate_joins(), True), (nema17_6810_shell_joins(), False)]:
        for x, y in centers:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = "oobb_cylinder"
            p3["radius"] = 1.5
            p3["depth"] = 10
            p3["zz"] = "bottom"
            p3["pos"] = [x, y, 0 if upward else 5]
            oobb.append_full(thing, **p3)
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = "cylinder"
            p3["r1"] = 3 if upward else 1.5
            p3["r2"] = 1.5 if upward else 3
            p3["h"] = 1.5
            p3["pos"] = [x, y, 0 if upward else 13.5]
            oobb.append_full(thing, **p3)
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = "oobb_nut"
            p3["radius_name"] = "nema17_reference_m3"
            p3["depth"] = 2.4
            p3["zz"] = "bottom"
            p3["pos"] = [x, y, 6]
            p3["overhang"] = False
            oobb.append_full(thing, **p3)
    for x, y in nema17_6810_perimeter_nuts():
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "nema17_reference_m6"
        p3["depth"] = 5
        p3["zz"] = "bottom"
        p3["pos"] = [x, y, 6.25]
        p3["overhang"] = False
        oobb.append_full(thing, **p3)


def get_nema17_reference_stack_fasteners(thing, **kwargs):
    if kwargs["support"] == "6810":
        get_nema17_6810_reference_fasteners(thing, **kwargs)
        return
    # Nominal M6 socket screws and nuts, to check the hardware swept by the
    # rotating output. The compact nuts are inset, with screws from below.
    compact = kwargs["height"] == 3
    top = 26.2 if kwargs["support"] == "6705" else 30
    shaft_bottom, shaft_depth = (0, 30) if compact else (top - 35, 35)
    head_bottom = -6 if compact else top
    nut_bottom = 20.7 if compact else -5
    for mode in ["laser", "3dpr", "true"]:
        oobb.set_variable("nut_radius_nema17_reference_m6", 10 / math.sqrt(3), mode)
    for x in [-(kwargs["width"] - 1) * 7.5, (kwargs["width"] - 1) * 7.5]:
        for y in [-(kwargs["height"] - 1) * 7.5, (kwargs["height"] - 1) * 7.5]:
            for radius, bottom, depth in [(3, shaft_bottom, shaft_depth), (5, head_bottom, 6)]:
                p3 = copy.deepcopy(kwargs)
                p3["type"] = "positive"
                p3["shape"] = "oobb_cylinder"
                p3["radius"] = radius
                p3["depth"] = depth
                p3["zz"] = "bottom"
                p3["pos"] = [x, y, bottom]
                oobb.append_full(thing, **p3)
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "positive"
            p3["shape"] = "oobb_nut"
            p3["radius_name"] = "nema17_reference_m6"
            p3["depth"] = 5
            p3["zz"] = "bottom"
            p3["pos"] = [x, y, nut_bottom]
            p3["overhang"] = False
            oobb.append_full(thing, **p3)


def get_holder_motor_stepper_nema17_assembly(thing, **kwargs):
    """Flat piece exports, full print bed, assembled and exploded references."""
    support = kwargs["support"]
    width = kwargs["width"]
    span = width * 15 - 1
    # Keep separate print positions for the hub, square base and extra lid.
    offset = max(span + 14, 110)
    mount_rot = [0, 0, 0]
    mount_pos = [0, 0, 0]
    # name -> (drawing, assembled local Z, print XY, explode distance)
    output_z = 20.2 if support == "direct" else 20 + NEMA17_BEARINGS[support][2] + kwargs["bearing_axial_clearance_mm"]
    definitions = {
        "holder": (get_nema17_holder, 0, [0, 0], 0),
        "output": (get_nema17_output, output_z, [offset, offset], 45),
    }
    if support != "direct":
        definitions.update({
            "bearing_housing": (get_nema17_bearing_housing, 18, [offset, 0], 15),
            "bearing_cap": (get_nema17_bearing_cap, output_z, [0, offset], 30),
            "hub": (get_nema17_hub, 18, [2 * offset, offset], 15),
        })
    if support == "6705":
        definitions["bearing_housing"] = (get_nema17_clamshell_lower, 18, [offset, 0], 15)
        definitions["bearing_cap"] = (get_nema17_clamshell_upper, 22.1, [0, offset], 30)
        definitions["hub"] = (get_nema17_6705_hub, 18, [2 * offset, offset], 15)
        if kwargs["output_style"] == "circle":
            definitions["output"] = (get_nema17_6705_round_lid, 28.2, [offset, offset], 45)
        else:
            definitions["output"] = (get_nema17_square_base, 28.2, [offset, offset], 40)
            definitions["output_lid"] = (get_nema17_square_lid, 31.2, [2 * offset, offset + 55], 55)
    elif support == "6810":
        definitions["bearing_housing"] = (get_nema17_clamshell_lower, 3, [offset, 0], 15)
        definitions["bearing_cap"] = (get_nema17_clamshell_upper, 9, [0, offset], 30)
        definitions.pop("hub")
        definitions["coupler_nut_lid"] = (get_nema17_6810_coupler_nut_lid, 23, [2 * offset, offset - 55], 30)
        definitions["output"] = (get_nema17_square_base, 29 - kwargs["journal_length_mm"], [offset, offset], 55)
        definitions["output_lid"] = (get_nema17_square_lid, 33, [2 * offset, offset + 85], 70)
    thing["additional_outputs"] = {}
    thing["grid_hole_audit"] = {}
    thing["piece_placements"] = {}
    printed = []
    exploded = []
    stationary = []
    rotating = []
    for name, (drawing, z, xy, separation) in definitions.items():
        piece = oobb.get_default_thing(type="nema17_" + name)
        drawing(piece, **kwargs)
        thing["components_objects"].extend(piece["components_objects"])
        thing["grid_hole_audit"][name] = piece.get("grid_hole_audit", [])
        components = piece["components"]
        print_pos = [0, 0, 0]
        print_rot = [0, 0, 0]
        if support == "6705":
            flip_depth = {"hub": 10.2, "bearing_cap": 4.1, "output_lid": 3}
            if kwargs["output_style"] == "circle":
                flip_depth["output"] = 3
            if name in flip_depth:
                print_pos = [0, 0, flip_depth[name]]
                print_rot = [180, 0, 0]
        elif support == "6810":
            flip_depth = {"bearing_cap": 6, "output": kwargs["journal_length_mm"] + 4, "output_lid": 4}
            if name in flip_depth:
                print_pos = [0, 0, flip_depth[name]]
                print_rot = [180, 0, 0]
        bed = [nema17_group(components, pos=print_pos, rot=print_rot, **kwargs)]
        thing["additional_outputs"][name] = copy.deepcopy(bed)
        thing["components"].append(nema17_group(bed, pos=[*xy, 0], **kwargs))
        printed.append(nema17_group(components, pos=[0, 0, z], **kwargs))
        role = "rotating" if name in ["hub", "output", "output_lid", "coupler_nut_lid"] else "stationary"
        (rotating if role == "rotating" else stationary).append(copy.deepcopy(printed[-1]))
        exploded.append(nema17_group(components, pos=[0, 0, z + separation], **kwargs))
        thing["piece_placements"][name] = dict(assembly_z=z, print_xy=xy,
            print_pos=print_pos, print_rot=print_rot, role=role)
    if support == "6705":
        spacer = oobb.get_default_thing(type="nema17_spacer")
        get_nema17_spacer(spacer, **kwargs)
        thing["additional_outputs"]["spacer"] = spacer["components"]
        thing["components_objects"].extend(spacer["components_objects"])
        corner = (width - 1) * 7.5
        corner_y = (kwargs["height"] - 1) * 7.5
        for i, (x, y) in enumerate([(-corner, -corner_y), (-corner, corner_y),
                                    (corner, -corner_y), (corner, corner_y)]):
            thing["components"].append(nema17_group(spacer["components"],
                pos=[2 * offset + (i % 2) * 18, -18 + (i // 2) * 18, 0], **kwargs))
            printed.append(nema17_group(spacer["components"], pos=[x, y, 6], **kwargs))
            stationary.append(copy.deepcopy(printed[-1]))
            exploded.append(nema17_group(spacer["components"], pos=[x, y, 11], **kwargs))
    # Canonical coordinates are useful for reproducible exact interference checks.
    thing["additional_outputs"]["assembled_local"] = copy.deepcopy(printed)
    thing["additional_outputs"]["stationary_local"] = stationary
    thing["additional_outputs"]["rotating_local"] = rotating
    thing["additional_outputs"]["assembled_printed"] = [nema17_group(printed, pos=mount_pos, rot=mount_rot, **kwargs)]
    references = [("reference_motor", get_nema17_reference_motor, -15),
                  ("reference_coupler", get_nema17_reference_coupler, 15)]
    if support != "direct":
        references.append(("reference_bearing", get_nema17_reference_bearing, 22))
        references.append(("reference_stack_fasteners", get_nema17_reference_stack_fasteners, 0))
    for name, drawing, separation in references:
        reference = oobb.get_default_thing(type=name)
        drawing(reference, **kwargs)
        thing["additional_outputs"][name] = reference["components"]
        printed.append(nema17_group(reference["components"], **kwargs))
        exploded.append(nema17_group(reference["components"], pos=[0, 0, separation], **kwargs))
    thing["additional_outputs"]["assembly"] = [nema17_group(printed, pos=mount_pos, rot=mount_rot, **kwargs)]
    thing["additional_outputs"]["exploded"] = [nema17_group(exploded, pos=mount_pos, rot=mount_rot, **kwargs)]
    thing["depth_mm"] = kwargs["journal_length_mm"] + 4 if support == "6810" else kwargs["depth"]


def get_holder_motor_gear_n20_assembly(thing, **kwargs):
    import n20
    n20.draw_assembly(thing, **kwargs)


def get_holder_motor_gear_n20_fit_test(thing, **kwargs):
    import n20
    n20.draw_fit_tests(thing, **kwargs)


def get_holder_motor_gear_n20_holder_only(thing, **kwargs):
    import n20_holders
    n20_holders.draw(thing, **kwargs)


def get_holder_motor_gear_n20_shaft_test(thing, **kwargs):
    import n20_holders
    n20_holders.draw_shaft_test(thing, **kwargs)


def main(**kwargs):
    make_scad(**kwargs)


def make_scad(**kwargs):
    build = scad_help.get_build_variables(scad_help.get_typ(**kwargs))
    build.update(kwargs)
    build["oomp_mode"] = "project"
    if build.get("modes", ["3dpr"]) != ["3dpr"]:
        raise ValueError("These migrated parts describe finished 3dpr geometry; use modes=['3dpr'].")
    build["parts"] = get_parts(build, "project")
    scad_help.make_parts(**build)
    if build.get("navigation", True):
        scad_help.generate_navigation(sort=[f"taxonomy_{i}" for i in range(1, 14)])


def get_parts(kwargs, oomp_mode="project"):
    parts = []
    parts_directory = os.path.join(os.path.dirname(__file__), "parts")
    if not os.path.isdir(parts_directory):
        return parts
    for folder in sorted(os.listdir(parts_directory)):
        filename = os.path.join(parts_directory, folder, "working.yaml")
        if not os.path.isfile(filename):
            continue
        with open(filename, encoding="utf-8") as handle:
            part = yaml.safe_load(handle)
        if not isinstance(part, dict) or not isinstance(part.get("oobb_details"), dict):
            continue
        # N20's old holder-plus-shaft combinations are retained under testing.
        # A preview app can keep an old STL open, so stale folders must not
        # silently re-enter the active catalogue when that file is locked.
        if part["oobb_details"].get("oobb_name") == "holder_motor_gear_n20_assembly":
            continue
        # Current catalogue values override stale generated drawing kwargs.
        part_kwargs = copy.deepcopy(kwargs)
        part_kwargs.update(copy.deepcopy(part.get("kwargs", {})))
        part_kwargs.update(copy.deepcopy(part["oobb_details"]))
        # Build controls always belong to the current invocation.
        for key in ("save_type", "overwrite", "modes", "filter", "oomp_mode"):
            if key in kwargs:
                part_kwargs[key] = kwargs[key]
        part["kwargs"] = part_kwargs
        part["oobb_name"] = part["oobb_details"]["oobb_name"]
        parts.append(part)
    return parts


def get_base(thing, **kwargs):
    raise ValueError(f"No motor drawing routine for {kwargs.get('oobb_name', kwargs.get('type'))!r}")


# TT V2 helpers keep every actual feature in the native component pipeline.
# Dimensions and placements are catalogue kwargs, never read from generated STL.
def tt_v2_add(thing, base, shape, typ="positive", **fields):
    p3 = copy.deepcopy(base)
    for key in ("pieces", "radius", "radius_name", "radius_1", "radius_2",
                "size", "rot", "r", "zz", "depth"):
        p3.pop(key, None)
    p3.update(type=typ, shape=shape)
    p3.update(copy.deepcopy(fields))
    oobb.append_full(thing, **p3)


def tt_v2_group(components, base, pos=None, rot=None, typ="positive"):
    p = copy.deepcopy(base)
    p.pop("pieces", None)
    p.update(type="rotation", typetype=typ, pos=pos or [0,0,0],
             rot=rot or [0,0,0], objects=copy.deepcopy(components))
    return p


def tt_v2_double_flat(thing, base, diameter, flats, bottom, top,
                      typ="negative", trim_axis=1):
    cut = oobb.get_default_thing(type="tt_double_flat")
    tt_v2_add(cut, base, "oobb_cylinder", radius=diameter/2,
              depth=top-bottom, pos=[0,0,bottom], zz="bottom")
    for side in (-1,1):
        pos = [0,0,bottom-1]
        pos[trim_axis] = side*(flats/2+10)
        size = [40,40,top-bottom+2]
        size[trim_axis] = 20
        tt_v2_add(cut, base, "oobb_cube_center", "negative", size=size,
                  pos=pos, zz="bottom")
    thing["components"].append(tt_v2_group(cut["components"], base, typ=typ))
    thing["components_objects"].extend(cut["components_objects"])


def tt_v2_label(thing, base, text, pos, size=2, typ="negative", depth=.45):
    tt_v2_add(thing, base, "oobb_text", typ, text=text, size=size,
              depth=depth, pos=pos, font="Liberation Sans",
              halign="center", valign="center")


def tt_v2_clamp_hardware(thing, base, xs):
    # Local screw +Z maps to +Y: heads at +Y, shaft/nut towards -Y.
    # M3 x 12 seats at Y=5.5 and ends at -6.5; nut occupies -6.5..-3.2.
    for x in xs:
        tt_v2_add(thing, base, "oobb_screw_socket_cap", "negative",
            radius_name="m3", depth=base["clamp_screw_length_mm"],
            pos=[x,base["clamp_head_seat_y_mm"],base["clamp_axis_z_mm"]],
            rot=[-90,0,0], zz="none", clearance="top", nut_include=False,
            overhang=False)
        tt_v2_add(thing, base, "oobb_nut", "negative", radius_name="m3",
            depth=10, pos=[x,-13.2,base["clamp_axis_z_mm"]],
            rot=[-90,0,0], zz="bottom", overhang=False)


def get_tt_v2_cartridge(thing, **kwargs):
    """Shared keyed stem; a plain, split-pinch or two-jaw lower collar."""
    b = kwargs["cartridge_bottom_mm"]
    shoulder, top = kwargs["cartridge_shoulder_mm"], kwargs["cartridge_top_mm"]
    style = kwargs.get("style", "jaws")
    side = kwargs.get("side", 0)
    tt_v2_add(thing, kwargs, "oobb_cylinder", radius=kwargs["cartridge_diameter_mm"]/2,
              depth=shoulder-b, pos=[0,0,b], zz="bottom")
    tt_v2_double_flat(thing, kwargs, kwargs["key_diameter_mm"],
        kwargs["key_across_flats_mm"], shoulder-.01, top, "positive", trim_axis=0)
    tt_v2_double_flat(thing, kwargs,
        kwargs["shaft_diameter_mm"]+kwargs["shaft_diameter_allowance_mm"],
        kwargs["shaft_across_flats_mm"]+kwargs["shaft_flats_allowance_mm"],
        b-.1, 12.2)
    # Side-loaded retention nut is above the motor shaft tip (Z=11.7).
    tt_v2_add(thing, kwargs, "oobb_nut", "negative", radius_name="m3",
        depth=kwargs["retention_nut_depth_mm"],
        pos=[0,0,kwargs["retention_nut_bottom_mm"]], zz="bottom", overhang=False)
    tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
        depth=top-kwargs["retention_nut_bottom_mm"]+1,
        pos=[0,0,kwargs["retention_nut_bottom_mm"]])
    # Loading slot opens one hex side; nut cannot rotate in the native hex.
    tt_v2_add(thing, kwargs, "oobb_cube_center", "negative",
        size=[8,5.8,kwargs["retention_nut_depth_mm"]],
        pos=[-4,0,kwargs["retention_nut_bottom_mm"]], zz="bottom")
    if style in ("pinch", "jaws"):
        x = kwargs["clamp_axis_x_mm"]
        tt_v2_clamp_hardware(thing, kwargs, [x] if style == "pinch" else [-x,x])
        if style == "pinch":
            tt_v2_add(thing, kwargs, "oobb_cube_center", "negative",
                size=[20,kwargs["jaw_gap_mm"],shoulder-b+1],
                pos=[10,0,b-.1], zz="bottom")
        elif side:
            # Each half is cut independently, including the split in the stem.
            tt_v2_add(thing, kwargs, "oobb_cube_center", "negative",
                size=[50,30,40], pos=[0,-side*(15-kwargs["jaw_gap_mm"]/2),b-1], zz="bottom")
        else:
            tt_v2_add(thing, kwargs, "oobb_cube_center", "negative",
                size=[30,kwargs["jaw_gap_mm"],top-b+1], pos=[0,0,b-.1], zz="bottom")
    label = {"plain":"P", "pinch":"C", "jaws":"J"}[style]
    tt_v2_label(thing, kwargs, label+("A" if side==1 else "B" if side==-1 else ""),
                [0,3*side if side else 3,top-.4], size=1.8)


def get_tt_v2_bridge(thing, **kwargs):
    lo, split = kwargs["bridge_bottom_mm"], kwargs["bearing_split_mm"]
    tt_v2_add(thing, kwargs, "oobb_plate", width=3, height=3,
        depth=split-lo, holes=False, pos=[0,0,lo], zz="bottom")
    axes = [(18,0),(-18,0),(0,18),(0,-18)]
    for x,y in axes:
        tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
            depth=split-lo+2, pos=[x,y,lo-1])
    tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius=12.25,
        depth=split-lo+2, pos=[0,0,lo-1])
    tt_v2_add(thing, kwargs, "oobb_hole", "negative",
        radius=(27+kwargs["bearing_diameter_clearance_mm"])/2,
        depth=split-kwargs["bearing_bottom_mm"]+1,
        pos=[0,0,kwargs["bearing_bottom_mm"]])
    # Keep a screwdriver path to the motor screws with the bridge installed.
    for y in (-kwargs["motor_mount_pitch_mm"]/2,kwargs["motor_mount_pitch_mm"]/2):
        tt_v2_add(thing,kwargs,"oobb_hole","negative",radius=3.4,
                  pos=[kwargs["motor_mount_x_mm"],y,lo-1],depth=split-lo+2)
    # A pair of radial driver bores reaches the optional jaw screws through
    # the solid wall when the coupling is aligned with the access side.
    for x in (-kwargs["clamp_axis_x_mm"],kwargs["clamp_axis_x_mm"]):
        tt_v2_add(thing,kwargs,"oobb_cylinder","negative",radius=1.75,depth=23,
                  pos=[x,0,kwargs["clamp_axis_z_mm"]],rot=[-90,0,0],zz="bottom")
    nema17_grid(thing,3,3,split-lo,bottom=lo,
        exclusions=[(0,0,13.65,"6704 seat")]+[(x,y,3.5,"bridge screw") for x,y in axes],
        label="tt_bridge", **kwargs)


def get_tt_v2_bearing_retainer(thing, **kwargs):
    lo, top = kwargs["bearing_split_mm"], kwargs["retainer_top_mm"]
    tt_v2_add(thing, kwargs, "oobb_plate", width=3, height=3, depth=top-lo,
              holes=False, pos=[0,0,lo], zz="bottom")
    tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius=12.25,
              depth=top-lo+2, pos=[0,0,lo-1])
    tt_v2_add(thing, kwargs, "oobb_hole", "negative",
        radius=(27+kwargs["bearing_diameter_clearance_mm"])/2,
        depth=kwargs["bearing_bottom_mm"]+4.2-lo+.1, pos=[0,0,lo-.1])
    axes = [(18,0),(-18,0),(0,18),(0,-18)]
    for x,y in axes:
        tt_v2_add(thing, kwargs, "oobb_screw_countersunk", "negative",
            radius_name="m3", depth=kwargs["bridge_rear_screw_length_mm"] if x==-18 else kwargs["bridge_screw_length_mm"],
            pos=[x,y,top-(kwargs["rear_bridge_head_recess_mm"] if x==-18 else 0)], zz="none", nut_include=False, overhang=True, clearance="top")
    # Keep a screwdriver path to the motor screws with the bridge installed.
    for y in (-kwargs["motor_mount_pitch_mm"]/2,kwargs["motor_mount_pitch_mm"]/2):
        tt_v2_add(thing,kwargs,"oobb_hole","negative",radius=3.4,
                  pos=[kwargs["motor_mount_x_mm"],y,lo-1],depth=9)
    nema17_grid(thing,3,3,top-lo,bottom=lo,
        exclusions=[(0,0,13.65,"6704 seat")]+[(x,y,3.5,"bridge screw") for x,y in axes],
        label="tt_retainer", **kwargs)


def get_tt_v2_carrier(thing, **kwargs):
    # The clamp is a separate body, so closing it cannot ovalise this journal.
    bottom, lip = kwargs["carrier_bottom_mm"], kwargs["carrier_lip_bottom_mm"]
    split, out = kwargs["output_split_mm"], kwargs["output_bottom_mm"]
    for r,lo,hi in [((20-kwargs["journal_diameter_clearance_mm"])/2,bottom,lip+.01),
                    (11.3,lip,out+.01),(kwargs["output_diameter_mm"]/2,out,split)]:
        tt_v2_add(thing, kwargs, "oobb_cylinder", radius=r, depth=hi-lo,
                  pos=[0,0,lo], zz="bottom")
    tt_v2_double_flat(thing, kwargs, kwargs["key_diameter_mm"]+kwargs["key_clearance_mm"],
        kwargs["key_across_flats_mm"]+kwargs["key_clearance_mm"],
        bottom-.1, kwargs["cartridge_top_mm"], trim_axis=0)
    tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
              depth=split-kwargs["cartridge_top_mm"]+1, pos=[0,0,kwargs["cartridge_top_mm"]])
    for x,y in [(-7.5,0),(7.5,0),(0,-7.5),(0,7.5)]:
        tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
            depth=split-out+2, pos=[x,y,out-1])
        tt_v2_add(thing, kwargs, "oobb_nut", "negative", radius_name="m3",
            depth=kwargs["output_nut_depth_mm"],
            pos=[x,y,split-kwargs["output_nut_depth_mm"]], zz="bottom",
            overhang=False, rot=[0,0,30 if x else 0])
    tt_v2_label(thing,kwargs,"HUB",[0,12,split-.4],size=1.8)


def get_tt_v2_output_lid(thing, **kwargs):
    lo, top = kwargs["output_split_mm"], kwargs["output_top_mm"]
    tt_v2_add(thing, kwargs, "oobb_cylinder", radius=kwargs["output_diameter_mm"]/2,
              depth=top-lo, pos=[0,0,lo], zz="bottom")
    for x,y in [(-7.5,0),(7.5,0),(0,-7.5),(0,7.5)]:
        tt_v2_add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
                  depth=top-lo+2, pos=[x,y,lo-1])
    tt_v2_add(thing, kwargs, "oobb_screw_socket_cap", "negative", radius_name="m3",
        depth=kwargs["retention_screw_length_mm"], pos=[0,0,lo], zz="none",
        nut_include=False, overhang=False, clearance="top")
    tt_v2_label(thing, kwargs, "CAP", [0,11,top-.4], size=2.5)


def tt_mount_box(thing, p, x0, x1, width, bottom, top, typ="negative"):
    tt_v2_add(thing,p,"oobb_cube_center",typ,size=[x1-x0,width,top-bottom],
              pos=[(x0+x1)/2,0,bottom],zz="bottom")


def tt_mount_pocket(thing, p, lower=False):
    c, face = p["body_clearance_mm"], p["motor_inset_mm"]
    back = face-p["case_thickness_mm"]
    bottom, top = (back-c,1) if lower else (-1,face)
    tt_mount_box(thing,p,p["case_rear_mm"]-c,p["case_front_mm"]+c,
                 p["case_width_mm"]+2*c,bottom,top)
    # Open end accepts the can, end boss and soldered leads. Allow the deeper
    # drawing envelope in addition to the shorter STEP can cross section.
    can_step = (p["can_thickness_mm"]-p["case_thickness_mm"])/2
    tt_mount_box(thing,p,-58,-24.2+c,p["can_width_mm"]+2*c,
                 back-can_step-c if lower else -1,1 if lower else face+can_step+c)
    if lower:
        tt_mount_box(thing,p,10,16+c,5+2*c,face-9.3-1.4-c,1)
        tt_v2_add(thing,p,"oobb_hole","negative",radius=2+c,
                  depth=4,pos=[-11.25,0,back-2-c])


def tt_mount_fasteners(thing, p, lower=False):
    for y in (-p["motor_mount_pitch_mm"]/2,p["motor_mount_pitch_mm"]/2):
        x = p["motor_mount_x_mm"]
        if lower:
            tt_v2_add(thing,p,"oobb_hole","negative",radius_name="m3",
                      depth=25,pos=[x,y,-24])
            # Outside-loading recess: shell provides the anti-rotation walls
            # and shoulder. The bolt tip stays inside the external surface.
            tt_v2_add(thing,p,"oobb_nut","negative",radius_name="m3",
                      depth=p["motor_nut_recess_mm"],pos=[x,y,-23.5],
                      zz="bottom",overhang=False)
        else:
            tt_v2_add(thing,p,"oobb_screw_countersunk","negative",radius_name="m3",
                      depth=p["motor_screw_length_mm"],pos=[x,y,7],zz="none",
                      nut_include=False,overhang=False,clearance="top")


def tt_mount_stationary(thing, p, lower):
    bottom, top = (-23.5,0) if lower else (0,p["bridge_bottom_mm"])
    tt_v2_add(thing,p,"oobb_plate",width=5,height=3,depth=top-bottom,
              holes=False,pos=[-15,0,bottom],zz="bottom")
    tt_mount_pocket(thing,p,lower)
    tt_mount_fasteners(thing,p,lower)
    if not lower:
        # The thicker plate supports the rear bridge nut. Restore lateral
        # insertion clearance for the two optional jaw nuts above its face.
        for x in (-p["clamp_axis_x_mm"],p["clamp_axis_x_mm"]):
            tt_v2_add(thing,p,"oobb_cube_center","negative",size=[7.4,24,1.2],
                      pos=[x,-13,7],zz="bottom")
    def hole(x,y,radius_name):
        tt_v2_add(thing,p,"oobb_hole","negative",radius_name=radius_name,
                  depth=top-bottom+2,pos=[x,y,bottom-1])
    for x in (-45,-30,-15,15):
        for y in (-15,15):
            hole(x,y,"m6")
    for x,y in [(-22.5,-15),(-22.5,15),(-7.5,-15),(-7.5,15),
                (-45,-7.5),(-45,7.5),(15,-7.5),(15,7.5)]:
        hole(x,y,"m3")
    for x in (-37.5,7.5):
        for y in (-15,15):
            if lower:
                tt_v2_add(thing,p,"oobb_screw_countersunk","negative",radius_name="m3",
                          depth=25,pos=[x,y,-18],rot=[0,180,0],zz="none",
                          nut_include=False,overhang=False,clearance="top")
            else:
                hole(x,y,"m3")
                tt_v2_add(thing,p,"oobb_nut","negative",radius_name="m3",
                          depth=top-4,pos=[x,y,top],zz="top",overhang=False)
    tt_v2_add(thing,p,"oobb_hole","negative",radius=5.2 if lower else 12,
              depth=top-bottom+2,pos=[0,0,bottom-1])
    for x,y in ((-18,0),(18,0),(0,-18),(0,18)):
        if lower:
            if x!=-18:
                tt_v2_add(thing,p,"oobb_hole","negative",radius_name="m3",
                          depth=3,pos=[x,y,-2])
        else:
            hole(x,y,"m3")
            # Rear nut loads from the gearbox side before inserting the motor.
            # The 8 mm plate leaves a 2.1 mm retaining shoulder above its hex.
            floor = p["motor_inset_mm"] if x==-18 else 0
            depth = p["rear_bridge_nut_roof_mm"]-floor if x==-18 else oobb.gv("nut_depth_m3","3dpr")
            tt_v2_add(thing,p,"oobb_nut","negative",radius_name="m3",
                      depth=depth,pos=[x,y,floor],zz="bottom",overhang=False)


def get_holder_motor_gear_tt_v2_mount_tests(thing, **kwargs):
    thing["additional_outputs"] = {}
    thing["mount_samples"] = []
    for row,c in enumerate(kwargs["mounting_fit_sides_mm"]):
        p = dict(kwargs,body_clearance_mm=c)
        item = oobb.get_default_thing(type="tt_mount_seat")
        tt_v2_add(item,p,"oobb_plate",width=5,height=2,depth=7,
                  pos=[-15,0,0],holes=False,zz="bottom")
        tt_mount_pocket(item,p)
        tt_mount_fasteners(item,p)
        tt_v2_add(item,p,"oobb_hole","negative",radius=5.2,depth=9,pos=[0,0,-1])
        code = chr(ord("A")+row)
        tt_v2_add(item,p,"oobb_text","negative",text=f"{code} {c:.1f}",size=2.6,
                  depth=.5,pos=[16.7,0,.45],rot=[180,0,90],
                  font="Liberation Sans",halign="center",valign="center")
        # Rotate the label onto the visible print face by engraving the
        # assembled underside. Text is mirrored around Y on flipping the part.
        printable = tt_v2_group(item["components"],p,pos=[0,0,7],rot=[180,0,0])
        name = "seat_"+code
        thing["additional_outputs"][name] = [printable]
        thing["components"].append(tt_v2_group([printable],p,pos=[0,row*35,0]))
        thing["components_objects"].extend(item["components_objects"])
        thing["mount_samples"].append(dict(name=name,clearance_per_side_mm=c))
    bar = oobb.get_default_thing(type="tt_mount_nut_bar")
    x = kwargs["motor_mount_x_mm"]
    tt_mount_box(bar,kwargs,x-5,x+5,29,-23.5,0,"positive")
    # A narrow floor spine joins the can, locating-pin and second-shaft gauges
    # to the motor bolt station while leaving the motor sides visible.
    tt_mount_box(bar,kwargs,-46,1,8,-23.5,-19.5,"positive")
    tt_mount_box(bar,kwargs,-46,-42,29,-23.5,0,"positive")
    tt_mount_box(bar,kwargs,-14.5,-8,9,-23.5,-15,"positive")
    tt_v2_add(bar,kwargs,"oobb_cylinder",radius=8,depth=8.5,
              pos=[0,0,-23.5],zz="bottom")
    tt_v2_add(bar,kwargs,"oobb_hole","negative",radius=5.2,depth=12,pos=[0,0,-24])
    tt_mount_pocket(bar,kwargs,lower=True)
    tt_mount_fasteners(bar,kwargs,lower=True)
    printable = tt_v2_group(bar["components"],kwargs,pos=[-x,0,23.5])
    thing["additional_outputs"]["nut_bar"] = [printable]
    thing["components"].append(tt_v2_group([printable],kwargs,pos=[-10,105,0]))
    thing["components_objects"].extend(bar["components_objects"])
    motor = oobb.get_default_thing(type="tt_mount_reference")
    tt_mount_reference(motor,kwargs)
    thing["additional_outputs"]["motor_in_saddle"] = [tt_v2_group(bar["components"],kwargs),
        tt_v2_group(motor["components"],kwargs)]
    thing["depth_mm"] = 23.5


def tt_mount_reference(thing,p):
    # Assembly axes X/Y/Z correspond to STEP Z/X/Y. Shaft face is Z=3.
    face = p["motor_inset_mm"]
    mid = face-p["case_thickness_mm"]/2
    back = face-p["case_thickness_mm"]
    # Straight gearbox sidewalls and rounded front corners, front ear, mounting
    # pair and locating pin. End of can is stepped down to the bearing boss.
    front = p["case_front_mm"]
    width = p["case_width_mm"]
    tt_mount_box(thing,p,p["case_rear_mm"],front-4,width,back,face,"positive")
    tt_mount_box(thing,p,front-4.1,front,width-8,back,face,"positive")
    for y in (-width/2+4,width/2-4):
        tt_v2_add(thing,p,"oobb_cylinder",radius=4,depth=face-back,
                  pos=[front-4,y,back],zz="bottom")
    tt_mount_box(thing,p,front-.1,16,5,mid-1.4,mid+1.4,"positive")
    tt_v2_add(thing,p,"oobb_hole","negative",radius=1.5,depth=4,pos=[14,0,mid-2])
    tt_v2_add(thing,p,"oobb_cylinder",radius=2,depth=2.1,
              pos=[-11.25,0,back-2],zz="bottom")
    # The 130 can has flat sides across Z. Clip a round barrel locally so
    # these flats never trim the adjacent gearbox or the end boss.
    can = oobb.get_default_thing(type="tt_130_can")
    tt_v2_add(can,p,"oobb_cylinder",radius=9.95,depth=14.2,
              pos=[-50.8,0,mid+.6],rot=[0,90,0],zz="bottom")
    for z in (mid-16.9,mid+8.1):
        tt_mount_box(can,p,-52,-36,24,z,z+10)
    thing["components"].append(tt_v2_group(can["components"],p))
    for start,radius,length in ((-52.6,4.95,2.1),(-54.6,1,2.1)):
        tt_v2_add(thing,p,"oobb_cylinder",radius=radius,depth=length,
                  pos=[start,0,mid],rot=[0,90,0],zz="bottom")
    for y in (-5,5):
        tt_v2_add(thing,p,"oobb_cube_center",size=[2,6,.5],
                  pos=[-48,y,mid+8],zz="bottom")
    for y in (-p["motor_mount_pitch_mm"]/2,p["motor_mount_pitch_mm"]/2):
        tt_v2_add(thing,p,"oobb_hole","negative",radius=1.5,depth=face-back+2,
                  pos=[p["motor_mount_x_mm"],y,back-1])
    tt_v2_double_flat(thing,p,p["shaft_diameter_mm"],p["shaft_across_flats_mm"],
                      back-9,face+9,typ="positive")


def tt_v2_draw_piece(name, base):
    piece = oobb.get_default_thing(type="tt_v2_"+name)
    p = copy.deepcopy(base)
    p.pop("pieces",None)
    p["prepare_print"] = False
    if name == "holder":
        tt_mount_stationary(piece,p,lower=False)
    elif name == "clamshell":
        tt_mount_stationary(piece,p,lower=True)
    else:
        globals()["get_tt_v2_"+name](piece, **p)
    return piece


def tt_v2_print_piece(piece, definition, base):
    return tt_v2_group(piece["components"],base,
        pos=definition["print_offset"],rot=definition["print_rot"])


def get_holder_motor_gear_tt_v2(thing, **kwargs):
    thing["additional_outputs"] = {}
    thing["grid_hole_audit"] = []
    assembled, exploded = [], []
    holder_print, shaft_print = [], []
    stationary, rotating = [], []
    selected_role = kwargs["print_role"]
    selected_exploded = []
    for name, definition in kwargs["pieces"].items():
        p = dict(kwargs, **definition)
        piece = tt_v2_draw_piece(definition["drawing"],p)
        printable = tt_v2_print_piece(piece,definition,kwargs)
        if definition["role"] == selected_role:
            thing["additional_outputs"][name] = [printable]
            thing["components"].append(tt_v2_group([printable],kwargs,pos=definition["print_pos"]))
        (shaft_print if definition["role"] == "shaft" else holder_print).append(
            tt_v2_group([printable],kwargs,pos=definition["print_pos"]))
        group = tt_v2_group(piece["components"],kwargs)
        assembled.append(group)
        (rotating if definition["role"] == "shaft" else stationary).append(group)
        exploded.append(tt_v2_group([group],kwargs,pos=definition["exploded_pos"]))
        if definition["role"] == selected_role:
            selected_exploded.append(exploded[-1])
        thing["grid_hole_audit"].extend(piece.get("grid_hole_audit",[]))
        thing["components_objects"].extend(piece["components_objects"])
    motor = oobb.get_default_thing(type="tt_v2_motor")
    tt_mount_reference(motor,kwargs)
    bearing = oobb.get_default_thing(type="tt_v2_bearing")
    get_motor_gear_tt_reference_bearing(bearing,**kwargs)
    ref_bearing = tt_v2_group(bearing["components"],kwargs,pos=[0,0,kwargs["bearing_bottom_mm"]+2])
    printed_assembly = stationary if selected_role=="holder" else assembled
    thing["additional_outputs"].update(assembled_printed=printed_assembly,
        assembly=printed_assembly+[tt_v2_group(motor["components"],kwargs),ref_bearing],
        exploded=(selected_exploded if selected_role=="holder" else exploded)+[tt_v2_group(motor["components"],kwargs,pos=[0,0,-13]),
                           tt_v2_group([ref_bearing],kwargs,pos=[0,0,32])],
        stationary=stationary,
        reference_motor=motor["components"], reference_bearing=[ref_bearing])
    if selected_role=="shaft":
        thing["additional_outputs"].update(rotating=rotating,shaft_print=shaft_print)
    else:
        thing["additional_outputs"].update(holder_print=holder_print,holder_assembly=stationary)
    thing["depth_mm"] = kwargs["depth"]
    thing["assembly_note"] = (
        "Simplified stationary holder only: main plate, lower clamshell, bearing bridge and retainer. No shaft/output parts or wire-management lid."
        if selected_role=="holder" else
        "Full reference: motor + holder; clamp jaws on shaft; fit bearing to carrier; lower keyed carrier onto jaws; bridge/cap; output lid and M3 x 10.")


def get_holder_motor_gear_tt_v2_shaft_parts(thing, **kwargs):
    get_holder_motor_gear_tt_v2(thing, **kwargs)


def get_holder_motor_gear_tt_v2_shaft_fit(thing, **kwargs):
    thing["additional_outputs"], thing["fit_test_samples"] = {}, []
    pitch_x, pitch_y = kwargs["fit_pitch_mm"]
    for row,f in enumerate(kwargs["fit_flats_adjustments_mm"]):
        for col,d in enumerate(kwargs["fit_diameter_adjustments_mm"]):
            label = f"D{d:+.1f} F{f:+.1f}"
            coupon = oobb.get_default_thing(type="tt_shaft_fit")
            tt_v2_add(coupon,kwargs,"oobb_cylinder",radius=7,depth=10,pos=[0,0,0],zz="bottom")
            tt_v2_add(coupon,kwargs,"oobb_cube_center",size=[25,10,1.5],pos=[0,-9,0],zz="bottom")
            tt_v2_double_flat(coupon,kwargs,kwargs["shaft_diameter_mm"]+d,
                kwargs["shaft_across_flats_mm"]+f,-.1,7.7)
            # A small vent avoids trapped air; socket itself has a depth stop.
            tt_v2_add(coupon,kwargs,"oobb_hole","negative",radius=1,depth=4,pos=[0,0,7])
            tt_v2_label(coupon,kwargs,label,[0,-10,1.5],size=1.65,typ="positive")
            position = [col*pitch_x,row*pitch_y,0]
            thing["components"].append(tt_v2_group(coupon["components"],kwargs,pos=position))
            key = f"shaft_d{col}_f{row}"
            thing["additional_outputs"][key] = coupon["components"]
            thing["components_objects"].extend(coupon["components_objects"])
            thing["fit_test_samples"].append(dict(name=key,label=label,pos=position,
                diameter_mm=kwargs["shaft_diameter_mm"]+d,
                flats_mm=kwargs["shaft_across_flats_mm"]+f, socket_depth_mm=7.7))
    for col,depth in enumerate(kwargs["fit_depths_mm"]):
        coupon = oobb.get_default_thing(type="tt_depth_fit")
        tt_v2_add(coupon,kwargs,"oobb_cylinder",radius=7,depth=12,pos=[0,0,0],zz="bottom")
        tt_v2_add(coupon,kwargs,"oobb_cube_center",size=[25,10,1.5],pos=[0,-9,0],zz="bottom")
        tt_v2_double_flat(coupon,kwargs,kwargs["shaft_diameter_mm"]+kwargs["shaft_diameter_allowance_mm"],
            kwargs["shaft_across_flats_mm"]+kwargs["shaft_flats_allowance_mm"],-.1,depth)
        tt_v2_add(coupon,kwargs,"oobb_hole","negative",radius=1,depth=13-depth,pos=[0,0,depth])
        tt_v2_label(coupon,kwargs,f"DEPTH {depth:g}",[0,-10,1.5],size=1.8,typ="positive")
        position = [col*pitch_x,3*pitch_y,0]
        key = f"depth_{depth:g}"
        thing["components"].append(tt_v2_group(coupon["components"],kwargs,pos=position))
        thing["additional_outputs"][key] = coupon["components"]
        thing["components_objects"].extend(coupon["components_objects"])
        thing["fit_test_samples"].append(dict(name=key,label=key,pos=position,
            diameter_mm=kwargs["shaft_diameter_mm"]+kwargs["shaft_diameter_allowance_mm"],
            flats_mm=kwargs["shaft_across_flats_mm"]+kwargs["shaft_flats_allowance_mm"],socket_depth_mm=depth))
    pocket = oobb.get_default_thing(type="tt_motor_pocket_coupon")
    tt_v2_add(pocket,kwargs,"oobb_plate",width=5,height=3,depth=4,holes=False,
              pos=[-15,0,0],zz="bottom")
    c = kwargs["body_clearance_mm"]
    tt_mount_box(pocket,kwargs,kwargs["case_rear_mm"]-c,kwargs["case_front_mm"]+c,
                 kwargs["case_width_mm"]+2*c,1,5)
    tt_mount_box(pocket,kwargs,-58,-24.2+c,kwargs["can_width_mm"]+2*c,1,5)
    for y in (-kwargs["motor_mount_pitch_mm"]/2,kwargs["motor_mount_pitch_mm"]/2):
        tt_v2_add(pocket,kwargs,"oobb_hole","negative",radius_name="m3",
                  depth=6,pos=[kwargs["motor_mount_x_mm"],y,-1])
    tt_v2_add(pocket,kwargs,"oobb_hole","negative",radius=3.5,depth=6,pos=[0,0,-1])
    tt_v2_label(pocket,kwargs,"GEARBOX FACE +0.2/SIDE",[-15,-17,4],size=2,typ="positive")
    thing["additional_outputs"]["motor_pocket"] = pocket["components"]
    thing["components_objects"].extend(pocket["components_objects"])
    thing["components"].append(tt_v2_group(pocket["components"],kwargs,
        pos=kwargs["motor_pocket_test_pos"]))
    thing["depth_mm"] = 12


def get_tt_v2_collet_body(thing, **kwargs):
    b = kwargs["cartridge_bottom_mm"]
    tt_v2_add(thing,kwargs,"oobb_cylinder",radius=11.3,depth=8,
              pos=[0,0,b],zz="bottom")
    taper_height = 8-kwargs["collet_draw_mm"]
    tt_v2_add(thing,kwargs,"oobb_cylinder","negative",
        radius_1=4.3-.2/(taper_height-.2),radius_2=5.3,
        depth=taper_height+.01,pos=[0,0,b-.01],zz="bottom")
    tt_v2_add(thing,kwargs,"oobb_hole","negative",radius=6.7,
        depth=kwargs["collet_draw_mm"]+.1,pos=[0,0,b+taper_height])
    for x in (-8,8):
        tt_v2_add(thing,kwargs,"oobb_hole","negative",radius_name="m2d5",
                  depth=10,pos=[x,0,b-1])
        tt_v2_add(thing,kwargs,"oobb_nut","negative",radius_name="m2d5",
                  depth=2.5,pos=[x,0,b],zz="bottom",overhang=False)
    tt_v2_label(thing,kwargs,"T1",[0,-9,b+8-.4],size=1.8)


def get_tt_v2_collet_insert(thing, **kwargs):
    b = kwargs["cartridge_bottom_mm"]
    # Drawing is the fully drawn position: 1 mm compression stroke. The
    # bottom stays 0.7 mm above the motor face; it cannot bottom on that face.
    draw = kwargs["collet_draw_mm"]
    lo, hi = b+.2, b+8-draw
    tt_v2_add(thing,kwargs,"oobb_cylinder",radius_1=4.45,radius_2=5.45,
              depth=hi-lo,pos=[0,0,lo],zz="bottom")
    tt_v2_add(thing,kwargs,"oobb_cylinder",radius=6.5,depth=draw+.01,
              pos=[0,0,hi-.01],zz="bottom")
    tt_v2_double_flat(thing,kwargs,
        kwargs["shaft_diameter_mm"]+kwargs["shaft_diameter_allowance_mm"],
        kwargs["shaft_across_flats_mm"]+kwargs["shaft_flats_allowance_mm"],lo-.1,b+8.1)
    # Four flexible fingers hang from an unslit root at the flange. Print the
    # flange on the bed so the fingers grow independently without supports.
    for axis in (0,1):
        size = [.6,20,hi-lo-.7]
        if axis: size = [20,.6,hi-lo-.7]
        tt_v2_add(thing,kwargs,"oobb_cube_center","negative",size=size,
                  pos=[0,0,lo-.1],zz="bottom")
    tt_v2_label(thing,kwargs,"T2",[0,5.4,b+8-.4],size=1.5)


def get_tt_v2_collet_cap(thing, **kwargs):
    b, shoulder, top = kwargs["cartridge_bottom_mm"],kwargs["cartridge_shoulder_mm"],kwargs["cartridge_top_mm"]
    tt_v2_add(thing,kwargs,"oobb_cylinder",radius=11.3,depth=shoulder-(b+8),
              pos=[0,0,b+8],zz="bottom")
    tt_v2_double_flat(thing,kwargs,kwargs["key_diameter_mm"],
        kwargs["key_across_flats_mm"],shoulder-.01,top,"positive",trim_axis=0)
    tt_v2_add(thing,kwargs,"oobb_hole","negative",radius=3.1,depth=1,
              pos=[0,0,b+7.9])
    tt_v2_add(thing,kwargs,"oobb_nut","negative",radius_name="m3",
        depth=kwargs["retention_nut_depth_mm"],pos=[0,0,kwargs["retention_nut_bottom_mm"]],
        zz="bottom",overhang=False)
    tt_v2_add(thing,kwargs,"oobb_cube_center","negative",size=[8,5.8,3.3],
        pos=[-4,0,kwargs["retention_nut_bottom_mm"]],zz="bottom")
    tt_v2_add(thing,kwargs,"oobb_hole","negative",radius_name="m3",depth=6,
              pos=[0,0,kwargs["retention_nut_bottom_mm"]])
    for x in (-8,8):
        tt_v2_add(thing,kwargs,"oobb_screw_countersunk","negative",radius_name="m2d5",
            depth=10,pos=[x,0,shoulder],zz="none",nut_include=False,
            overhang=False,clearance="top")
    tt_v2_label(thing,kwargs,"T3",[0,3,top-.4],size=1.8)


def get_tt_v2_stock_adapter(thing, **kwargs):
    # Stock 3769: ~26 mm pitch, 4.2 mm holes. Rotate this pattern 45 degrees
    # so its M4 fasteners do not merge into the four OOBB output nut pockets.
    tt_v2_add(thing,kwargs,"oobb_plate",width=3,height=3,depth=6,holes=False,
              pos=[0,0,0],zz="bottom")
    a = kwargs["stock_hole_pitch_mm"]/(2*math.sqrt(2))
    for side in (-1,1):
        # The installed library has M4 clearance holes, but no M4 socket-head
        # profile. Use through holes and external washers/heads here.
        tt_v2_add(thing,kwargs,"oobb_hole","negative",radius_name="m4",
            depth=8,pos=[side*a,side*a,-1])
    pocket = oobb.get_default_thing(type="stock_hub_locator")
    dims = kwargs["stock_body_mm"]
    tt_v2_add(pocket,kwargs,"oobb_cube_center",size=[dims[0]+kwargs["stock_pocket_allowance_mm"],
        dims[1]+kwargs["stock_pocket_allowance_mm"],2.3],pos=[0,0,-.1],zz="bottom")
    thing["components"].append(tt_v2_group(pocket["components"],kwargs,rot=[0,0,45],typ="negative"))
    for x,y in [(-7.5,0),(7.5,0),(0,-7.5),(0,7.5)]:
        tt_v2_add(thing,kwargs,"oobb_hole","negative",radius_name="m3",depth=8,pos=[x,y,-1])
        tt_v2_add(thing,kwargs,"oobb_nut","negative",radius_name="m3",depth=3.3,
                  pos=[x,y,2.7],zz="bottom",overhang=False,rot=[0,0,30 if x else 0])
    tt_v2_label(thing,kwargs,"STOCK 26",[0,-18,5.6],size=2.3)


def get_holder_motor_gear_tt_v2_coupling_tests(thing, **kwargs):
    thing["additional_outputs"], thing["coupling_test_samples"] = {}, []
    b = kwargs["cartridge_bottom_mm"]
    for style in kwargs["coupling_styles"]:
        pos = kwargs["coupling_test_positions"][style]
        pieces, assembled = [], []
        if style in ("plain","pinch","jaws"):
            for side in ([1,-1] if style=="jaws" else [0]):
                part = tt_v2_draw_piece("cartridge",dict(kwargs,style=style,side=side))
                if side:
                    definition = dict(print_offset=[0,b if side==1 else -b,-kwargs["jaw_gap_mm"]/2],
                                      print_rot=[90 if side==1 else -90,0,0])
                    printable = tt_v2_print_piece(part,definition,kwargs)
                    placement = [pos[0]+(0 if side==1 else 28),pos[1],0]
                else:
                    printable = tt_v2_group(part["components"],kwargs,pos=[0,0,-b])
                    placement = pos
                name = style+("_a" if side==1 else "_b" if side==-1 else "")
                thing["additional_outputs"][name] = [printable]
                thing["components_objects"].extend(part["components_objects"])
                group = tt_v2_group([printable],kwargs,pos=placement)
                pieces.append(group)
                assembled.append(tt_v2_group(part["components"],kwargs))
                thing["coupling_test_samples"].append(dict(name=name,style=style,side=side,pos=placement))
        elif style=="collet":
            for i,name in enumerate(("collet_body","collet_insert","collet_cap")):
                part = tt_v2_draw_piece(name,kwargs)
                lo = {"collet_body":b,"collet_insert":b+.2,"collet_cap":b+8}[name]
                printable = tt_v2_group(part["components"],kwargs,
                    pos=[0,0,b+8] if name=="collet_insert" else [0,0,-lo],
                    rot=[180,0,0] if name=="collet_insert" else [0,0,0])
                placement = [pos[0]+i*30,pos[1],0]
                pieces.append(tt_v2_group([printable],kwargs,pos=placement))
                assembled.append(tt_v2_group(part["components"],kwargs))
                thing["additional_outputs"][name] = [printable]
                thing["components_objects"].extend(part["components_objects"])
                thing["coupling_test_samples"].append(dict(name=name,style=style,pos=placement))
        else:
            part = tt_v2_draw_piece("stock_adapter",kwargs)
            printable = tt_v2_group(part["components"],kwargs,pos=[0,0,6],rot=[180,0,0])
            pieces.append(tt_v2_group([printable],kwargs,pos=pos))
            assembled.append(tt_v2_group(part["components"],kwargs))
            thing["additional_outputs"]["stock_adapter"] = [printable]
            thing["components_objects"].extend(part["components_objects"])
            thing["coupling_test_samples"].append(dict(name="stock_adapter",style=style,pos=pos))
        thing["components"].extend(pieces)
        thing["additional_outputs"][style+"_print"] = pieces
        thing["additional_outputs"][style+"_assembly"] = assembled
    # Include the common carrier/lid once, alongside every grip style.
    for name,placement in kwargs["coupling_common_positions"].items():
        part=tt_v2_draw_piece(name,kwargs)
        definition=dict(print_offset=[0,0,kwargs["output_split_mm"]] if name=="carrier" else [0,0,-kwargs["output_split_mm"]],
                        print_rot=[180,0,0] if name=="carrier" else [0,0,0])
        printable=tt_v2_print_piece(part,definition,kwargs)
        thing["additional_outputs"][name]=[printable]
        thing["components"].append(tt_v2_group([printable],kwargs,pos=placement))
        thing["components_objects"].extend(part["components_objects"])
        thing["coupling_test_samples"].append(dict(name=name,style="common",pos=placement))
    for sample in thing["coupling_test_samples"]:
        sample.update(copy.deepcopy(kwargs["connector_test_labels"][sample["name"]]))
    legend = oobb.get_default_thing(type="tt_coupling_legend")
    tt_v2_add(legend,kwargs,"oobb_cube_center",size=[140,16,2],pos=[55,110,0],zz="bottom")
    tt_v2_label(legend,kwargs,"P PLAIN   C PINCH   JA/JB JAWS   T1/T2/T3 COLLET",[55,111.5,1.55],size=2.7)
    tt_v2_label(legend,kwargs,"STOCK 26 STOCK HUB    HUB/CAP SHARED PARTS",[55,106.5,1.55],size=2.7)
    thing["components"].extend(legend["components"])
    thing["components_objects"].extend(legend["components_objects"])
    thing["additional_outputs"]["legend"] = legend["components"]
    thing["depth_mm"] = kwargs["depth"]



def get_holder_motor_gear_tt_assembly(thing, **kwargs):
    # One catalogue part, containing all five editable drawings. The ordinary
    # 3dpr output is the complete print layout. Named exports share its folder.
    # Sizes and all piece placements come from working_oomp_populate.get_options.
    pieces = kwargs["pieces"]
    thing["depth_mm"] = max(piece["depth"] for piece in pieces.values())
    thing["additional_outputs"] = {}

    for view in ["print", "assembly", "exploded"]:
        layout = oobb.get_default_thing(type="tt_" + view)
        for name, definition in pieces.items():
            piece = oobb.get_default_thing(type="tt_" + name)
            p2 = copy.deepcopy(kwargs)
            p2.pop("pieces")
            p2.update(copy.deepcopy(definition))
            p2["prepare_print"] = view == "print"
            drawing = globals()["get_" + p2["oobb_name"]]
            drawing(piece, **p2)

            group = copy.deepcopy(kwargs)
            group.pop("pieces")
            group["type"] = "rotation"
            group["typetype"] = "positive"
            group["pos"] = copy.deepcopy(definition[view + "_pos"])
            group["rot"] = [0, 0, 0]
            group["objects"] = piece["components"]
            layout["components"].append(group)
            if view == "print":
                # Each named piece is also exported at its own print origin.
                thing["additional_outputs"][name] = piece["components"]
                thing["components_objects"].extend(piece["components_objects"])

        if view == "print":
            thing["components"].extend(layout["components"])
            continue
        if view == "assembly":
            thing["additional_outputs"]["assembled_printed"] = copy.deepcopy(layout["components"])

        # Reference hardware is drawn here, never in the printable STL.
        bearing = oobb.get_default_thing(type="tt_reference_bearing")
        p2 = copy.deepcopy(kwargs)
        p2.pop("pieces")
        get_motor_gear_tt_reference_bearing(bearing, **p2)
        group = copy.deepcopy(p2)
        group["type"] = "rotation"
        group["typetype"] = "positive"
        group["pos"] = copy.deepcopy(pieces["bearing_plate"]["assembly_pos"])
        if view == "exploded":
            group["pos"][2] += 8
        group["rot"] = [0, 0, 0]
        group["objects"] = bearing["components"]
        layout["components"].append(group)
        if view == "assembly":
            thing["additional_outputs"]["reference_bearing"] = [group]

        motor = oobb.get_default_thing(type="tt_reference_motor")
        p2 = copy.deepcopy(kwargs)
        p2.pop("pieces")
        get_motor_gear_tt_reference_motor(motor, **p2)
        group = copy.deepcopy(p2)
        group["type"] = "rotation"
        group["typetype"] = "positive"
        group["pos"] = [0, 0, -12 if view == "exploded" else 0]
        group["rot"] = [0, 0, 0]
        group["objects"] = motor["components"]
        layout["components"].append(group)
        if view == "assembly":
            thing["additional_outputs"]["reference_motor"] = [group]
        thing["additional_outputs"][view] = layout["components"]


def get_motor_gear_tt_reference_bearing(thing, **kwargs):
    # Nominal 20 x 27 x 4 mm bearing, centred at local Z=0.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 13.5
    p3["depth"] = 4
    p3["pos"] = [0, 0, -2]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 10
    p3["depth"] = 6
    p3["pos"] = [0, 0, -3]
    oobb.append_full(thing, **p3)


def get_motor_gear_tt_reference_motor(thing, **kwargs):
    # Simplified retained motor envelope; unmeasured details are not fit masters.
    for size, pos in [
        ([48.2, 22.44, 18.6], [-10.1, 0, -15.6]),
        ([24, 20.39, 22.4], [-36.2, 0, -17.5]),
    ]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = size
        p3["pos"] = pos
        p3["zz"] = "bottom"
        oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 2.7
    p3["depth"] = 8.7
    p3["pos"] = [0, 0, 3]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)
    for side in [-1, 1]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [8, 10, 8.71]
        p3["pos"] = [0, side * 6.85, 3]
        p3["zz"] = "bottom"
        oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 2.7
    p3["depth"] = 9.3
    p3["pos"] = [0, 0, -24.9]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)
    for y in [-8.8, 8.8]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 1.5
        p3["depth"] = 21
        p3["pos"] = [-22.75, y, -19]
        oobb.append_full(thing, **p3)


def get_holder_motor_gear_tt(thing, **kwargs):
    # TT reference: source_file/tt_reference/mechanical.yaml and tt.jpg.
    # Output axis is XY=0. Motor output face is Z=3; motor hangs below it.
    # The motor drawing's X origin was its front edge: add 14 to its X values.
    # This lower half includes the stationary holder AND a separate rotating hub.
    depth_mm = kwargs.get("depth", 7)
    width_mm = kwargs.get("width", 5) * 15 - 1
    height_mm = kwargs.get("height", 3) * 15 - 1
    body_clearance_mm = kwargs.get("body_clearance_mm", 0.2)
    motor_face_z_mm = kwargs.get("motor_inset_mm", 3)
    hub_bottom_z_mm = motor_face_z_mm + 0.5
    bearing_inner_radius_mm = oobb.gv("bearing_6704_id", "3dpr")
    bearing_outer_radius_mm = oobb.gv("bearing_6704_od", "3dpr")
    # Keep the new holder deep enough for the actual 4 mm bearing. The shared
    # legacy print lookup is 3.6 mm; using it here would leave the split open.
    bearing_depth_mm = oobb.gv("bearing_6704_depth", "true") + kwargs.get("bearing_axial_clearance_mm", 0.1)
    # Same annular relief as the new plate-bearing project: a 1 mm radial gap.
    relief_mm = (bearing_outer_radius_mm - bearing_inner_radius_mm - 1) / 2
    frame_lip_radius_mm = bearing_outer_radius_mm - relief_mm
    hub_lip_radius_mm = bearing_inner_radius_mm + relief_mm
    shaft_diameter_mm = kwargs.get("shaft_diameter_mm", 5.4)
    shaft_across_flats_mm = kwargs.get("shaft_across_flats_mm", 3.7)
    shaft_clearance_mm = kwargs.get("shaft_clearance_mm", 0.15)
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm
    local = oobb.get_default_thing(type="tt_holder")

    # Stationary body. Five grid spaces, with the output on a grid intersection.
    frame = oobb.get_default_thing(type="tt_frame")
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = kwargs.get("width", 5)
    p3["height"] = kwargs.get("height", 3)
    p3["depth"] = depth_mm
    p3["holes"] = False
    p3["pos"] = [-15, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(frame, **p3)

    # Inner-race clearance through the frame; leaves the outer-race lip.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = frame_lip_radius_mm
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(frame, **p3)

    # Half of the bearing recess, open at the split face.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = bearing_outer_radius_mm
    p3["depth"] = bearing_depth_mm / 2 + 0.01
    p3["pos"] = [0, 0, depth_mm - bearing_depth_mm / 2]
    oobb.append_full(frame, **p3)

    # Tight gearbox pocket: 48.2 x 22.44, plus 0.2 mm per side.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [48.2 + 2 * body_clearance_mm, 22.44 + 2 * body_clearance_mm, motor_face_z_mm + 1]
    p3["pos"] = [-10.1, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(frame, **p3)

    # Rear can is 22.4 thick versus the 18.6 gearbox. Allow its extra 1.9 mm.
    # Its exact length is unverified: relieve the whole rear up to X=-24.2.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [24 + 2 * body_clearance_mm, 20.39 + 2 * body_clearance_mm, motor_face_z_mm + 3.1]
    p3["pos"] = [-36.2, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(frame, **p3)

    # Rear terminals / wires escape through the end of the pocket.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [12, 10, motor_face_z_mm + 3.1]
    p3["pos"] = [-49, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(frame, **p3)

    for x_mm in [-45, -30, -15, 15]:
        for y_mm in [-15, 15]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m6"
            p3["depth"] = depth_mm + 2
            p3["pos"] = [x_mm, y_mm, -1]
            oobb.append_full(frame, **p3)

    # Correct mounting pair: 22.75 behind shaft, 17.6 between holes.
    # The cap has matching edge notches for driver access after hub assembly.
    for y_mm in [-8.8, 8.8]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = "m3"
        p3["depth"] = 25
        p3["pos"] = [-22.75, y_mm, depth_mm]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = ""
        oobb.append_full(frame, **p3)

    # Four M2.5 cap screws. Three nuts are outside the motor envelope; the rear
    # nut is flush with the gearbox pocket; the cap head sits higher there.
    for x_mm, y_mm in [(-18, 0), (18, 0), (0, -18), (0, 18)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(frame, **p3)

        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m2d5"
        p3["depth"] = oobb.gv("nut_depth_m2d5", "3dpr")
        # The rear nut opens into the shallow gearbox pocket.
        p3["pos"] = [x_mm, y_mm, kwargs.get("rear_cap_nut_z_mm", motor_face_z_mm) if x_mm == -18 else 0]
        p3["overhang"] = False
        oobb.append_full(frame, **p3)

    # Extra M3 holes on the 7.5 mm half-grid; omit the four shell screws.
    for x_mm, y_mm in [
        (-22.5, -15), (-22.5, 15), (-7.5, -15), (-7.5, 15),
        (-45, -7.5), (-45, 7.5), (15, -7.5), (15, 7.5),
    ]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(frame, **p3)

    # Clamshell screws: nut pockets load from the outside of the upper holder.
    for x_mm, y_mm in [(-37.5, -15), (-37.5, 15), (7.5, -15), (7.5, 15)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(frame, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m2d5"
        p3["depth"] = oobb.gv("nut_depth_m2d5", "3dpr")
        p3["pos"] = [x_mm, y_mm, depth_mm]
        p3["zz"] = "top"
        p3["overhang"] = False
        oobb.append_full(frame, **p3)

    # Keep frame cuts local so its motor pocket does not cut the rotating hub.
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = frame["components"]
    local["components"].append(group)

    if not kwargs.get("include_hub", True):
        # V2 reuses the proven motor/frame cuts but supplies a separate spindle.
        thing["components"].extend(local["components"])
        thing["components_objects"].extend(frame["components_objects"])
        return

    hub = oobb.get_default_thing(type="tt_lower_hub")
    # The broad lip supports only the inner race; the upper step fits its bore.
    for radius_mm, bottom_mm, top_mm in [
        (hub_lip_radius_mm, hub_bottom_z_mm, depth_mm - bearing_depth_mm / 2),
        (bearing_inner_radius_mm, hub_bottom_z_mm, depth_mm),
    ]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = radius_mm
        p3["depth"] = top_mm - bottom_mm
        p3["pos"] = [0, 0, bottom_mm]
        p3["zz"] = "bottom"
        oobb.append_full(hub, **p3)

    # Double-flat socket: a cylinder with BOTH sides trimmed in a local group.
    # 5.4 / 3.7 are provisional shaft dimensions, not verified motor measurements.
    socket = oobb.get_default_thing(type="tt_socket")
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = (shaft_diameter_mm + shaft_clearance_mm) / 2
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(socket, **p3)
    for side in [-1, 1]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [20, 10, depth_mm + 4]
        p3["pos"] = [0, side * ((shaft_across_flats_mm + shaft_clearance_mm) / 2 + 5), -2]
        p3["zz"] = "bottom"
        oobb.append_full(socket, **p3)
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "negative"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = socket["components"]
    hub["components"].append(group)

    # Hub bolts now enter from the top lid. Lower nuts sit in radial hex
    # pockets, so a 10 mm socket cap can join the hub without long screw tips.
    diagonal_mm = 6.5 / (2 ** 0.5)
    for x_mm, y_mm, rotation in [(-diagonal_mm, diagonal_mm, 165), (diagonal_mm, -diagonal_mm, -15)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(hub, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m2d5"
        p3["depth"] = oobb.gv("nut_depth_m2d5", "3dpr")
        p3["pos"] = [x_mm, y_mm, hub_bottom_z_mm]
        p3["rot"] = [0, 0, rotation]
        p3["overhang"] = False
        oobb.append_full(hub, **p3)

    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = hub["components"]
    local["components"].append(group)

    # Split face on the bed; motor pocket faces up. Bearing lips bridge 1.35 mm.
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, depth_mm] if kwargs.get("prepare_print", True) else [0, 0, 0]
    group["rot"] = [180, 0, 0] if kwargs.get("prepare_print", True) else [0, 0, 0]
    group["objects"] = local["components"]
    thing["components"].append(group)
    thing["components_objects"].extend(frame["components_objects"])
    thing["components_objects"].extend(hub["components_objects"])
    thing["components_objects"].extend(socket["components_objects"])


def get_holder_motor_gear_tt_legacy(thing, **kwargs):
    width = kwargs.get("width", 6)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 6)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = -pitch_mm / 2
    top_z_mm = depth_mm
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (2, 1, "m6"),
        (3, 1, "m6"),
        (5, 1, "m6"),
        (1, 3, "m6"),
        (2, 3, "m6"),
        (3, 3, "m6"),
        (5, 3, "m6"),
        (6, 1, "m6"),
        (6, 2, "m6"),
        (6, 3, "m6"),
        (1.5, 1, "m3"),
        (1.5, 3, "m3"),
        (6, 1.5, "m3"),
        (6, 2.5, "m3"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Underside head mouths: the raised bearing screws start 1.5 mm up.
    for x_mm, y_mm, head_z_mm in [
        (-37.5, -7.5, 0), (-37.5, 7.5, 0),
        (0, -18, 1.5), (0, 18, 1.5), (18, 0, 1.5),
    ]:
        # Wire retainers and bearing attachments.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = depth_mm
        p3["pos"] = [x_mm, y_mm, head_z_mm]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = 'top'
        oobb.append_full(thing, **p3)

    # Bearing catch is a motor-specific opening, not a fastener hole.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 12.7
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    oobb.append_full(thing, **p3)

    # The shaft and front clearance are already inside the bearing catch.
    for y_mm in [-8.5, 8.5]:
        # TT motor mount; retain the original head plane at Z=4.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = 25
        p3["pos"] = [-20, y_mm, 4]
        p3["rot"] = [0, 0, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = 'top'
        oobb.append_full(thing, **p3)

    # Rear body recess.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [10, 12, 2]
    p3["pos"] = [-31, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Wire exit.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [18, 8, 2]
    p3["pos"] = [-45, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Rear locating feature.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [8, 6, 20]
    p3["pos"] = [-29.569, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)


def get_holder_motor_servo_micro(thing, **kwargs):
    width = kwargs.get("width", 4)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 9)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = -pitch_mm / 2
    top_z_mm = 0
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (2, 1, "m6"),
        (4, 1, "m6"),
        (1, 3, "m6"),
        (2, 3, "m6"),
        (4, 3, "m6"),
        (1, 2, "m6"),
        (1, 1.5, "m3"),
        (1, 2.5, "m3"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Bearing assembly recess.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 13
    p3["depth"] = 6
    p3["pos"] = [0, 0, -6]
    oobb.append_full(thing, **p3)

    # Rear mounting screw driver access.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 5
    p3["depth"] = 6
    p3["pos"] = [-20, 0, -6]
    oobb.append_full(thing, **p3)

    # Servo shaft clearance.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = 'm5'
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    oobb.append_full(thing, **p3)

    for x_mm in [-20, 8]:
        # Micro servo mounting screws.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = 'm2d5'
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, 0, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    body_width_mm = 23.75
    body_height_mm = 12
    fit_allowance_mm = 0.5
    # Servo body with a total 0.5 mm fit allowance.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [body_width_mm + fit_allowance_mm, body_height_mm + fit_allowance_mm, 26]
    p3["pos"] = [-6, 0, -26]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Mounting tabs: upper face remains at Z=-8.5.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [32 + fit_allowance_mm, body_height_mm + fit_allowance_mm, 52.5]
    p3["pos"] = [-6, 0, -61]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Full-depth fasteners put the head and nut on opposite body faces.
    for x_mm, y_mm, inverted in [(18, 0, False), (0, -18, True), (0, 18, True)]:
        # Bearing attachments; left position is intentionally omitted.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = depth_mm
        p3["pos"] = [x_mm, y_mm, bottom_z_mm if inverted else top_z_mm]
        p3["rot"] = [0, 180 if inverted else 0, 0]
        p3["zz"] = "none"
        p3["nut_include"] = True
        p3["overhang"] = True
        p3["clearance"] = ''
        oobb.append_full(thing, **p3)


def get_holder_motor_servo_standard(thing, **kwargs):
    width = kwargs.get("width", 5)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 15)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = -pitch_mm
    top_z_mm = 0
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (1, 3, "m6"),
        (2, 1, "m6"),
        (2, 3, "m6"),
        (3, 1, "m6"),
        (3, 3, "m6"),
        (5, 1, "m6"),
        (5, 3, "m6"),
        (1, 2, "m6"),
        (1.5, 1, "m3"),
        (1.5, 3, "m3"),
        (2.5, 1, "m3"),
        (2.5, 3, "m3"),
        (1, 1.5, "m3"),
        (1, 2.5, "m3"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)


    # Circular clearance beneath the shaft plane.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 12
    p3["depth"] = 250
    p3["pos"] = [0, 0, -250]
    oobb.append_full(thing, **p3)

    # Four servo mounting screws, socket heads open towards the top.
    for x_mm in [14.25, -36.25]:
        for y_mm in [-4.75, 4.75]:
            # Native socket includes the shaft hole and printable head relief.
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_socket_cap"
            p3["radius_name"] = 'm3'
            p3["depth"] = -6 - bottom_z_mm + 1
            p3["pos"] = [x_mm, y_mm, -6]
            p3["rot"] = [0, 0, 0]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = 'top'
            oobb.append_full(thing, **p3)

    body_width_mm = 42
    body_height_mm = 21
    fit_allowance_mm = 0.5
    # Servo body and upper access.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [body_width_mm + fit_allowance_mm, body_height_mm + fit_allowance_mm, 90]
    p3["pos"] = [-11, 0, -42]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Servo mounting tabs.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [50.5, 3.5, 3]
    p3["pos"] = [-11, 0, -10.5]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Driver access underneath the mounting tabs.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [61.5, 21.5, 52.5]
    p3["pos"] = [-11, 0, -63]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for y_mm in [-18, 18]:
        # Bearing attachment heads open downwards.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_socket_cap"
        p3["radius_name"] = 'm3'
        p3["depth"] = 25
        p3["pos"] = [0, y_mm, top_z_mm - 4]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = 'top'
        oobb.append_full(thing, **p3)

def get_holder_motor_servo_standard_v2(thing, **kwargs):
    """Integrated 6704 holder and female servo-spline interface; V1 is separate."""
    import servo_v2
    servo_v2.draw_assembly(thing, **kwargs)


def get_holder_motor_servo_micro_v2(thing, **kwargs):
    """Micro V2 with shared 6704 mechanics and universal floating ear clamps."""
    import servo_micro_v2
    servo_micro_v2.draw_assembly(thing, **kwargs)


def get_holder_motor_servo_standard_adapter_fit_test(thing, **kwargs):
    import servo_v2
    from servo_shared import ServoMechanics
    data = servo_v2.reference()
    data["profiles"] = {key: servo_v2.installed_profile(key, kwargs["spacer_thickness_mm"])
                        for key in data["profiles"]}
    mechanics = ServoMechanics(lambda: data, servo_v2.dimensions,
                               servo_v2.grid_layout, servo_v2.cover_joins)
    mechanics.draw_adapter_fit_test(thing, **kwargs)


def get_holder_motor_servo_micro_adapter_fit_test(thing, **kwargs):
    import servo_micro_v2
    servo_micro_v2.mechanics.draw_adapter_fit_test(thing, **kwargs)


def get_holder_motor_servo_standard_bottom(thing, **kwargs):
    width = kwargs.get("width", 5)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 28)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = -pitch_mm
    top_z_mm = -15
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (1, 3, "m6"),
        (2, 1, "m6"),
        (2, 3, "m6"),
        (3, 1, "m6"),
        (3, 3, "m6"),
        (5, 1, "m6"),
        (5, 3, "m6"),
        (1, 2, "m6"),
        (1.5, 1, "m3"),
        (1.5, 3, "m3"),
        (2.5, 1, "m3"),
        (2.5, 3, "m3"),
        (1, 1.5, "m3"),
        (1, 2.5, "m3"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Circular clearance beneath the shaft plane.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 12
    p3["depth"] = 250
    p3["pos"] = [0, 0, -250]
    oobb.append_full(thing, **p3)

    # Four servo mounting screws, socket heads open towards the top.
    for x_mm in [14.25, -36.25]:
        for y_mm in [-4.75, 4.75]:
            # Native socket includes the shaft hole and printable head relief.
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_screw_socket_cap"
            p3["radius_name"] = 'm3'
            p3["depth"] = -6 - bottom_z_mm + 1
            p3["pos"] = [x_mm, y_mm, -6]
            p3["rot"] = [0, 0, 0]
            p3["zz"] = "none"
            p3["nut_include"] = False
            p3["overhang"] = True
            p3["clearance"] = 'top'
            oobb.append_full(thing, **p3)

    body_width_mm = 42
    body_height_mm = 21
    fit_allowance_mm = 0.5
    # Servo body and upper access.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [body_width_mm + fit_allowance_mm, body_height_mm + fit_allowance_mm, 90]
    p3["pos"] = [-11, 0, -42]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Servo mounting tabs.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [50.5, 3.5, 3]
    p3["pos"] = [-11, 0, -10.5]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Driver access underneath the mounting tabs.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [61.5, 21.5, 52.5]
    p3["pos"] = [-11, 0, -63]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for y_mm in [-18, 18]:
        # Bearing attachment heads open downwards.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_socket_cap"
        p3["radius_name"] = 'm3'
        p3["depth"] = 25
        p3["pos"] = [0, y_mm, top_z_mm - 4]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = 'top'
        oobb.append_full(thing, **p3)


def get_bearing_plate_motor_gear_tt(thing, **kwargs):
    # Matching cap, drawn locally with its bearing split at Z=0.
    # In the assembly, translate this entire part by the holder's 7 mm depth.
    depth_mm = kwargs.get("depth", 6)
    bearing_inner_radius_mm = oobb.gv("bearing_6704_id", "3dpr")
    bearing_outer_radius_mm = oobb.gv("bearing_6704_od", "3dpr")
    # Keep the new holder deep enough for the actual 4 mm bearing. The shared
    # legacy print lookup is 3.6 mm; using it here would leave the split open.
    bearing_depth_mm = oobb.gv("bearing_6704_depth", "true") + kwargs.get("bearing_axial_clearance_mm", 0.1)
    relief_mm = (bearing_outer_radius_mm - bearing_inner_radius_mm - 1) / 2
    frame_lip_radius_mm = bearing_outer_radius_mm - relief_mm
    hub_lip_radius_mm = bearing_inner_radius_mm + relief_mm
    shaft_diameter_mm = kwargs.get("shaft_diameter_mm", 5.4)
    shaft_across_flats_mm = kwargs.get("shaft_across_flats_mm", 3.7)
    shaft_clearance_mm = kwargs.get("shaft_clearance_mm", 0.15)
    thing["width_mm"] = kwargs.get("width", 3) * 15 - 1
    thing["height_mm"] = kwargs.get("height", 3) * 15 - 1
    thing["depth_mm"] = depth_mm
    local = oobb.get_default_thing(type="tt_cap")
    frame = oobb.get_default_thing(type="tt_cap_frame")

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = kwargs.get("width", 3)
    p3["height"] = kwargs.get("height", 3)
    p3["depth"] = depth_mm
    p3["holes"] = False
    p3["pos"] = [0, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(frame, **p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = frame_lip_radius_mm
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(frame, **p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = bearing_outer_radius_mm
    p3["depth"] = bearing_depth_mm / 2 + 0.01
    p3["pos"] = [0, 0, -0.01]
    oobb.append_full(frame, **p3)

    for x_mm in [-15, 15]:
        for y_mm in [-15, 15]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m6"
            p3["depth"] = depth_mm + 2
            p3["pos"] = [x_mm, y_mm, -1]
            oobb.append_full(frame, **p3)

    # Driver notches at the motor's M3 screws, so the complete bearing assembly
    # can be fastened first and the motor slid onto the shaft socket afterwards.
    for y_mm in [-8.8, 8.8]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 3.6
        p3["depth"] = depth_mm + 2
        p3["pos"] = [-22.75, y_mm, -1]
        oobb.append_full(frame, **p3)

    for x_mm, y_mm in [(-18, 0), (18, 0), (0, -18), (0, 18)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 10
        p3["pos"] = [x_mm, y_mm, 6 if x_mm == -18 else 3]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = "top"
        oobb.append_full(frame, **p3)

    for x_mm, y_mm in [(-15, -7.5), (-15, 7.5), (15, -7.5), (15, 7.5),
                           (-7.5, -15), (7.5, -15), (-7.5, 15), (7.5, 15)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        # Front half-grid holes also admit the smaller clamshell screws below.
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(frame, **p3)

    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = frame["components"]
    local["components"].append(group)

    hub = oobb.get_default_thing(type="tt_upper_hub")
    for radius_mm, bottom_mm, top_mm in [
        (bearing_inner_radius_mm, 0, 4),
        (hub_lip_radius_mm, bearing_depth_mm / 2, 4),
    ]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = radius_mm
        p3["depth"] = top_mm - bottom_mm
        p3["pos"] = [0, 0, bottom_mm]
        p3["zz"] = "bottom"
        oobb.append_full(hub, **p3)

    # Same double-flat socket as the lower hub, deliberately repeated for editing.
    socket = oobb.get_default_thing(type="tt_cap_socket")
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = (shaft_diameter_mm + shaft_clearance_mm) / 2
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(socket, **p3)
    for side in [-1, 1]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [20, 10, depth_mm + 4]
        p3["pos"] = [0, side * ((shaft_across_flats_mm + shaft_clearance_mm) / 2 + 5), -2]
        p3["zz"] = "bottom"
        oobb.append_full(socket, **p3)
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "negative"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = socket["components"]
    hub["components"].append(group)

    # Plain M2.5 passages join the top socket heads to the lower captive nuts.
    diagonal_mm = 6.5 / (2 ** 0.5)
    for x_mm, y_mm in [(-diagonal_mm, diagonal_mm), (diagonal_mm, -diagonal_mm)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(hub, **p3)

    # Four standard half-grid M3 output holes with split captive nut pockets.
    # The split is ABOVE the bearing, where the 22.7 mm hub lip can hold nuts.
    for x_mm, y_mm, rotation in [(-7.5, 0, 210), (7.5, 0, 30), (0, -7.5, 300), (0, 7.5, 120)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(hub, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m3"
        p3["depth"] = oobb.gv("nut_depth_m3", "3dpr")
        p3["pos"] = [x_mm, y_mm, 4]
        p3["zz"] = "middle"
        p3["rot"] = [0, 0, rotation]
        p3["overhang"] = False
        oobb.append_full(hub, **p3)

    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = hub["components"]
    local["components"].append(group)

    # Split face on bed, outside face up, matching the lower half's orientation.
    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = local["components"]
    thing["components"].append(group)
    thing["components_objects"].extend(frame["components_objects"])
    thing["components_objects"].extend(hub["components_objects"])
    thing["components_objects"].extend(socket["components_objects"])


def get_bearing_plate_motor_gear_tt_hub_lid(thing, **kwargs):
    # Fits at assembled Z=11, above the bearing. Its underside closes the four
    # M3 nut pockets in the upper hub, preserving the standard 15 mm spacing.
    depth_mm = kwargs.get("depth", 5)
    thing["width_mm"] = 22.7
    thing["height_mm"] = 22.7
    thing["depth_mm"] = depth_mm
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 11.35
    p3["depth"] = depth_mm
    p3["pos"] = [0, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for x_mm, y_mm, rotation in [(-7.5, 0, 210), (7.5, 0, 30), (0, -7.5, 300), (0, 7.5, 120)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -1]
        oobb.append_full(thing, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m3"
        p3["depth"] = oobb.gv("nut_depth_m3", "3dpr")
        p3["pos"] = [x_mm, y_mm, 0]
        p3["zz"] = "middle"
        p3["rot"] = [0, 0, rotation]
        p3["overhang"] = False
        oobb.append_full(thing, **p3)

    # Central M3 access hole. The motor shaft ends below this lid at Z=11.7;
    # give its last 0.7 mm a wider blind clearance on the underside.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = "m3"
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 2.9
    p3["depth"] = 2
    p3["pos"] = [0, 0, -1]
    oobb.append_full(thing, **p3)

    # Local aliases add the missing M2.5 socket-cap profile without changing
    # standard OOBB variables. Nominal head: 4.5 diameter x 2.5 height (Accu
    # DIN 912 / ISO 4762); printed pocket: 5.0 diameter x 2.7 height.
    for mode in ["3dpr", "true", "laser"]:
        oobb.set_variable("hole_radius_tt_m2d5", oobb.gv("hole_radius_m2d5", mode), mode)
        oobb.set_variable("screw_socket_cap_radius_tt_m2d5", 2.5 if mode == "3dpr" else 2.25, mode)
        oobb.set_variable("screw_socket_cap_height_tt_m2d5", 2.7 if mode == "3dpr" else 2.5, mode)

    diagonal_mm = 6.5 / (2 ** 0.5)
    for x_mm, y_mm in [(-diagonal_mm, diagonal_mm), (diagonal_mm, -diagonal_mm)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_socket_cap"
        p3["radius_name"] = "tt_m2d5"
        p3["depth"] = 10
        # Socket-cap length is measured from UNDER the head. Assembly Z=13.3
        # gives a tip at Z=3.3, clear of the motor face at Z=3.
        p3["pos"] = [x_mm, y_mm, 2.3]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = False
        p3["clearance"] = "top"
        oobb.append_full(thing, **p3)


def get_holder_motor_gear_tt_clamshell(thing, **kwargs):
    # Assembly coordinates: the shell spans Z=-23.5..0. Print with its flat floor
    # on the bed, open face up. The native wire attachment shares that floor.
    depth_mm = kwargs.get("depth", 23.5)
    motor_face_z_mm = kwargs.get("motor_inset_mm", 3)
    clearance_mm = kwargs.get("body_clearance_mm", 0.2)
    thing["width_mm"] = 74
    thing["height_mm"] = 44
    thing["depth_mm"] = depth_mm
    local = oobb.get_default_thing(type="tt_clamshell")
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["width"] = 5
    p3["height"] = 3
    p3["depth"] = depth_mm
    p3["pos"] = [-15, 0, -depth_mm]
    p3["zz"] = "bottom"
    p3["holes"] = False
    oobb.append_full(local, **p3)

    # Gearbox and front tab clearance. A continuous 2.8 mm front wall remains.
    bottom_mm = motor_face_z_mm - 18.6 - clearance_mm
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [53.6, 22.44 + 2 * clearance_mm, 1 - bottom_mm]
    p3["pos"] = [-7.6, 0, bottom_mm]
    p3["zz"] = "bottom"
    oobb.append_full(local, **p3)

    # The thicker rear motor can has its own deeper floor pocket.
    bottom_mm = motor_face_z_mm - 18.6 - 1.9 - clearance_mm
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [24 + 2 * clearance_mm, 20.39 + 2 * clearance_mm, 1 - bottom_mm]
    p3["pos"] = [-36.2, 0, bottom_mm]
    p3["zz"] = "bottom"
    oobb.append_full(local, **p3)

    # Opposite TT output shaft remains usable through the shell floor.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius"] = 5.2
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, -depth_mm - 1]
    oobb.append_full(local, **p3)

    # Recess the two motor mounting nuts below the motor rear face. These M3
    # pockets also give driver access when the clamshell is removed.
    for y_mm in [-8.8, 8.8]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_nut"
        p3["radius_name"] = "m3"
        p3["depth"] = 3.2
        p3["pos"] = [-22.75, y_mm, motor_face_z_mm - 18.6]
        p3["zz"] = "top"
        p3["overhang"] = False
        oobb.append_full(local, **p3)
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [-22.75, y_mm, -depth_mm - 1]
        oobb.append_full(local, **p3)

    # Small tip-clearance pockets below the three recessed bearing-cap screws.
    for x_mm, y_mm in [(18, 0), (0, -18), (0, 18)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 3
        p3["pos"] = [x_mm, y_mm, -2]
        oobb.append_full(local, **p3)

    # M2.5 shell screws point upward into the holder's outer nut pockets.
    for x_mm, y_mm in [(-37.5, -15), (-37.5, 15), (7.5, -15), (7.5, 15)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 25
        p3["pos"] = [x_mm, y_mm, -18]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = "top"
        oobb.append_full(local, **p3)

    # Pass the regular OOBB mounting grid and useful M3 half-grid through.
    for x_mm in [-45, -30, -15, 15]:
        for y_mm in [-15, 15]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m6"
            p3["depth"] = depth_mm + 2
            p3["pos"] = [x_mm, y_mm, -depth_mm - 1]
            oobb.append_full(local, **p3)
    for x_mm, y_mm in [(-22.5, -15), (-22.5, 15), (-7.5, -15), (-7.5, 15),
                           (15, -7.5), (15, 7.5)]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m3"
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, y_mm, -depth_mm - 1]
        oobb.append_full(local, **p3)

    if not kwargs.get("wire_management", True):
        # Initial V2 has a plain shell floor and an open rear lead notch.
        # No connector pocket, cable-return lid or lid screw/nut pockets.
        exit_bottom = motor_face_z_mm - 18.6 - 1.9 - clearance_mm
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [kwargs["lead_exit_length_mm"], kwargs["lead_exit_width_mm"], 1-exit_bottom]
        p3["pos"] = [-50, 0, exit_bottom]
        p3["zz"] = "bottom"
        oobb.append_full(local, **p3)
    else:
        # Integrated motor connector, within the 74 x 44 mm body footprint.
        # A 1 mm base supports an EXACTLY 2.8 mm deep pocket and rear insertion
        # opening. Clip the native wire primitive's through-entry and 1 mm upper
        # overshoot locally, so neither cuts through the base or enlarges the port.
        # The 2 mm lid closes it below the motor. Local -Y points to rear (-X).
        wire = oobb.get_default_thing(type="tt_wire_cutout")
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "positive"
        p3["shape"] = "oobb_wire"
        p3["wire_type"] = "motor"
        p3["plate"] = False
        p3["polarizing_pin"] = True
        p3["width"] = 3
        p3["height"] = 3
        p3["depth"] = 3.8
        p3["cutout_depth"] = 2.8
        p3["pos"] = [0, 0, 0]
        p3["rot"] = [0, 0, 0]
        oobb.append_full(wire, **p3)

        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [300, 300, 100]
        p3["pos"] = [0, 0, -99]
        p3["zz"] = "bottom"
        oobb.append_full(wire, **p3)

        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [300, 300, 100]
        p3["pos"] = [0, 0, 3.8]
        p3["zz"] = "bottom"
        oobb.append_full(wire, **p3)

        group = copy.deepcopy(kwargs)
        group["type"] = "rotation"
        group["typetype"] = "negative"
        group["pos"] = [-30, 0, -depth_mm]
        group["rot"] = [0, 0, -90]
        group["objects"] = wire["components"]
        local["components"].append(group)
        local["components_objects"].extend(wire["components_objects"])

        # Open the lid recess into the motor compartment. There is 0.2 mm fit
        # clearance per side; the finished lid stays below the motor envelope.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [28.4, 21.9, depth_mm]
        p3["pos"] = [-36, 0, -depth_mm + 3.8]
        p3["zz"] = "bottom"
        oobb.append_full(local, **p3)

        # The lid alone has the narrow lead passage into its top return channel;
        # the shell's entry stops on the same 1 mm base as the connector pocket.
        for y_mm in [-6.5, 6.5]:
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_hole"
            p3["radius_name"] = "m2d5"
            p3["depth"] = 7
            p3["pos"] = [-33, y_mm, -depth_mm - 1]
            oobb.append_full(local, **p3)
            p3 = copy.deepcopy(kwargs)
            p3["type"] = "negative"
            p3["shape"] = "oobb_nut"
            p3["radius_name"] = "m2d5"
            p3["depth"] = oobb.gv("nut_depth_m2d5", "3dpr")
            p3["pos"] = [-33, y_mm, -depth_mm]
            p3["overhang"] = False
            oobb.append_full(local, **p3)

    group = copy.deepcopy(kwargs)
    group["type"] = "rotation"
    group["typetype"] = "positive"
    group["pos"] = [0, 0, depth_mm if kwargs.get("prepare_print", True) else 0]
    group["rot"] = [0, 0, 0]
    group["objects"] = local["components"]
    thing["components"].append(group)
    thing["components_objects"].extend(local["components_objects"])


def get_holder_motor_gear_tt_wire_lid(thing, **kwargs):
    # Recessed inside the clamshell at assembled Z=-19.7..-17.7.
    depth_mm = kwargs.get("depth", 2)
    thing["width_mm"] = 28
    thing["height_mm"] = 21.5
    thing["depth_mm"] = depth_mm
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [28, 21.5, depth_mm]
    p3["pos"] = [-36, 0, 0]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for y_mm in [-6.5, 6.5]:
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = "m2d5"
        p3["depth"] = 5
        p3["pos"] = [-33, y_mm, depth_mm - 0.8]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = "top"
        oobb.append_full(thing, **p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [6.35, 3.08, depth_mm + 2]
    p3["pos"] = [-23.015, 0, -1]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Two-wire return channel, open on the top and at the rear end of the lid.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [29, 4, 1.3]
    p3["pos"] = [-36, 0, depth_mm - 1.2]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)


def get_bearing_plate_motor_gear_tt_legacy(thing, **kwargs):
    width = kwargs.get("width", 3)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 6)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = 0
    top_z_mm = 0
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    #p3["m"] = "#"
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (1, height, "m6"),
        (width, 1, "m6"),
        (width, height, "m6"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Native bearing profile leaves the rotating hub and outer seat.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_bearing"
    p3["bearing_size"] = kwargs.get("bearing_size", "6704")
    p3["pos"] = [0, 0, 0]
    p3["clearance_bearing"] = 3
    oobb.append_full(thing, **p3)

    # TT flattened shaft fit.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cube_center"
    p3["size"] = [5.5, 3.85, depth_mm + 2]
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # These screws span both halves of the original bearing assembly.
    # A normal head sits at +depth; an inverted head sits at -depth.
    screw_positions = [
        (18, 0, False, 15),
        (0, -18, False, 0),
        (-18, 0, True, 15),
        (0, 18, False, 0),
        (0, 7.5, False, 0),
        (0, -7.5, True, 0),
        (7.5, 0, False, 0), (-7.5, 0, False, 0),
    ]
    for x_mm, y_mm, inverted, twist_degrees in screw_positions:
        # Native countersink, shaft, nut pocket and nut printing relief.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = 2 * depth_mm
        p3["pos"] = [x_mm, y_mm, -depth_mm if inverted else depth_mm]
        p3["rot"] = [0, 180 if inverted else 0, twist_degrees]
        p3["zz"] = "none"
        p3["nut_include"] = True
        p3["overhang"] = True
        p3["clearance"] = ''
        oobb.append_full(thing, **p3)

    for x_mm in [-7.5, 7.5]:
        # Insert bore: preserve the motor-specific insert fit.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 2
        p3["depth"] = 6
        p3["pos"] = [x_mm, 0, bottom_z_mm]
        oobb.append_full(thing, **p3)


def get_bearing_plate_motor_servo_micro(thing, **kwargs):
    width = kwargs.get("width", 3)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 6)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = 0
    top_z_mm = 0
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (1, height, "m6"),
        (width, 1, "m6"),
        (width, height, "m6"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Native bearing profile leaves the rotating hub and outer seat.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_bearing"
    p3["bearing_size"] = kwargs.get("bearing_size", "6704")
    p3["pos"] = [0, 0, 0]
    p3["clearance_bearing"] = 3
    oobb.append_full(thing, **p3)

    horn_depth_mm = 3
    horn_radius_bottom_mm = 2.5
    horn_radius_top_mm = 2.4
    # Tapered servo horn socket; these are physical motor-fit dimensions.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cylinder"
    p3["radius_1"] = horn_radius_bottom_mm
    p3["radius_2"] = horn_radius_top_mm
    p3["depth"] = horn_depth_mm
    p3["pos"] = [0, 0, bottom_z_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Central horn retention screw.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = 'm2'
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    oobb.append_full(thing, **p3)

    # Native two-layer bridge above the horn socket.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_overhang"
    p3["radius_name"] = "m2"
    p3["pos"] = [0, 0, bottom_z_mm + horn_depth_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # These screws span both halves of the original bearing assembly.
    # A normal head sits at +depth; an inverted head sits at -depth.
    screw_positions = [
        (18, 0, False, 15),
        (0, -18, True, 0),
        (-18, 0, False, 15),
        (0, 18, True, 0),
        (0, 7.5, False, 0),
        (0, -7.5, True, 0),
        (7.5, 0, False, 0), (-7.5, 0, False, 0),
    ]
    for x_mm, y_mm, inverted, twist_degrees in screw_positions:
        # Native countersink, shaft, nut pocket and nut printing relief.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = 2 * depth_mm
        p3["pos"] = [x_mm, y_mm, -depth_mm if inverted else depth_mm]
        p3["rot"] = [0, 180 if inverted else 0, twist_degrees]
        p3["zz"] = "none"
        p3["nut_include"] = True
        p3["overhang"] = True
        p3["clearance"] = ''
        oobb.append_full(thing, **p3)

    for x_mm in [-7.5, 7.5]:
        # Insert bore: preserve the motor-specific insert fit.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 2
        p3["depth"] = 6
        p3["pos"] = [x_mm, 0, bottom_z_mm]
        oobb.append_full(thing, **p3)


def get_bearing_plate_motor_servo_standard_printed(thing, **kwargs):
    width = kwargs.get("width", 3)
    height = kwargs.get("height", 3)
    depth_mm = kwargs.get("depth", 6)
    pitch_mm = kwargs.get("grid_pitch_mm", GRID_PITCH_MM)
    plate_center_x_mm = 0
    top_z_mm = 0
    bottom_z_mm = top_z_mm - depth_mm
    width_mm = width * pitch_mm - 1
    height_mm = height * pitch_mm - 1
    thing["width_mm"] = width_mm
    thing["height_mm"] = height_mm
    thing["depth_mm"] = depth_mm

    # Main plate. Dimensions and rounded corners are directly editable here.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "rounded_rectangle"
    p3["size"] = [width_mm, height_mm, depth_mm]
    p3["pos"] = [plate_center_x_mm, 0, bottom_z_mm]
    p3["r"] = 5
    oobb.append_full(thing, **p3)

    # Selected grid positions: (column, row, native hole size).
    grid_holes = [
        (1, 1, "m6"),
        (1, height, "m6"),
        (width, 1, "m6"),
        (width, height, "m6"),
    ]
    for column, row, radius_name in grid_holes:
        # Grid clearance; version 5 supplies the fit allowance.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = radius_name
        p3["depth"] = depth_mm + 2
        p3["pos"] = [plate_center_x_mm + (column - (width + 1) / 2) * pitch_mm,
                     (row - (height + 1) / 2) * pitch_mm, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)

    # Native bearing profile leaves the rotating hub and outer seat.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_bearing"
    p3["bearing_size"] = kwargs.get("bearing_size", "6704")
    p3["pos"] = [0, 0, 0]
    p3["clearance_bearing"] = 3
    oobb.append_full(thing, **p3)

    horn_depth_mm = 4
    horn_radius_bottom_mm = 2.9
    horn_radius_top_mm = 2.8
    # Tapered servo horn socket; these are physical motor-fit dimensions.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cylinder"
    p3["radius_1"] = horn_radius_bottom_mm
    p3["radius_2"] = horn_radius_top_mm
    p3["depth"] = horn_depth_mm
    p3["pos"] = [0, 0, bottom_z_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Central horn retention screw.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = 'm2d5'
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    oobb.append_full(thing, **p3)

    # Native two-layer bridge above the horn socket.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_overhang"
    p3["radius_name"] = "m3"
    p3["pos"] = [0, 0, bottom_z_mm + horn_depth_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for y_mm in [-7.375, 7.375]:
        # Horn self-tappers, 14.75 mm apart.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_self_tapping"
        p3["radius_name"] = 'm2'
        p3["depth"] = depth_mm
        p3["pos"] = [0, y_mm, bottom_z_mm + 1.5]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = ''
        p3["loose"] = "screw"
        oobb.append_full(thing, **p3)

    # These screws span both halves of the original bearing assembly.
    # A normal head sits at +depth; an inverted head sits at -depth.
    screw_positions = [
        (18, 0, False, 15),
        (0, -18, True, 0),
        (-18, 0, False, 15),
        (0, 18, True, 0),
        (0, 7.5, False, 0),
        (0, -7.5, True, 0),
    ]
    for x_mm, y_mm, inverted, twist_degrees in screw_positions:
        # Native countersink, shaft, nut pocket and nut printing relief.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_countersunk"
        p3["radius_name"] = 'm3'
        p3["depth"] = 2 * depth_mm
        p3["pos"] = [x_mm, y_mm, -depth_mm if inverted else depth_mm]
        p3["rot"] = [0, 180 if inverted else 0, twist_degrees]
        p3["zz"] = "none"
        p3["nut_include"] = True
        p3["overhang"] = True
        p3["clearance"] = ''
        oobb.append_full(thing, **p3)

    for x_mm in [-7.5, 7.5]:
        # Insert bore: preserve the motor-specific insert fit.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 2.1
        p3["depth"] = 6
        p3["pos"] = [x_mm, 0, bottom_z_mm]
        oobb.append_full(thing, **p3)

        # Screw clearance through the insert axis.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = 'm3'
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, 0, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)


def get_bearing_plate_motor_servo_standard_screws(thing, **kwargs):
    depth_mm = kwargs.get("depth", 6.5)
    top_z_mm = 0.5
    bottom_z_mm = top_z_mm - depth_mm
    # Native 6704 through-clearance trims the stock to a 22 mm hub.
    thing["width_mm"] = 22
    thing["height_mm"] = 22
    thing["depth_mm"] = depth_mm
    # Central adapter stock; this variant has no outer plate.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_cylinder"
    p3["radius"] = 12
    p3["depth"] = depth_mm
    p3["pos"] = [0, 0, bottom_z_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Native bearing profile leaves the rotating hub and outer seat.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_bearing"
    p3["bearing_size"] = kwargs.get("bearing_size", "6704")
    p3["pos"] = [0, 0, 0]
    p3["clearance_bearing"] = 3
    oobb.append_full(thing, **p3)

    horn_depth_mm = 4
    horn_radius_bottom_mm = 2.9
    horn_radius_top_mm = 2.8
    # Tapered servo horn socket; these are physical motor-fit dimensions.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_cylinder"
    p3["radius_1"] = horn_radius_bottom_mm
    p3["radius_2"] = horn_radius_top_mm
    p3["depth"] = horn_depth_mm
    p3["pos"] = [0, 0, bottom_z_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    # Central horn retention screw.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_hole"
    p3["radius_name"] = 'm2d5'
    p3["depth"] = depth_mm + 2
    p3["pos"] = [0, 0, bottom_z_mm - 1]
    oobb.append_full(thing, **p3)

    # Native two-layer bridge above the horn socket.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "negative"
    p3["shape"] = "oobb_overhang"
    p3["radius_name"] = "m3"
    p3["pos"] = [0, 0, bottom_z_mm + horn_depth_mm]
    p3["zz"] = "bottom"
    oobb.append_full(thing, **p3)

    for y_mm in [-7.375, 7.375]:
        # Horn self-tappers, 14.75 mm apart.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_screw_self_tapping"
        p3["radius_name"] = 'm2'
        p3["depth"] = depth_mm
        p3["pos"] = [0, y_mm, bottom_z_mm + 1.5]
        p3["rot"] = [0, 180, 0]
        p3["zz"] = "none"
        p3["nut_include"] = False
        p3["overhang"] = True
        p3["clearance"] = ''
        p3["loose"] = "screw"
        oobb.append_full(thing, **p3)

    for x_mm in [-7.5, 7.5]:
        # Insert bore: preserve the motor-specific insert fit.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius"] = 2.1
        p3["depth"] = 6
        p3["pos"] = [x_mm, 0, bottom_z_mm]
        oobb.append_full(thing, **p3)

        # Screw clearance through the insert axis.
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = 'm3'
        p3["depth"] = depth_mm + 2
        p3["pos"] = [x_mm, 0, bottom_z_mm - 1]
        oobb.append_full(thing, **p3)


if __name__ == "__main__":
    main()
