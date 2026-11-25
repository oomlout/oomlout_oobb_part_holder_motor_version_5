TT MOTOR HOLDER V2 AND COUPLING PRINT TRIALS

BUILD AND EDIT
Run: python action_make_tt_v2.py
Then: python validate_tt_v2.py
Current regression: python validate_tt_v2.py
The preceding TT tight assembly is retired under working-backups/catalogue-cleanup.
List the parts folders: python package_tt_v2.py
Rebuild just the combined connector tray: python action_make_tt_connector_tests.py

The action runs working_oomp_populate.py -> working_oomp.py -> working_scad.py.
Edit tt_v2 parameters, pieces and print placements in get_options() in
working_oomp_populate.py. Geometry lives in the TT V2 functions in working_scad.py.
No production geometry imports an STL. Screws, nuts, plates, holes, cylinders,
text and box cuts use native OOBB components. Double flats are local cylinder /
box boolean groups. The stock adapter uses native M4 clearance holes because the
installed OOBB library has no M4 socket-head profile.

WHAT TO PRINT FIRST
All current deliverables are in parts/. No output-folder copy is generated.
The simplified holder is:
parts/oobb_part_holder_motor_gear_tt_5_width_3_height_23d5_depth_bearing_6704_version2/
Its 3dpr.stl is FOUR stationary pieces, without output/shaft options or wire lid.
The individual pieces are holder.stl, clamshell.stl, bridge.stl and
bearing_retainer.stl. The assembly and exploded views show this holder only.
The independent shaft parts are:
parts/oobb_part_holder_motor_gear_tt_5_width_4_height_11d028_depth_testing_shaft_parts/
Shaft-fit coupons are:
parts/oobb_part_holder_motor_gear_tt_8_width_13_height_12_depth_shaft_fit_v2/
Coupling trials are:
parts/oobb_part_holder_motor_gear_tt_12_width_13_height_16d8_depth_coupling_tests_v2/
Each parts folder contains its own SCAD, STL and PNG files. Validation results
are in the simplified holder's validation.json and validation_checks/ directory.
1. SHAFT FIT: nine D/F coupons (D and F independently add 0, 0.2 or 0.4 mm to
   the provisional 5.4 mm major diameter and 3.7 mm across flats), three socket
   depths (6, 7, 8 mm), and a shallow gearbox-face/mounting-hole coupon.
   All allowances are TOTAL diameter/across-flats additions, not per side.
   Coupon socket openings face the bed; the 2 mm vent is not a shaft screw hole.
   The gearbox coupon tests the face outline and main mounting pair; it does
   not validate the complete motor can, terminals or rear shell envelope.
2. COUPLING TESTS: P plain; C pinch; JA/JB two-piece jaws; T tapered collet
   (body, insert and keyed cap); STOCK 26 commercial-hub adapter; printed legend.
   Its single 3dpr.stl also contains the shared HUB carrier and CAP output lid:
   eleven solids total. Use 3dpr_labeled.png as the type/name/code reference.
   Collet pieces are T1 body, T2 insert and T3 cap. connector_map.json records
   the exact names and print positions. Some engraved codes face the bed.
3. HOLDER: four stationary solids: holder, clamshell, bearing bridge
   and bearing retainer. Four spindle pieces are held separately in testing:
   keyed carrier, output lid, jaw A and jaw B. The jaws remain the default in
   the full reference assembly. Plain and pinch use the same keyed interface. Collet
   shares the final keyed datums after its cap is fully drawn down.

Every tray and every individual piece has SCAD, STL and PNG outputs under its
catalogue ID in parts/. Assembly and exploded views are references, not print
layouts. Use 3dpr.stl or the individual named print files. Do not also print the
same individual pieces if you already printed their complete tray.

PRINT ORIENTATION
Use exported orientation. All printable pieces start at Z=0. Jaw split faces
are on the bed. The bearing bridge prints inverted, with its posts upwards.
The carrier prints with the broad output flange down and its keyed socket up.
The collet insert prints flange down, fingers up. The stock adapter prints with
its stock-hub locating pocket facing up, avoiding a large unsupported roof.
Small screw/nut roofs and horizontal passages still require sensible bridge
settings. Use the same printer/material/settings for fit coupons and final fits.
PETG is a reasonable first trial for flexing pinch/collet parts; no material has
been physically qualified. A thin brim may help the small collet fingers.

MAIN HOLDER HARDWARE
1 x 6704 bearing, nominal 20 mm ID x 27 mm OD x 4 mm wide.
2 x M3 x 25 countersunk motor mounting screws and M3 nuts.
2 x M3 x 12 socket-cap jaw screws and M3 nuts.
1 x M3 x 10 socket-cap central retention screw and M3 nut.
4 x M3 output attachment nuts (retained between carrier and lid).
3 x M2.5 x 20 countersunk bridge screws; 1 x M2.5 x 16 for the rear (-X) bridge
    axis. That rear nut is raised to Z=4 so the screw cannot enter the gearbox.
4 x M2.5 bridge nuts in the holder.
4 x M2.5 x 25 countersunk clamshell screws and M2.5 nuts.
External OOBB fixing screws depend on the surrounding structure.

COUPLING-SPECIFIC HARDWARE
Plain: central M3 retention nut/screw only; shaft axial retention is friction.
Pinch: one M3 x 12 socket-cap screw/nut, plus central retention nut/screw.
Jaws: two M3 x 12 socket-cap screws/nuts, plus central retention nut/screw.
Collet: two M2.5 x 10 countersunk screws/nuts and central retention nut/screw.
Stock: actual Adafruit 3769-style hub (not supplied or printed); two M4 through
       fasteners/washers/nuts, trial M4 x 25, confirm against the physical hub.
       This is a separate bench adapter, not a validated drop-in 6704 spindle.
       Its nominal 26 mm hole pattern is rotated 45 degrees relative to OOBB.

MAIN ASSEMBLY ORDER
1. Load holder bridge/clamshell nuts and the two motor nuts.
   Fit the motor to the holder using its two through holes. Seat gently against
   the locating surfaces; do not distort the plastic gearbox.
2. Load the M3 central retention nut into the jaw stem's lateral slot. Load the
   two jaw clamp nuts from the negative-Y side BEFORE fitting the bearing bridge.
   Put the two jaws around the shaft, with the key flats aligned. Tighten the
   two M3 x 12 screws progressively. Keep the collar clear of the motor face.
3. Place the lower bearing bridge on its four feet. Slide the bearing onto the
   carrier journal from below, then lower the carrier's keyed socket onto the
   jaw stem and seat the bearing in the bridge. The stationary bridge and cap
   capture the outer race; rotating shoulders surround the inner race with
   axial clearance. Closing the shaft clamp cannot squeeze the journal.
4. Add the bearing retainer. Use M2.5 x 16 at rear X=-18; M2.5 x 20 at the other
   three bridge axes. Snug evenly and check free rotation.
5. Insert four M3 output nuts, add the output lid and tighten the central
   M3 x 10 screw into the keyed stem nut. That screw retains the printed spindle;
   it does not thread into the TT shaft. Do not use a longer screw without
   checking the shaft tip clearance.
6. Route the motor leads through the open rear notch and fit the lower
   clamshell. This initial version has a plain floor, with no connector pocket,
   separate wire lid or wire-lid fasteners. Opposite output shaft access remains.

PHYSICAL COUPLING TEST PROCEDURE
Record the actual motor supplier/variant, shaft major diameter, flats and useful
projection. TT is a family, not a guarantee that every yellow case is identical.
Select a D/F coupon that slips on by hand without forcing the gearbox shaft.
Use depth coupons to check usable engagement and shoulder/shaft-tip clearance.
Update the two allowances in populate, rebuild, then print both preferred clamps.

Compare plain, pinch, jaws and collet on the same shaft and with the same short
test arm. Start with low load, mark the shaft/hub relationship and test both
rotation directions. Record slip, axial pull-off, play, damage, repeat assembly
and creep after resting clamped. Increase load gradually; do not use motor stall
torque as a continuous load rating. Check that the shaft still turns freely.
Do not push a threaded screw into the unthreaded plastic shaft.

The collet is an experiment in elastic closure. Its 1 mm cap travel corresponds
to approximately 0.15 mm radial taper interference at the drawn datum; this is
intentional, not a rigid-body clearance. Four slits make flexible fingers. A
positive cap/body stop establishes the final keyed height without using the
motor face as the tightening stop. Confirm closure and spring-back in a physical
print before using it in the full holder. No torque rating is assigned.

REFERENCE AND CONFIDENCE
Existing source: source_file/tt_reference/mechanical.yaml and tt.jpg.
Adafruit 3777 dimension drawing:
https://cdn-shop.adafruit.com/product-files/3777/3777_diagram.jpg
Related DFRobot FIT0016 confirms 5.4 mm maximum shaft diameter:
https://www.dfrobot.com/product-100.html
Commercial snap-on hub: 34 x 15 x 15 mm, approximately 26 mm hole spacing,
4.2 mm mounting holes:
https://www.adafruit.com/product/3769

5.4 / 3.7 mm shaft fit is still provisional for the exact motor being used.
The generated motor is a simplified external envelope, not a manufacturing model.
Validation checks watertight exports, separated bed layouts, socket dimensions
and stops, native metadata flow/debug propagation, rigid assembly collisions,
rotor sweep, true-size screw/nut witnesses and tool/nut loading access. It does
not establish physical grip, wear, creep, motor variant compatibility or torque.
