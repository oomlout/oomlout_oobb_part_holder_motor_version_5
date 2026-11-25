"""V2 standard-servo drawings, called exclusively by working_scad's catalogue dispatch.

Datum: holder ear-support surface Z=0; spindle axis X=Y=0. Spacers lower the
servo from its researched ear datum. Pieces are drawn assembled, then transformed
for printing. Hardware profiles come from OOBB v5.
"""
import copy
import json
import math
from pathlib import Path

import oobb
from servo_shared import bearing_stack_dimensions

REFERENCE = Path(__file__).parent / "source_file/servo_v2_reference/mechanical.json"


def reference():
    return json.loads(REFERENCE.read_text(encoding="utf-8"))


SPACERS = (0.5, 1, 2, 3)
DEFAULT_SPACER = 1
SERVO_SCREW_PROFILE = "servo_flush_m3"


def flush_screw_profile():
    """Nominal M3 cone seats flush; retain native shaft printing clearance.

    The stock countersink's enlarged head cone would let the nominal metal
    head settle below the surface. This local alias leaves shared M3 profiles
    untouched and uses the native countersunk-screw primitive throughout.
    """
    for mode in ("true","3dpr","laser"):
        oobb.set_variable("hole_radius_"+SERVO_SCREW_PROFILE,oobb.gv("hole_radius_m3",mode),mode)
        for field in ("radius","depth"):
            oobb.set_variable(f"screw_countersunk_{field}_"+SERVO_SCREW_PROFILE,
                              oobb.gv(f"screw_countersunk_{field}_m3","true"),mode)
    return SERVO_SCREW_PROFILE


def installed_profile(key, spacer=DEFAULT_SPACER):
    """Keep measured ear-datum evidence unchanged; place the servo below its shim."""
    p = copy.deepcopy(reference()["profiles"][key])
    for field in ("case_top", "spline_bottom", "spline_top"):
        p[field] -= spacer
    p["runner_face"] = dimensions()["face"]-spacer
    return p


def mount_positions():
    # All four researched 4.5 mm ear patterns admit these M3 axes. Moving
    # the front pair to Y=+/-5.2 clears the bearing OD with the complete shaft.
    return [(x, y) for x in (-34.5, 14.5) for y in (-5.2, 5.2)]


def dimensions():
    data = reference()
    face = max(p["case_top"] for p in data["profiles"].values()) + data["design"]["case_clearance"]
    seat = face + data["design"]["lower_inner_race_shoulder"]
    d = bearing_stack_dimensions(face,seat)
    clamp_top = -DEFAULT_SPACER-max(p["tab_thickness"] for p in data["profiles"].values())
    d.update(top=15, shell_bottom=-38.0, shell_floor=-35.0,
             default_spacer=DEFAULT_SPACER, runner_face=face-DEFAULT_SPACER,
             servo_head_top=d["assembly_top"], servo_screw_length=30,
             clamp_top=clamp_top, clamp_bottom=clamp_top-6.5,
             servo_nut_bottom=clamp_top-6.4)
    return d


def joins():
    # The four base screws now sandwich all stationary layers. No separate
    # screws or bosses flank the bearing.
    return []


def cover_joins():
    # One half-grid position inward from the end M6 columns (-45 and +15).
    # These native M3 sites preserve all four corner M6 mounting holes.
    return [(-37.5, -15), (-37.5, 15), (7.5, -15), (7.5, 15)]


def servo_blocks_grid(x, y, radius):
    # Conservative case plus mounting-ear projection from the researched
    # maximum envelope. These sites cannot carry a full-length block bolt.
    for xmin,xmax,ymin,ymax in [(-31,10.5,-10.5,10.5),(-37.25,16.75,-10.5,10.5)]:
        dx=max(xmin-x,0,x-xmax)
        dy=max(ymin-y,0,y-ymax)
        if math.hypot(dx,dy) < radius+.2:
            return True
    return False


def grid_layout(face):
    records = []
    holder_sites = {(s["x"],s["y"]):s for s in grid_layout("holder")} if face != "holder" else {}
    top_sites = {(s["x"],s["y"]):s for s in grid_layout("retainer")} if face == "bottom" else {}
    for ix in range(9):
        for iy in range(5):
            x, y = -45+ix*7.5, -15+iy*7.5
            name = "m6" if ix%2 == 0 and iy%2 == 0 else "m3"
            at_cover = (x, y) in cover_joins()
            if face in ("holder", "retainer") and at_cover:
                name = "m3"
            r = oobb.gv("hole_radius_"+name, "3dpr")
            reasons = []
            if face != "bottom":
                bore = 14.1 if face == "holder" else 12.5
                if math.hypot(x, y) < bore+r+.7:
                    reasons.append("bearing/rotating clearance")
                join_r = 4.6 if face == "holder" else 3.4
                if any(math.hypot(x-jx, y-jy) < join_r+r+.7 for jx, jy in joins()):
                    reasons.append("bearing-retainer fastener")
                if not at_cover and any(math.hypot(x-mx,y-my) < 3.4+r+.7
                                        for mx,my in mount_positions()):
                    reasons.append("top-access servo screw and head seat")
            if face == "holder":
                if abs(y) < 11.5 and (x < -30 or x > 10):
                    reasons.append("servo mounting shelf")
                if not at_cover and any(math.hypot(x-jx, y-jy) < 3.5+r+.7 for jx, jy in cover_joins()):
                    reasons.append("cover nut")
                if at_cover:
                    reasons = []  # Its M3 through-hole owns this exact site.
            if face == "bottom" and at_cover:
                reasons.append("recessed cover screw")
            through = not servo_blocks_grid(x,y,r)
            if face != "holder":
                through = through and holder_sites[x,y]["included"]
            if face == "retainer" and name == "m6" and not through:
                reasons.append("M6 blocked by servo or mount; left solid")
            if face == "bottom" and not at_cover:
                through = through and top_sites[x,y]["included"]
                if not through:
                    reasons.append("not an unobstructed passage through the assembly")
            records.append(dict(face=face, x=x, y=y, radius_name=name,
                                included=not reasons, exclusions=reasons,
                                reserved_for_cover=at_cover, through_assembly=through,
                                embedded_nut=face == "retainer" and name == "m3" and
                                not reasons and not at_cover))
    return records


def draw_grid(thing, kwargs, face, bottom, depth):
    records = grid_layout(face)
    thing.setdefault("grid_hole_audit", []).extend(records)
    for hole in records:
        if hole["included"]:
            add(thing, kwargs, "oobb_hole", "negative", radius_name=hole["radius_name"],
                depth=depth, pos=[hole["x"], hole["y"], bottom])


def draw_holder(thing, **kwargs):
    d = dimensions()
    add(thing, kwargs, "oobb_plate", width=5, height=3, depth=d["holder_top"]-d["face"]+2,
        holes=False, zz="bottom", pos=[-15, 0, d["face"]-2])
    # End shelves bear on the upper ear spacers. Their shafts are accessible
    # through the cap; removable nut bars clamp the ears from below.
    for x, width in [(-37.75, 12.5), (15.05, 7.1)]:
        add(thing, kwargs, "rounded_rectangle", size=[width, 23, 8.8],
            pos=[x, 0, 0], r=1.5)
        for y in (-10, 10):
            add(thing, kwargs, "oobb_cube_center", size=[width, 3, d["face"]-3.4],
                pos=[x, y, 3.4], zz="bottom")
    # This lower plate has ONLY the small race-support opening. The bearing
    # stands on its flat upper face; its entire OD seat belongs to the cap.
    add(thing, kwargs, "oobb_hole", "negative", radius=oobb.gv("bearing_6704_od_catch", "3dpr"),
        depth=8, pos=[0, 0, d["face"]-1])
    # Plain columns and shafts here; all stationary nuts belong to the cap.
    for x, y in cover_joins():
        add(thing, kwargs, "oobb_cylinder", radius=4.5 if x < 0 else 3.8,
            depth=d["face"]+.2, pos=[x, y, 0], zz="bottom")
        add(thing, kwargs, "oobb_hole", "negative", radius_name="m3", depth=17,
            pos=[x, y, -1])
    # Fixed shaft passages leave the adjustment in the servo's larger ear
    # holes. Nuts now live in removable bars, so there are no trapped ledge nuts.
    for x,y in mount_positions():
        add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
            depth=d["holder_top"]+2, pos=[x,y,-1])
    add(thing, kwargs, "oobb_hole", "negative", radius=10.3,
        depth=12, pos=[0,0,d["face"]-max(SPACERS)-.1])
    # An open centre between the end shelves clears cases and lets the lead
    # and its plug travel straight out through the bottom, without threading.
    add(thing, kwargs, "oobb_cube_center", "negative", size=[43.5, 21.8, d["face"]+.2],
        pos=[-10.25, 0, -.2], zz="bottom")
    # The former rear viewing window is retired; retain this material.
    draw_grid(thing, kwargs, "holder", -1, d["top"]+2)
    # Match the top plate's additional grid through the upper frame only;
    # keep the lower servo mounting shelves intact.
    for hole in grid_layout("retainer"):
        if hole["included"] and not hole["reserved_for_cover"]:
            relief_bottom = d["top_tip_relief_bottom"] if hole["embedded_nut"] else d["face"]-.1
            add(thing, kwargs, "oobb_hole", "negative", radius_name=hole["radius_name"],
                depth=7, pos=[hole["x"], hole["y"], relief_bottom])
    thing["depth_mm"] = d["holder_top"]


def draw_retainer(thing, **kwargs):
    mechanics.draw_retainer(thing, **kwargs)
    d = dimensions()
    for x,y in mount_positions():
        # Countersunk lengths include the head. The native cone mouth is
        # anchored at the fixed top face, leaving no projecting head.
        add(thing, kwargs, "oobb_screw_countersunk", "negative", radius_name=flush_screw_profile(),
            depth=d["servo_screw_length"], pos=[x,y,d["servo_head_top"]],
            zz="none", nut_include=False, clearance="top", overhang=True)


def draw_clamp(thing, side, **kwargs):
    d = dimensions()
    x = -34.5 if side == "left" else 14.5
    draw_captive_nut_bar(thing,kwargs,x,d["clamp_top"])


def draw_clamp_left(thing, **kwargs):
    draw_clamp(thing, "left", **kwargs)


def draw_clamp_right(thing, **kwargs):
    draw_clamp(thing, "right", **kwargs)


def draw_spacer(thing, side, thickness=DEFAULT_SPACER, **kwargs):
    x = -34.5 if side == "left" else 14.5
    add(thing, kwargs, "rounded_rectangle", size=[6.5,19.5,thickness], r=.6,
        pos=[x,0,-thickness])
    for y in (-5.2,5.2):
        add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
            depth=thickness+2, pos=[x,y,-thickness-1])


def draw_spacer_left(thing, **kwargs):
    draw_spacer(thing, "left", **kwargs)


def draw_spacer_right(thing, **kwargs):
    draw_spacer(thing, "right", **kwargs)


def draw_clamshell(thing, **kwargs):
    d = dimensions()
    skin = oobb.get_default_thing(type="servo_v2_clamshell_skin")
    add(skin, kwargs, "oobb_plate", width=5, height=3, holes=False,
        depth=d["shell_top"]-d["shell_bottom"], pos=[-15, 0, d["shell_bottom"]], zz="bottom")
    add(skin, kwargs, "rounded_rectangle", "negative", size=[68, 39.6, 50],
        pos=[-15, 0, d["shell_floor"]], r=2)
    thing["components"].append(group(skin["components"]))
    thing["components_objects"].extend(skin["components_objects"])
    for x, y in cover_joins():
        radius = 4.5 if x < 0 else 4.2
        add(thing, kwargs, "oobb_cylinder", radius=radius,
            depth=-.3-d["shell_floor"], pos=[x, y, d["shell_floor"]], zz="bottom")
        add(thing, kwargs, "oobb_cube_center", size=[7, 6, -.3-d["shell_floor"]],
            pos=[x, math.copysign(17.5, y), d["shell_floor"]], zz="bottom")
        # Raise the head 25 mm into the column for ordinary M3 x 25 screws.
        # Native top clearance, inverted with the screw, opens a driver well
        # all the way to the underside without leaving a trapped head.
        add(thing, kwargs, "oobb_screw_socket_cap", "negative", radius_name="m3", depth=d["cover_screw_length"],
            pos=[x, y, d["cover_screw_head"]], rot=[180, 0, 0], zz="none",
            nut_include=False, clearance="top", overhang=True)
    draw_grid(thing, kwargs, "bottom", d["shell_bottom"]-1, 5)
    add(thing, kwargs, "oobb_cube_center", "negative", size=[8, 12, 13],
        pos=[-50, 0, -33], zz="bottom")
    thing["depth_mm"] = d["shell_top"]-d["shell_bottom"]


def draw_reference_case(thing, **kwargs):
    spacer = kwargs.get("spacer_thickness_mm", DEFAULT_SPACER)
    p = installed_profile(kwargs.get("servo_profile", "mg996r"), spacer)
    length, width, height = p["body"]
    cx = p["shaft_offset"]-length/2
    add(thing, kwargs, "rounded_rectangle", size=[length, width, height], r=1,
        pos=[cx, 0, p["case_top"]-height])
    add(thing, kwargs, "oobb_cube_center", size=[p["tab_length"], width, p["tab_thickness"]],
        pos=[cx, 0, -spacer-p["tab_thickness"]], zz="bottom")
    for x in (cx-p["mount_pitch"][0]/2, cx+p["mount_pitch"][0]/2):
        for y in (-p["mount_pitch"][1]/2, p["mount_pitch"][1]/2):
            add(thing, kwargs, "oobb_hole", "negative", radius=2.25, depth=5,
                pos=[x, y, -spacer-4])
    add(thing, kwargs, "oobb_cylinder", radius=3.7,
        depth=p["spline_bottom"]-p["case_top"], pos=[0, 0, p["case_top"]], zz="bottom")
    # Lead exits below the holder; its full plug can escape through the bottom.
    add(thing, kwargs, "oobb_cube_center", size=[6, 4, 3],
        pos=[cx-length/2-2, 0, p["case_top"]-height+3], zz="bottom")


def draw_reference_servo(thing, **kwargs):
    draw_reference_case(thing, **kwargs)
    p = installed_profile(kwargs.get("servo_profile", "mg996r"),
                          kwargs.get("spacer_thickness_mm", DEFAULT_SPACER))
    bottom, top = p["spline_bottom"], p["spline_top"]
    # The 24/25 teeth are a visual stand-in. Root radius is explicitly
    # approximate; collision tests use the full measured crest envelope.
    r = p["spline_diameter"]/2
    add(thing, kwargs, "oobb_cylinder", radius=r-.18, depth=top-bottom,
        pos=[0, 0, bottom], zz="bottom")
    for i in range(p["spline_teeth"]):
        a = i*2*math.pi/p["spline_teeth"]
        add(thing, kwargs, "oobb_cylinder", radius=.12, depth=top-bottom,
            pos=[(r-.12)*math.cos(a), (r-.12)*math.sin(a), bottom], zz="bottom")
    add(thing, kwargs, "oobb_hole", "negative", radius=1.2, depth=4,
        pos=[0, 0, top-3])


def draw_maximum_envelope(thing, **kwargs):
    # Larger than the researched cases, including FEETECH's catalogue/drawing
    # difference. The 9 mm case top is the conservative design bound.
    add(thing, kwargs, "rounded_rectangle", size=[41.5, 21, 40], r=.5,
        pos=[-10.25, 0, -31-DEFAULT_SPACER])
    add(thing, kwargs, "oobb_cube_center", size=[54, 21, 2.65],
        pos=[-10.25, 0, -2.65-DEFAULT_SPACER], zz="bottom")


def draw_fastener_envelopes(thing, **kwargs):
    d = dimensions()
    draw_output_hardware(thing, **kwargs)
    for x, y in cover_joins():
        add(thing, kwargs, "oobb_cylinder", radius=1.8, depth=d["cover_screw_length"],
            pos=[x, y, d["cover_screw_head"]], zz="bottom")
    for x,y in mount_positions():
        head_depth=oobb.gv("screw_countersunk_depth_m3","true")
        add(thing, kwargs, "oobb_cylinder", radius=1.5, depth=d["servo_screw_length"]-head_depth,
            pos=[x,y,d["servo_head_top"]-d["servo_screw_length"]], zz="bottom")
        add(thing, kwargs, "oobb_cylinder", radius_1=1.5,
            radius_2=oobb.gv("screw_countersunk_radius_m3","true"),depth=head_depth,
            pos=[x,y,d["servo_head_top"]-head_depth], zz="bottom")


def draw_servo_nut_envelopes(thing, insertion=0, **kwargs):
    """Actual 5.5 AF x 2.4 mm nuts, bottom loaded into the floating bars."""
    d = dimensions()
    for x,y in mount_positions():
        add(thing, kwargs, "polyg", r=5.5/math.sqrt(3), sides=6, height=2.4,
            pos=[x,y,d["servo_nut_bottom"]-insertion], rot=[0,0,30])


# These manufacturing details are shared with servo_micro_v2.
from servo_shared import ServoMechanics, add, group, draw_captive_nut_bar
mechanics = ServoMechanics(reference, dimensions, grid_layout, cover_joins)
output_positions = mechanics.output_positions
output_joins = mechanics.output_joins
socket = mechanics.socket
output_nuts = mechanics.output_nuts
draw_output_lid = mechanics.draw_output_lid
draw_reference_bearing = mechanics.draw_reference_bearing
draw_output_hardware = mechanics.draw_output_hardware
draw_fit_coupons = mechanics.draw_fit_coupons

def draw_rotor(thing, **kwargs):
    spacer = kwargs.get("spacer_thickness_mm", DEFAULT_SPACER)
    data = reference()
    data["profiles"] = {key:installed_profile(key,spacer) for key in data["profiles"]}
    ServoMechanics(lambda:data, dimensions, grid_layout, cover_joins).draw_rotor(thing, **kwargs)


DRAWINGS = dict(holder=draw_holder, bearing_retainer=draw_retainer,
                female_rotor=draw_rotor, output_lid=draw_output_lid,
                clamshell=draw_clamshell, clamp_left=draw_clamp_left,
                clamp_right=draw_clamp_right, spacer_left=draw_spacer_left,
                spacer_right=draw_spacer_right)


def draw_assembly(thing, **kwargs):
    d = dimensions()
    outputs = thing["additional_outputs"] = {}
    assembled, exploded = [], []
    for name, definition in kwargs["pieces"].items():
        part = oobb.get_default_thing(type="servo_v2_"+name)
        DRAWINGS[name](part, **kwargs)
        outputs["installed_"+name] = copy.deepcopy(part["components"])
        assembled.append(group(part["components"]))
        exploded.append(group(part["components"], pos=definition["exploded_pos"]))
        outputs[name] = [group(part["components"], pos=definition["print_offset"], rot=definition["print_rot"])]
        thing["components"].append(group(outputs[name], pos=definition["print_pos"]))
        thing["components_objects"].extend(part["components_objects"])
    outputs["assembled_printed"] = copy.deepcopy(assembled)
    outputs["exploded_printed"] = copy.deepcopy(exploded)
    outputs["bottom_view"] = [group(assembled, rot=[180, 0, 0])]
    for key in reference()["profiles"]:
        servo = oobb.get_default_thing(type="servo_v2_reference_"+key)
        draw_reference_servo(servo, **dict(kwargs, servo_profile=key))
        case = oobb.get_default_thing(type="servo_v2_case_"+key)
        draw_reference_case(case, **dict(kwargs, servo_profile=key))
        outputs["reference_servo_"+key] = servo["components"]
        outputs["reference_case_"+key] = case["components"]
        fasteners = oobb.get_default_thing(type="servo_v2_fasteners_"+key)
        draw_fastener_envelopes(fasteners, **dict(kwargs, servo_profile=key))
        outputs["fastener_clearance_"+key] = fasteners["components"]
        rotor = oobb.get_default_thing(type="servo_v2_rotor_"+key)
        draw_rotor(rotor, **dict(kwargs, socket_profile=key))
        outputs["installed_rotor_"+key] = rotor["components"]
        outputs["female_rotor_"+key] = [group(rotor["components"], pos=[0, 0, -d["runner_face"]])]
        retention = oobb.get_default_thing(type="servo_retention_"+key)
        mechanics.draw_retention_reference(retention,installed_profile(key),**kwargs)
        outputs["reference_retention_"+key] = retention["components"]
        view = [g for i, g in enumerate(assembled) if list(kwargs["pieces"])[i] != "female_rotor"]
        view += [group(rotor["components"]), group(servo["components"])]
        outputs["assembly_"+key] = view
    bearing = oobb.get_default_thing(type="servo_v2_reference_bearing")
    draw_reference_bearing(bearing, **kwargs)
    outputs["reference_bearing"] = bearing["components"]
    envelope = oobb.get_default_thing(type="servo_v2_maximum_envelope")
    draw_maximum_envelope(envelope, **kwargs)
    outputs["reference_maximum_envelope"] = envelope["components"]
    for key in reference()["profiles"]:
        outputs["assembly_"+key].append(group(bearing["components"]))
    outputs["assembly"] = copy.deepcopy(outputs["assembly_mg996r"])
    outputs["assembly_open"] = [g for i, g in enumerate(assembled) if list(kwargs["pieces"])[i] != "clamshell"]
    outputs["assembly_open"] += [group(outputs["reference_servo_mg996r"]), group(bearing["components"])]
    outputs["reference_servo"] = copy.deepcopy(outputs["reference_servo_mg996r"])
    outputs["exploded"] = exploded + [group(outputs["reference_servo"]),
                                      group(bearing["components"], pos=[0, 0, 14])]
    # A real section through all assembled parts exposes the bearing and
    # female interface. Clip at Y=0; this is a demo, never a print layout.
    halfspace = oobb.get_default_thing(type="servo_v2_section_cut")
    add(halfspace, kwargs, "oobb_cube_center", size=[160, 100, 160], pos=[-15, -50, -60])
    outputs["section"] = [group(outputs["assembly"]), group(halfspace["components"], typ="negative")]
    coupons = oobb.get_default_thing(type="servo_v2_fit_coupons")
    draw_fit_coupons(coupons, **kwargs)
    outputs["horn_fit_test"] = coupons["components"]
    for name,drawing in [("bearing_fit_test",mechanics.draw_bearing_fit_coupons),
                         ("retention_bore_test",mechanics.draw_retention_coupons)]:
        part=oobb.get_default_thing(type="servo_"+name)
        drawing(part,**kwargs)
        outputs[name]=part["components"]
    outputs["horn_interface"] = [group(outputs["installed_female_rotor"], pos=[0, 0, d["split"]], rot=[180, 0, 0])]
    outputs["nut_loading"] = [group(outputs["installed_female_rotor"]),
                               group(outputs["installed_output_lid"], pos=[0, 0, 9])]
    outputs["bearing_loading"] = [group(outputs["installed_holder"]),
                                  group(bearing["components"], pos=[0, 0, 8]),
                                  group(outputs["installed_bearing_retainer"], pos=[0, 0, 20])]
    nuts = oobb.get_default_thing(type="servo_v2_servo_nut_reference")
    draw_servo_nut_envelopes(nuts, **kwargs)
    outputs["reference_servo_nuts"] = nuts["components"]
    swept_nuts = []
    for offset in (0, 2, 5, 10, 15, 22):
        step = oobb.get_default_thing(type="servo_v2_nut_insertion")
        draw_servo_nut_envelopes(step, insertion=offset, **kwargs)
        swept_nuts.append(group(step["components"]))
    outputs["servo_nut_insertion_sweep"] = swept_nuts
    outputs["servo_nut_loading"] = [group(outputs["installed_clamp_left"]),
                                     group(outputs["installed_clamp_right"]),
                                     copy.deepcopy(swept_nuts[-1])]
    for thickness in SPACERS:
        label = str(thickness).replace(".","d")
        shims=[]
        for side,xoffset in (("left",34.5),("right",-4.5)):
            shim=oobb.get_default_thing(type="servo_spacer")
            draw_spacer(shim, side, thickness, **kwargs)
            outputs[f"spacer_{side}_{label}mm"]=[group(shim["components"],pos=[xoffset,0,thickness])]
            shims.extend(outputs[f"spacer_{side}_{label}mm"])
        outputs[f"spacer_pair_{label}mm"]=shims
        for key in reference()["profiles"]:
            rotor=oobb.get_default_thing(type="servo_spacer_rotor")
            draw_rotor(rotor, **dict(kwargs,socket_profile=key,spacer_thickness_mm=thickness))
            outputs[f"installed_rotor_{key}_spacer_{label}mm"]=rotor["components"]
            outputs[f"female_rotor_{key}_spacer_{label}mm"]=[group(rotor["components"],
                pos=[0,0,thickness-d["face"]])]
    outputs["servo_mount_adjustment"]=[group(outputs["installed_holder"]),
        group(outputs["installed_bearing_retainer"]),group(outputs["installed_clamp_left"]),
        group(outputs["installed_clamp_right"]),group(outputs["installed_spacer_left"]),
        group(outputs["installed_spacer_right"]),group(outputs["reference_servo"]),
        group(outputs["fastener_clearance_mg996r"]),group(outputs["reference_servo_nuts"])]
    outputs["spacer_assortment"]=[group(outputs[f"spacer_pair_{str(t).replace('.', 'd')}mm"],
        pos=[0,i*24,0]) for i,t in enumerate(SPACERS)]
    output_hardware = oobb.get_default_thing(type="servo_v2_output_connectors")
    draw_output_hardware(output_hardware, **kwargs)
    outputs["reference_output_fasteners"] = output_hardware["components"]
    output_nut_reference = oobb.get_default_thing(type="servo_v2_output_nuts")
    for x, y in output_positions():
        add(output_nut_reference, kwargs, "polyg", r=5.5/math.sqrt(3), sides=6, height=2.4,
            pos=[x, y, d["nut_bottom"]+.1], rot=[0, 0, 30+math.degrees(math.atan2(y, x))])
    outputs["reference_output_nuts"] = output_nut_reference["components"]
    outputs["diagonal_connectors"] = [group(outputs["installed_female_rotor"]),
        group(outputs["installed_output_lid"], pos=[0, 0, 8]),
        group(output_hardware["components"]), group(output_nut_reference["components"])]
    cover_nuts = oobb.get_default_thing(type="servo_v2_cover_nuts")
    for x, y in cover_joins():
        add(cover_nuts, kwargs, "polyg", r=5.5/math.sqrt(3), sides=6, height=2.4,
            pos=[x, y, d["cover_screw_head"]+d["cover_screw_length"]-2.7])
    outputs["reference_cover_nuts"] = cover_nuts["components"]
    grid_nuts = oobb.get_default_thing(type="servo_v2_top_grid_nuts")
    tip_reliefs = oobb.get_default_thing(type="servo_v2_grid_tip_relief_envelopes")
    through_bolts = oobb.get_default_thing(type="servo_v2_bottom_through_bolts")
    for site in grid_layout("retainer"):
        if site["embedded_nut"]:
            add(grid_nuts, kwargs, "polyg", r=5.5/math.sqrt(3), sides=6, height=2.4,
                pos=[site["x"],site["y"],d["retainer_bottom"]+.1])
            add(tip_reliefs, kwargs, "oobb_cylinder", radius=1.5,
                depth=d["assembly_top"]-d["top_tip_relief_bottom"],
                pos=[site["x"],site["y"],d["top_tip_relief_bottom"]+.01], zz="bottom")
    for site in grid_layout("bottom"):
        if site["included"]:
            add(through_bolts, kwargs, "oobb_cylinder",
                radius=1.5 if site["radius_name"] == "m3" else 3,
                depth=d["assembly_top"]-d["shell_bottom"]+4,
                pos=[site["x"],site["y"],d["shell_bottom"]-2], zz="bottom")
    outputs["reference_top_grid_nuts"] = grid_nuts["components"]
    outputs["top_grid_tip_reliefs"] = tip_reliefs["components"]
    outputs["bottom_through_bolts"] = through_bolts["components"]
    outputs["top_grid_nut_loading"] = [group(outputs["installed_holder"]),
        group(grid_nuts["components"],pos=[0,0,5]),
        group(outputs["installed_bearing_retainer"],pos=[0,0,12])]
    thing["depth_mm"] = max(p["depth"] for p in kwargs["pieces"].values())

