"""Editable catalogue: width/height are 15 mm grid counts; depth is real mm.

Add explicit entries in get_options() for new sizes. Motor fits and hole
positions live next to the drawing routines in working_scad.py.
"""
import copy
from oomp_populate_helper import build_oomp_id, write_extras


# User selected the centre coupon, D0/Z0, on 2026-11-01. Keep both V2
# assemblies on this setting when the catalogue and print files regenerate.
SERVO_ADAPTER_FIT = dict(socket_diameter_adjustment_mm=0,
                         socket_depth_adjustment_mm=0)


def get_options():
    """Current mounts, connector trials and fit coupons.

    Superseded V1, TT tight and N20 revisions live outside the active parts trees.
    """
    options = []
    # Rewritten V2: one holder includes the 6704 seat; replaceable female
    # tapers suit the researched standard-servo envelopes and spline families.
    import servo_v2
    d = servo_v2.dimensions()
    option = dict(family="assembly", motor_type="servo", motor_style="standard",
                  width=5, height=3, depth=d["top"], variant="version2", bearing_size="6704",
                  oobb_name="holder_motor_servo_standard_v2")
    option["pieces"] = {}
    option["pieces"]["holder"] = dict(depth=d["holder_top"], print_pos=[0, 0, 0],
        print_offset=[0, 0, d["holder_top"]], print_rot=[180, 0, 0], exploded_pos=[0, 0, 0])
    option["pieces"]["bearing_retainer"] = dict(depth=d["retainer_thickness"], print_pos=[80, 0, 0],
        print_offset=[0, 0, d["assembly_top"]], print_rot=[180, 0, 0], exploded_pos=[0, 0, 28])
    option["pieces"]["female_rotor"] = dict(depth=d["split"]-d["runner_face"], print_pos=[127, 0, 0],
        print_offset=[0, 0, -d["runner_face"]], print_rot=[0, 0, 0], exploded_pos=[0, 0, 14])
    option["pieces"]["output_lid"] = dict(depth=d["lid_thickness"], print_pos=[158, 0, 0],
        print_offset=[0, 0, d["output_top"]], print_rot=[180, 0, 0], exploded_pos=[0, 0, 38])
    option["pieces"]["clamshell"] = dict(depth=d["shell_top"]-d["shell_bottom"], print_pos=[0, 65, 0],
        print_offset=[0, 0, -d["shell_bottom"]], print_rot=[0, 0, 0], exploded_pos=[0, 0, -50])
    for side,x in (("left",-34.5),("right",14.5)):
        option["pieces"]["clamp_"+side] = dict(depth=6.5, print_pos=[80 if side=="left" else 95,65,0],
            print_offset=[-x,0,d["clamp_top"]], print_rot=[180,0,0], exploded_pos=[0,0,-12])
        option["pieces"]["spacer_"+side] = dict(depth=d["default_spacer"],print_pos=[110 if side=="left" else 125,65,0],
            print_offset=[-x,0,d["default_spacer"]],print_rot=[0,0,0],exploded_pos=[0,0,-5])
    options.append(option)
    # Micro V2 shares its bearing, runner, socket and nut details with standard V2.
    import servo_micro_v2
    d = servo_micro_v2.dimensions()
    nose = servo_micro_v2.reference()["profiles"]["sg90"]["runner_face"]
    option = dict(family="assembly", motor_type="servo", motor_style="micro",
                  width=4, height=3, depth=d["top"], variant="version2", bearing_size="6704",
                  oobb_name="holder_motor_servo_micro_v2")
    option["pieces"] = {
        "holder":dict(depth=d["holder_top"],print_pos=[0,0,0],print_offset=[0,0,d["holder_top"]],print_rot=[180,0,0],exploded_pos=[0,0,0]),
        "bearing_retainer":dict(depth=d["retainer_thickness"],print_pos=[70,0,0],print_offset=[0,0,d["assembly_top"]],print_rot=[180,0,0],exploded_pos=[0,0,28]),
        "female_rotor":dict(depth=d["split"]-nose,print_pos=[114,0,0],print_offset=[0,0,-nose],print_rot=[0,0,0],exploded_pos=[0,0,14]),
        "output_lid":dict(depth=2.2,print_pos=[146,0,0],print_offset=[0,0,d["output_top"]],print_rot=[180,0,0],exploded_pos=[0,0,38]),
        "clamshell":dict(depth=d["shell_top"]-d["shell_bottom"],print_pos=[0,65,0],print_offset=[0,0,-d["shell_bottom"]],print_rot=[0,0,0],exploded_pos=[0,0,-50]),
        "clamp_left":dict(depth=2,print_pos=[80,65,0],print_offset=[0,0,4.5],print_rot=[0,0,0],exploded_pos=[0,0,-12]),
        "clamp_right":dict(depth=2,print_pos=[100,65,0],print_offset=[0,0,4.5],print_rot=[0,0,0],exploded_pos=[0,0,-12]),
        "bearing_support":dict(depth=1,print_pos=[145,65,0],print_offset=[0,0,-d["holder_top"]],print_rot=[0,0,0],exploded_pos=[0,0,6]),
        "nut_block_left":dict(depth=6.5,print_pos=[80,100,0],print_offset=[24,0,d["nut_block_top"]],print_rot=[180,0,0],exploded_pos=[0,0,-20]),
        "nut_block_right":dict(depth=6.5,print_pos=[100,100,0],print_offset=[-14.5,0,d["nut_block_top"]],print_rot=[180,0,0],exploded_pos=[0,0,-20]),
    }
    options.append(option)
    # Standalone first-pass servo adapter calibration parts. Keep this broad
    # matrix here so subsequent print rounds only need catalogue-value edits.
    fit_diameters = [-.6, -.3, 0, .3, .6]
    fit_depths = [-.6, 0, .6]
    for style, profile in (("standard", "mg996r"), ("micro", "sg90")):
        design = servo_v2 if style == "standard" else servo_micro_v2
        p = servo_v2.installed_profile(profile) if style == "standard" else design.reference()["profiles"][profile]
        face = p.get("runner_face", design.dimensions()["face"])
        height_mm = round(p["spline_top"]-face+p["retention"]["seat_above_spline"]+max(fit_depths)+1.5, 3)
        options.append(dict(family="fit_test", motor_type="servo", motor_style=style,
            width=10, height=8, depth=height_mm, variant="adapter_fit_test_v1",
            oobb_name=f"holder_motor_servo_{style}_adapter_fit_test",
            socket_profile=profile, spacer_thickness_mm=1 if style == "standard" else 0,
            fit_diameter_adjustments_mm=copy.deepcopy(fit_diameters),
            fit_depth_adjustments_mm=copy.deepcopy(fit_depths)))
    # TT V2: one supported assembly and two independently printable test trays.
    # These values are passed through OOMP unchanged to working_scad.py.
    tt_v2 = dict(
        shaft_diameter_mm=5.4, shaft_across_flats_mm=3.7,
        shaft_diameter_allowance_mm=.2, shaft_flats_allowance_mm=.2,
        body_clearance_mm=.2, motor_inset_mm=3,
        motor_mount_x_mm=-20.6, motor_mount_pitch_mm=17.6,
        case_rear_mm=-36.8, case_front_mm=11.2, case_width_mm=22.4,
        case_thickness_mm=18.6, can_width_mm=20.39, can_thickness_mm=22.4,
        motor_screw_length_mm=30, motor_nut_recess_mm=3,
        mounting_fit_sides_mm=[.1,.2,.4],
        wire_management=False, lead_exit_width_mm=10, lead_exit_length_mm=12,
        cartridge_bottom_mm=3.5, cartridge_shoulder_mm=13.8,
        cartridge_top_mm=20.3, cartridge_diameter_mm=22.6,
        key_diameter_mm=12, key_across_flats_mm=10,
        key_clearance_mm=.25, jaw_gap_mm=.5,
        clamp_axis_x_mm=5.5, clamp_axis_z_mm=10.3,
        clamp_head_seat_y_mm=5.5, clamp_screw_length_mm=12,
        bearing_bottom_mm=14, bearing_diameter_clearance_mm=.3,
        journal_diameter_clearance_mm=.15,
        bridge_bottom_mm=8,
        bearing_split_mm=16, retainer_top_mm=20,
        carrier_bottom_mm=14, carrier_lip_bottom_mm=18.2,
        output_bottom_mm=20.5, output_split_mm=25, output_top_mm=28,
        output_diameter_mm=30, output_nut_depth_mm=3.4,
        retention_nut_bottom_mm=15, retention_nut_depth_mm=3.3,
        bridge_screw_length_mm=20, bridge_rear_screw_length_mm=16,
        rear_bridge_nut_roof_mm=5.9, rear_bridge_head_recess_mm=.6, retention_screw_length_mm=10,
        fit_diameter_adjustments_mm=[0, .2, .4],
        fit_flats_adjustments_mm=[0, .2, .4],
        fit_depths_mm=[6, 7, 8], fit_pitch_mm=[28, 32],
        coupling_styles=["plain", "pinch", "jaws", "collet", "stock"],
        stock_hole_pitch_mm=26, stock_body_mm=[34, 15, 15],
        stock_pocket_allowance_mm=.4, collet_draw_mm=1.0,
        coupling_test_positions=dict(plain=[0,0,0], pinch=[38,0,0],
            jaws=[80,0,0], collet=[0,65,0], stock=[105,65,0]),
        coupling_common_positions=dict(carrier=[0,155,0],output_lid=[42,155,0]),
        connector_test_labels=dict(
            plain=dict(code="P",type="Plain socket",part_name="Double-flat friction fit"),
            pinch=dict(code="C",type="Pinch clamp",part_name="One-piece split collar"),
            jaws_a=dict(code="JA",type="Two-piece jaw clamp",part_name="Jaw A"),
            jaws_b=dict(code="JB",type="Two-piece jaw clamp",part_name="Jaw B"),
            collet_body=dict(code="T1",type="Tapered collet",part_name="Outer body"),
            collet_insert=dict(code="T2",type="Tapered collet",part_name="Slotted insert"),
            collet_cap=dict(code="T3",type="Tapered collet",part_name="Draw cap and keyed stem"),
            stock_adapter=dict(code="STOCK 26",type="Commercial hub adapter",part_name="26 mm mounting pattern"),
            carrier=dict(code="HUB",type="Shared bearing carrier",part_name="6704 journal and keyed socket"),
            output_lid=dict(code="CAP",type="Shared output lid",part_name="Four-M3 attachment lid")),
        motor_pocket_test_pos=[20,145,0],
    )
    option = dict(family="assembly", motor_type="gear", motor_style="tt",
        width=5, height=3, depth=23.5, variant="version2", bearing_size="6704",
        oobb_name="holder_motor_gear_tt_v2", tt_parameters=copy.deepcopy(tt_v2))
    # All drawings use assembly coordinates. Offsets/rotations below put each
    # exported piece flat on the bed, with the jaw split faces on the bed.
    option["pieces"] = {
        "holder": dict(drawing="holder", depth=8, print_pos=[0,0,0], print_offset=[0,0,8], print_rot=[180,0,0], exploded_pos=[0,0,0]),
        "clamshell": dict(drawing="clamshell", depth=23.5, print_pos=[0,55,0], print_offset=[0,0,23.5], print_rot=[0,0,0], exploded_pos=[0,0,-38]),
        "bridge": dict(drawing="bridge", depth=8, print_pos=[60,0,0], print_offset=[0,0,16], print_rot=[180,0,0], exploded_pos=[0,0,25]),
        "bearing_retainer": dict(drawing="bearing_retainer", depth=4, print_pos=[110,0,0], print_offset=[0,0,-16], print_rot=[0,0,0], exploded_pos=[0,0,43]),
        "carrier": dict(drawing="carrier", depth=11, print_pos=[60,55,0], print_offset=[0,0,25], print_rot=[180,0,0], exploded_pos=[0,0,54]),
        "output_lid": dict(drawing="output_lid", depth=3, print_pos=[100,55,0], print_offset=[0,0,-25], print_rot=[0,0,0], exploded_pos=[0,0,68]),
        "jaw_a": dict(drawing="cartridge", style="jaws", side=1, depth=11.3, print_pos=[45,105,0], print_offset=[0,3.5,-.25], print_rot=[90,0,0], exploded_pos=[0,9,10]),
        "jaw_b": dict(drawing="cartridge", style="jaws", side=-1, depth=11.3, print_pos=[15,105,0], print_offset=[0,-3.5,-.25], print_rot=[-90,0,0], exploded_pos=[0,-9,10]),
    }
    for name, piece in option["pieces"].items():
        piece["role"] = "shaft" if name in ("carrier", "output_lid", "jaw_a", "jaw_b") else "holder"
    option["tt_parameters"]["print_role"] = "holder"
    options.append(option)
    shaft_option = copy.deepcopy(option)
    shaft_option.update(family="tt_fit_test", width=5, height=4, depth=11.028,
        variant="testing_shaft_parts", oobb_name="holder_motor_gear_tt_v2_shaft_parts")
    shaft_option.pop("bearing_size",None)
    shaft_option["tt_parameters"]["print_role"] = "shaft"
    options.append(shaft_option)
    for variant, suffix, width, height, depth in [
            ("testing_motor_mount", "mount_tests", 5, 10, 23.5),
            ("shaft_fit_v2", "shaft_fit", 8, 13, 12),
            ("coupling_tests_v2", "coupling_tests", 12, 13, 16.8)]:
        options.append(dict(family="tt_fit_test", motor_type="gear", motor_style="tt",
            width=width, height=height, depth=depth, variant=variant,
            oobb_name="holder_motor_gear_tt_v2_"+suffix,
            tt_parameters=copy.deepcopy(tt_v2)))
    for support in ["direct", "6705", "6810"]:
        for output_style in (["circle", "square_3x3"] if support == "6705" else ["square"]):
            width = 7 if support == "6810" else 5
            option = {}
            option["family"] = "assembly"
            option["motor_type"] = "stepper"
            option["motor_style"] = "nema17"
            option["width"] = width
            option["height"] = width
            option["depth"] = 8 if support == "direct" else 12
            option["variant"] = "clamshell_" + output_style if support == "6705" else "straight_" + support
            option["orientation"] = "straight"
            option["output_style"] = output_style
            option["support"] = support
            option["oobb_name"] = "holder_motor_stepper_nema17_assembly"
            if support != "direct":
                option["bearing_size"] = support
            options.append(option)
            if support != "6810":
                compact = copy.deepcopy(option)
                compact["height"] = 3
                options.append(compact)
    # N20 holder-only production set; shaft experiments live in testing.
    import n20
    for holder in n20.HOLDERS:
        options.append(dict(family="n20_holder", motor_type="gear", motor_style="n20",
            width=5 if holder == "bearing_cassette" else 3,height=3,
            depth=6.5 if holder == "bearing_cassette" else 6,
            face_width=5 if holder == "bearing_cassette" else 3,
            variant=holder+"_front_screw_clamp",holder_style=holder,
            oobb_name="holder_motor_gear_n20_holder_only",
            **({"bearing_size":"6704"} if holder == "bearing_cassette" else {})))
    for grip in n20.GRIPS:
        options.append(dict(family="n20_shaft_test",motor_type="gear",motor_style="n20",
            width=3,height=3,depth=21.78 if grip=="taper_collet" else 24.5,
            variant="testing_"+grip,grip_style=grip,oobb_name="holder_motor_gear_n20_shaft_test"))
    options.append(dict(family="fit_test",motor_type="gear",motor_style="n20",
        width=5,height=5,depth=10,variant="fit_coupons",
        oobb_name="holder_motor_gear_n20_fit_test"))
    return options


def apply_taxonomy(option):
    """Keep type/style separate; put dimensions directly after motor style."""
    taxonomy = ["oobb", "part", "holder", "motor"]
    # 'd' keeps fractional dimensions identical in populate, OOMP and navigation.
    width_text = str(option["width"]).replace(".", "d")
    height_text = str(option["height"]).replace(".", "d")
    depth_text = str(option["depth"]).replace(".", "d")
    taxonomy += [option["motor_type"], option["motor_style"],
                 f"{width_text}_width", f"{height_text}_height", f"{depth_text}_depth"]
    if option.get("bearing_size"):
        # Matching bearing plates stay with their motor-holder family.
        if option["family"] in ("assembly", "n20_holder"):
            taxonomy += ["bearing", option["bearing_size"]]
        else:
            taxonomy += ["bearing", "plate", option["bearing_size"]]
    if option["variant"]:
        taxonomy.append(option["variant"])
    for index in range(1, 16):
        option[f"taxonomy_{index}"] = taxonomy[index - 1] if index <= len(taxonomy) else ""
    option["grid_pitch_mm"] = 15
    reference_name = option["oobb_name"].removesuffix("_legacy")
    option["geometry_reference"] = f"source_file/migration_reference/{reference_name}.scad"
    option["geometry_note"] = "Legacy reference is historical; hardware profiles use native OOBB version 5 components."
    option["depth_note"] = "Finished 3dpr model Z extent in mm; original assembly origin retained."
    option["oobb_details"] = {
        "oobb_name": option["oobb_name"],
        "width": option["width"], "height": option["height"], "depth": option["depth"],
        "motor_type": option["motor_type"], "motor_style": option["motor_style"],
        "variant": option["variant"], "grid_pitch_mm": 15,
    }
    if option.get("bearing_size"):
        option["oobb_details"]["bearing_size"] = option["bearing_size"]
    if option["motor_style"] == "n20":
        import n20
        option["geometry_reference"] = "source_file/n20_reference/dimensions.yaml"
        option["geometry_note"] = "Local N20 drawings use native OOBB plates, cubes, cylinders, holes, screws, nuts and overhang relief; hardware is excluded from print layouts."
        option["fit_note"] = "Pololu no-encoder 25.6 mm body reference. Print the motor, single-D and M3/M6 fit coupons first; physical fit and load capacity are untested. Rear-shaft and terminal windows are open."
        option["oobb_details"].update(n20.defaults())
        if option["family"]=="n20_holder":
            import n20_holders
            option["oobb_details"].update(n20_holders.parameters())
            option["oobb_details"]["face_width"]=option["face_width"]
            if option['holder_style']=='bearing_cassette':
                option['oobb_details'].update(clamp_centers_x_mm=[-16,16],
                    rear_clamp_width_mm=41,clamp_driver_radius_mm=1.2)
            option["geometry_note"]="Holder only: plain OOBB grid, M1.6 motor face screws, two front M3 countersunk tension screws and top-loaded native OOBB rear nut pockets. The entry step guides the gearbox, and the rear bears on the flat end cap around the boss. Two outer-row M3 pockets accept attachment nuts from the rear. Rear is 6 mm thick with off-grid structural screw axes; no rails or sleeves. Range-wide screw lengths are M3 x 35 / 40 / 45; tips can project beyond the slim rear."
            option["fit_note"]="Default 25-30 mm rear uses M3 x 35 for the measured 25.6 mm motor profile. Use the range-wide screw lengths for the longest body in each band, or choose a shorter screw for the measured body while fully engaging the nut. M1.6 x 4 face screws retain 1 mm nominal engagement. Physical fit and clamp torque require testing."
        for key in ("holder_style","grip_style"):
            if key in option:
                option["oobb_details"][key] = option[key]
        option["depth_note"] = "Maximum individual print-piece Z extent; installed motor/output bounds are recorded with the rendered assembly."
    if option["oobb_name"].startswith("holder_motor_gear_tt_v2"):
        option["geometry_reference"] = "source_file/tt_reference/mechanical.yaml"
        option["geometry_note"] = "Native OOBB TT V2: raised split 6704 bridge, keyed replaceable coupling and shared four-M3 output cross. Coupling trials include plain, pinch, jaws, collet and stock hub adapter."
        option["fit_note"] = "5.4 mm major / 3.7 mm flats remain provisional. Start with labelled diameter/flat/depth coupons. Allowances are TOTAL diameter/across-flats additions, not per side. Physical grip and torque tests required."
        option["depth_note"] = "Depth describes tallest print piece; main assembly Z=-23.5..28. Frame is 74 x 44 mm. Print layouts and transformed piece coordinates are explicit in pieces."
        option["oobb_details"].update(copy.deepcopy(option["tt_parameters"]))
        if option["variant"] in ("testing_motor_mount","version2","testing_shaft_parts","shaft_fit_v2"):
            option["geometry_reference"] = "source_file/tt_reference/mount_3777.yaml"
        if option["variant"]=="testing_motor_mount":
            option["geometry_note"] = "Three labelled motor seats and one common open saddle with exterior M3 hex pockets."
            option["fit_note"] = "Test 0.1, 0.2 and 0.4 mm of case clearance per side. Use two M3 x 30 countersunk screws. B matches the current holder."
            option["depth_note"] = "Tallest print piece is the saddle at 23.5 mm."
        if "pieces" in option:
            option["oobb_details"]["pieces"] = copy.deepcopy(option["pieces"])
        if option["oobb_name"] == "holder_motor_gear_tt_v2":
            option["geometry_note"] = "Simplified stationary TT holder only: holder plate, plain clamshell with rear lead notch, solid 8 mm bearing bridge and retainer. Shaft/output pieces are a separate testing catalogue entry."
            option["depth_note"] = "Tallest print piece 23.5 mm; stationary assembly Z=-23.5..20 mm; footprint 74 x 44 mm. 3dpr contains four holder pieces only."
    if option["family"] == "assembly" and option["motor_type"] == "servo" and option["variant"] == "version2" and option["motor_style"] == "standard":
        option["geometry_reference"] = "source_file/servo_v2_reference/mechanical.json"
        option["geometry_note"] = "Flush top-access M3 x 30 countersunk servo screws, plain holder shafts, two floating two-nut bars at 10.4 mm pitch; 0.5/1/2/3 mm shims, default 1 mm. Grid-centred 6704, 1.5 mm lip, inset M3 stack screws, twelve free captive M3 grid nuts, unobstructed bottom passages, four M3 cross nuts and diagonal M3 countersunk runner connectors."
        option["depth_note"] = "15 mm catalogue declaration retained during design iteration. Lower holder 10.6 mm, upper plate 5.6 mm, clamshell 45.4 mm, nut bars 6.5 mm, default spacers 1 mm, output lid 2.2 mm. Bearing Z=10.6..14.6; block Z=-38..16.2; servo countersunk heads Z=14.5..16.2, flush; output Z=21.6."
        option["fit_note"] = "MG996R, HS-311, FS5106R and provisional S3004 envelopes; user-specified 4.5 mm ear holes permit the shifted M3 axes. Select the female runner matching both servo and spacer thickness; default 1 mm. Printed friction fits require calibration. See SERVO_V2.md for sourced versus estimated dimensions."
        option["oobb_details"]["pieces"] = copy.deepcopy(option["pieces"])
        option["oobb_details"]["socket_profile"] = "mg996r"
    if option["oobb_name"] == "holder_motor_servo_micro_v2":
        option["geometry_reference"] = "source_file/servo_micro_v2_reference/mechanical.json"
        option["geometry_note"] = "Straight 20.6 mm main shaft bore; no bearing counterbore or annular print overhang. 1 mm outer-race ring and whole 6704 bearing sit inside the upper plate. Four flush M3 x 30 countersunk top screws, ear brackets and standard-design two-nut blocks with 3.4 mm pockets at 10.4 mm spacing."
        option["depth_note"] = "14.2 mm declaration retained. Actual main holder 9 mm, upper plate 7 mm, shell 35 mm; fixed top Z=16. Support ring Z=9..10, bearing Z=10..14 wholly inside the upper plate Z=9..16. Runner lid Z=19.4..21.6. Ten print pieces."
        option["fit_note"] = "Six researched envelopes; factory screw threads and approximate axial dimensions require measurement. Print the labelled coupons first. See SERVO_MICRO_V2.md."
        option["oobb_details"].update(pieces=copy.deepcopy(option["pieces"]),socket_profile="sg90")
    if option["oobb_name"] in ("holder_motor_servo_standard_v2", "holder_motor_servo_micro_v2"):
        option["oobb_details"].update(copy.deepcopy(SERVO_ADAPTER_FIT))
        option["adapter_fit_selection"] = dict(coupon="D0/Z0", status="user_selected",
            selected_on="2026-11-01", roof_style="native_two_layer_overhang",
            **copy.deepcopy(SERVO_ADAPTER_FIT))
        option["fit_note"] += " Production adapter locked to user-selected centre coupon D0/Z0, with the native two-layer socket-roof bridge."
    if option["motor_style"] == "nema17":
        option["geometry_reference"] = "source_file/nema17_reference/"
        option["geometry_note"] = "NEMA17, 5 mm bore metal flange coupler; complete M6/OOBB and M3/OOBE grids except documented mechanical exclusions."
        option["depth_note"] = "Tallest print-layout piece; see assembly views for installed dimensions."
        option["fit_note"] = "Reference SOYO 42.3 x 42.3 x 38 mm, 24 mm shaft. Boss height 2 mm is an estimate. Physical fits untested."
        option["oobb_details"].update({
            "orientation": option["orientation"], "support": option["support"],
            "output_style": option["output_style"],
            "motor_body_mm": 42.3, "motor_length_mm": 38,
            "motor_pitch_mm": 31, "motor_boss_diameter_mm": 22,
            "motor_boss_height_mm": 2, "shaft_diameter_mm": 5,
            "shaft_extension_mm": 24, "coupler_flange_diameter_mm": 22,
            "coupler_hub_diameter_mm": 10, "coupler_hub_length_mm": 10,
            "coupler_flange_thickness_mm": 2, "coupler_pcd_mm": 16,
            "coupler_nut_lid_diameter_clearance_mm": 0.25,
            "coupler_angle_deg": 45, "bearing_diameter_clearance_mm": 0.3,
            "journal_diameter_clearance_mm": 0.15,
            "bearing_axial_clearance_mm": 0.2,
        })
        if option["support"] == "6810":
            option["oobb_details"].update({
                "coupler_nut_disc_interference_mm": 0.1,
                "journal_length_mm": 22.4,
                "drive_tube_length_difference_mm": 6,
                "drive_tube_id_clearance_mm": 0.3,
                "drive_tube_holder_radial_clearance_mm": 1.5,
            })
            option["depth_note"] = "12 mm stationary shell; tallest print is the 26.4 mm output with integrated journal and drive tube."
    if option["family"] == "fit_test" and option["motor_type"] == "servo":
        option["geometry_reference"] = f"source_file/servo_{'v2' if option['motor_style'] == 'standard' else 'micro_v2'}_reference/mechanical.json"
        option["geometry_note"] = "Fifteen labelled socket-down adapter coupons with native two-layer nut-style roof bridges and factory screw head seats."
        option["depth_note"] = "Tallest coupon height; 146 x 103 mm print layout. Socket openings face the bed, matching the production adapter."
        option["fit_note"] = "Coarse first pass: D=-0.6/-0.3/0/+0.3/+0.6 mm on both taper diameters; Z=-0.6/0/+0.6 mm socket depth with matching head-seat shift. See SERVO_ADAPTER_FIT.md."
        for key in ("socket_profile", "spacer_thickness_mm", "fit_diameter_adjustments_mm", "fit_depth_adjustments_mm"):
            option["oobb_details"][key] = copy.deepcopy(option[key])


def main(**kwargs):
    extras = copy.deepcopy(get_options())
    for option in extras:
        apply_taxonomy(option)
    import working_oomp_populate_extra_detail
    working_oomp_populate_extra_detail.main(extras=extras)
    write_extras(extras)


if __name__ == "__main__":
    main()
