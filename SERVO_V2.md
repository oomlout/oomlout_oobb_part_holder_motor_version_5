# Standard servo holder V2

This is a rewrite of the first V2 attempt. The 6704 bearing sits on the small-bore lower holder; its complete
4.1 mm recess and upper retaining shoulder are in the full 5x3 upper plate. A replaceable **female** tapered socket fits over the
servo's male output spline, without a stock horn or projecting male pin. The full upper plate exposes additional OOBB holes.
The rotating output has four raised, top-loaded captive M3 nuts and a solid
closing lid. A removable lower clamshell completes the OOBB block.

The active catalogue ID is
`oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2`.
The preceding approved 14.7 mm revision is saved under
`outputs/servo_v2_before_full_block/`. The mistaken initial V2 files are archived under
`outputs/servo_v2_initial_wrong_interface/`. V1's drawing functions and generated
SCAD/STL/PNG files are fingerprinted and checked by the V2 validation script.
V1 is retired from populate, `parts_source` and `parts`; its files are preserved
under `working-backups/catalogue-cleanup/`. The preservation manifest uses
their archived paths and original hashes.

## Illustrated assembly

The sheets show the MG996R reference servo with the default 1 mm spacers and matching female runner. Sunflower yellow identifies the rotating output lid.

1. [Assembled holder, open mount and lower shell](parts/oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2/holder_render.png)
2. [Runner nut loading and 6704 bearing installation](parts/oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2/holder_exploded_guide.png)
3. [Servo ear clamps, lead routing and shell closure](parts/oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2/holder_mounting_guide.png)

Run `python render_servo_holder.py` to rebuild the sheets from the installed-position STLs with Blender on PATH. The servo case is the project's reference envelope. The lead, plug and fastener finishes are illustrative.

## Research and compatibility

There is no single mechanical interface shared by every standard-size servo.
This mount targets the common approximately 40–41 × 20 mm case and twin-ear
mounting arrangement. It is not intended for mini, micro, giant, or unusually
wide waterproof servos.

| Reference | Published case / body data, mm | Mounting / spline information | Confidence of stand-in |
| --- | --- | --- | --- |
| TowerPro MG996R | Manufacturer table: 40.9 × 20 × 37; overall 42.7, ear span 54 | Futaba-compatible horn; model uses 25T / 5.8 mm family | Mounting pitch, ear thickness and exposed shaft Z are estimated; ear-hole clearance accommodates the modelled pitch variation |
| Hitec HS-311 | 40 × 20 × 36.5 | 47.8 × 10.2 mounting pitch, ear span 52.8; **24T / Ø5.76** | Those dimensions are explicit in Hitec's drawing; ear thickness and exposed shaft Z are estimates |
| FEETECH FS5106R | 2021 drawing: 40.15 × 20.15 × 37.2; product listing uses 40.8 × 20.1 × 38 | 49.5 × 10 mounting pitch; shaft offset 10.05; case top 37.2, ear top 28.55, shaft top 42.85 from the base; **25T / Ø5.9** in specification | Best-defined axial reference; the opening also clears the larger catalogue case dimensions |
| Futaba S3004 envelope | 40.4 × 19.8 × 36 | Futaba-style 25T family | Published body size; mounting and shaft details use an explicitly provisional conservative envelope, not certified S3004 CAD |

Sources: [TowerPro MG996R](https://towerpro.com.tw/product/mg996r/),
[Hitec HS-311 drawing](https://hitecrcd.co.jp/material/spec_sheet/servo/31311.pdf),
[FEETECH manufacturer drawing/specification](https://www.pololu.com/file/0J1433/FS5106R-specs.pdf),
[Futaba S3004 manual](https://futabausa.com/wp-content/uploads/2019/07/S3004.pdf),
[Pololu's 25T/5.8 mm interface description](https://www.pololu.com/product/4925).
Hitec's [HS-422](https://hitecrcd.com/hs-422-deluxe-standard-servo/), another
40.6 × 19.8 × 36.6 mm standard-size servo, also uses 24T.
The 20 × 27 × 4 mm bearing size is confirmed in
[SKF's 61704 table](https://cdn.skfmediahub.skf.com/api/public/094cc500316fc14e/pdf_preview_medium/094cc500316fc14e_pdf_preview_medium.pdf).

The local PDFs and machine-readable dimensions, with the status of every
profile, are in `source_file/servo_v2_reference/`. The detailed FEETECH drawing
is page 5 of the 2021 specification. A spline-family diameter does not specify
tooth roots, flank angles, printing shrinkage, or the correct retention screw.

## Bearing plates and print orientation

Z=0 is the holder's ear-support datum; nominal research dimensions use the
upper ear surface before spacers. The default 1 mm shims put the installed
upper ear surface at Z=−1; the spindle stays X=Y=0.
The nominal largest case top is Z=9.0, or Z=8.0 with the default shims. The lower plate leaves at least 0.6 mm clearance and a
1 mm bridge below the bearing. The 20 × 27 × 4 mm bearing remains at
**Z=10.6..14.6**; its full recess allows **4.1 mm** axially.

| Piece | Actual depth | Installed Z | Bearing detail |
| --- | --- | --- | --- |
| Lower holder | **10.6 mm** | 0..10.6 | Small Ø25.4 race-support opening only; bearing rests on top |
| Full 5x3 upper bearing plate | **5.6 mm** | 10.6..16.2 | Complete Ø27.4 × 4.1 mm seat, then smaller Ø25 upper opening |
| Lower clamshell | **45.4 mm** | −38..7.4 | 3 mm floor, bottom grid and raised screw-head wells |

Both bearing plates print upper face down. The upper plate starts with a flat
full footprint on the bed; its retaining shoulder prints before the widening
bearing recess. There is no projecting underside lip leaving the plate suspended.
Peripheral ribs below the lower plate strengthen its thin bridge without
reducing case clearance. Away from the screw access notches, the upper retaining lip is exactly **1.5 mm** thick, above the 4.1 mm seat.
The bearing axis stays on **OOBB column 4, row 2** (X=Y=0); the plate centre
is X=−15, so this is an actual 15 mm grid centre.
The upper plate retains **20 usable OOBB grid sites**;
cover-screw sites use M3 passages to preserve the captive hex walls.

The catalogue ID still declares 15 mm during this design iteration, as requested.
The actual piece depths above are carried in the pipeline's `pieces` parameters.
The stationary block is **74 × 44 × 54.2 mm**, Z=−38..16.2; the rotating output
reaches Z=21.6. V1 is unchanged. The preceding V2 state is saved under
`outputs/servo_v2_before_M3_countersunk_runner/`.

## Adjustable servo mounting from the top

Four **M3 × 30 countersunk screws** enter from above, through conical seats
in the upper plate and plain M3 shaft passages in the main holder. Their axes
are **X=−34.5 / +14.5, Y=±5.2 mm**. Each separate lower clamp bar retains two
M3 nuts **10.4 mm apart** beneath a mounting ear. The bars measure
**6.5 × 19.5 × 6.5 mm**, with bottom-loading, rotation-restrained hex pockets.
Load the nuts and start all four screws before closing the clamshell. Once
closed, loosen and retighten these screws from the top to settle the servo
within its ear-hole clearance. Keep the threads engaged while adjusting.

The user's **4.5 mm mounting-hole diameter** allows a nominal M3 shaft axis
up to 0.75 mm from each ear-hole centre. All four existing reference patterns
fit these axes; the tightest modelled ear margin is about **0.022 mm** on the
rear MG996R hole. Actual hole size and pattern therefore matter. The front
shaft has about **0.405 mm radial clearance** from the nominal bearing OD.
The main holder's native M3 print-clearance passage also clears the real
bearing, with about 0.105 mm radial clearance at the closest point.

The four servo attachment heads sit **flush at Z=16.2**, level with the fixed
upper plate. Their nominal M3 cones extend down to **Z=14.5** and clear the
real bearing at Z=10.6..14.6. Countersunk screw length **includes the head**:
M3 × 30 gives a tip at **Z=-13.8**, fully engaging the bar nuts for every shim.

The native `oobb_screw_countersunk` uses a local `servo_flush_m3` profile:
nominal M3 head radius/depth (**2.9 / 1.7 mm**) and native M3 shaft printing
clearance. This sizes the cone to seat a nominal head at the surface. Shared
M3 profiles keep their existing values. Check an actual printed seat with the
chosen screws; head dimensions and printing shrinkage can vary.

The shaft passage and conical seat slightly open the bearing-seat wall locally,
while clearing the actual bearing. The upper shoulder is locally notched at
the heads; most of its circumference remains intact. Six former M3 grid sites
remain reserved for screw access and seat support. Only these four top servo
screws change; the four lower cover screws are M3 × 25 socket caps.

The preceding socket-cap revision is archived under
`outputs/servo_standard_before_flush_countersinks/`.

## Spacer selection

Print a matching left/right pair of **0.5, 1, 2, or 3 mm** spacers. They go
between the holder ledges and the *upper* servo ear faces, moving the servo
away from the bearing. **1 mm is fitted in the default nine-piece print and
assembly.** Names use `0d5mm` for 0.5 mm. Each bar can move upwards slightly
from its conservative drawing position until it contacts the actual ear.

- `spacer_pair_0d5mm.stl`, `spacer_pair_1mm.stl`, `spacer_pair_2mm.stl`,
  `spacer_pair_3mm.stl`: one pair of the selected thickness.
- `spacer_assortment.stl`: all eight shims, in rows 0.5, 1, 2, 3 mm.
- `spacer_left_<thickness>.stl` / `spacer_right_<thickness>.stl`: individual shims.
- `female_rotor_<profile>_spacer_<thickness>.stl`: matching female runner.
  The unqualified `female_rotor_<profile>.stl` and the default layout use 1 mm.

Matching runners lower the female nose and retention-screw seat with the servo,
while keeping the bearing journal and output height fixed. This maintains at
least 2.5 mm modelled spline engagement for all four thicknesses and all four
profiles. Use the corresponding runner when changing spacer thickness.
The holder has extra nose clearance. The clamshell is 2 mm deeper to accommodate
the conservative case envelope with the thickest spacer. The 30 mm screws fully
engage the nuts across the complete spacer set; tips extend below the bars into
clear space. Changing spacers requires opening the clamshell; settling the servo
within the fitted ear clearance uses only the top screws.

Four independent M3 × 25 base screws still sandwich all stationary layers at
(−37.5,±15) and (+7.5,±15), preserving the corner M6 passages. The obsolete rear
viewing cutout remains filled. The prior version is saved under
`outputs/servo_v2_before_top_adjustment/`.

## Female coupling and bearing installation

Choose `female_rotor_mg996r`, `female_rotor_hs311`, `female_rotor_fs5106r`, or
`female_rotor_s3004`. Each uses the same bearing journal/output interface,
with a female taper and neck clearance for its reference shaft. The print
layout contains the MG996R rotor. Print one rotor for the chosen servo.

The taper mouth is shaft diameter +0.20 mm, reducing to nominal −0.08 mm.
Metal/plastic shaft flutes imprint this smooth friction taper; it does not
claim to reproduce an undocumented precision spline. The cavity roof is
0.35 mm above the modelled shaft tip. `socket_diameter_adjustment_mm`
calibrates the fit independently of the bearing seat.

The journal and female end are **Ø19.8**, allowing the bearing to slide over
the female end during assembly. An enlarged opposing lower flange would
trap the bearing and has been removed. The upper shoulder locates the inner
race region; the servo-supplied horn screw retains the rotor on the shaft.
The Ø23.8 upper output flange clears the upper plate's Ø25 opening.

The strengthened rotating output retains all four captive M3 pockets at
**(−7.5,0), (+7.5,0), (0,−7.5), (0,+7.5)** in their original cross pattern.
They start at **Z=16.6** and load from the outside upper face. All four now
remain available for output attachments; lid screws no longer occupy the X pair.

Two separate **M3 × 10 countersunk screws** connect the runner and its
**2.2 mm top lid**, at **45°/225°** on a **6.35 mm radius**
(X=Y=±4.490 mm). The heads countersink into the **top face**. There are no
small nut pockets in the topper. The captive **M3 nuts load from underneath
the runner**, through inverted native hex channels. Fit these before the servo.

The lower connector nut roof is Z=14.8, below the four cross-nut pockets at
Z=16.6..19.4. The metal connector-nut reference occupies Z=12.3..14.7 and
fits inside the bearing ID; the screw tip ends at Z=11.6. Native v5
`oobb_screw_countersunk` and `oobb_nut` make all connector cuts, with
`overhang=True`. Connector nut pockets use a local −0.1 mm radial adjustment
to the native print allowance, keeping journal/socket material around the
M3 hex channel. This is an ordinary M3 nut; confirm the printed pocket fit.
The old M2 socket-head profile extension has been removed.

All four M3 cross nuts stay in their original positions and remain available
for output attachments. The diagonal shaft paths, bottom nut bodies and
countersunk heads are checked against the bearing, female socket, cross nuts
and all researched servo envelopes.

`horn_fit_test.stl` contains twelve socket-up coupons: nominal, −0.1 mm and
+0.1 mm diameter adjustments for MG996R, HS-311, FS5106R and S3004.
Each coupon carries its profile name and adjustment. Use a coupon before committing to the full rotor. Use
the actual servo's supplied horn-retention screw; its thread is model-specific.
Printed fit, torque capacity and durability still require a physical trial.

## Top grid and screw-tip relief

All **12 free M3 sites** in the fixed top plate now have captive M3 pockets
on its underside, Z=10.6..13.4. The printed roof above them is 2.8 mm thick
before native overhang relief. The four reserved stack-connector sites retain
their own M3 nut pockets. Ordinary M3 shaft holes continue above and below
the grid nuts; matching holes in the lower holder extend to **Z=8.9**,
providing **1.7 mm of tip relief below the plate interface**. This keeps
the 8.8 mm ear-support ledges intact.
The former captive servo nut channels have been replaced by plain shaft holes.

The formerly open M6 sites at **(−45,0) and (−30,0)** are now solid because
the servo or its mounting ledge blocks their passage. The eight usable M6
sites remain open, including all four corners. Bearing-envelope exclusions
remain excluded from the grid.

The relief prevents a projecting tip from bottoming on the printed holder
immediately beneath its nut. The real servo still limits available depth:
above the highest 9 mm case, the 16.2 mm top face has 7.2 mm total penetration
space, before allowing for an attached part. Relief over the end ledges stops
inside the ledge material. Choose bolt length for the actual case/ledge;
a screw cannot continue through solid servo hardware.

## Clamshell and 25 mm connecting screws

The clamshell shares the 74 × 44 mm footprint. Its floor is at Z=−38..−35,
leaving 1 mm below the conservative largest case envelope with 3 mm spacers. End walls are 3 mm thick and
long walls 2.2 mm. The top at Z=7.4 leaves a 0.2 mm seam below the lower
holder's reinforced perimeter at Z=7.6. A 12 × 13 mm left-end port passes the lead.
The bottom exposes **12 unobstructed M6/M3 grid passages**, plus four driver
wells. Only sites with a matching top/holder passage and a clear full-length
path past the servo and mounting ledges are drilled. Blocked bottom sites
remain solid; shaft-envelope tests verify the retained paths through all three
printed stationary layers and the modelled hardware/servo envelopes.

Four **M3 × 25 socket-cap screws** connect the cover at (−37.5,±15) and
(7.5,±15). Head seats are raised from Z=−32.8 to **Z=−9.6**; their tips
reach Z=15.4. Native `clearance="top"`, inverted with each screw, cuts
continuous access from the bottom for both screw heads and drivers.
Their captive nuts are in the upper plate, Z=12.6..15.4, loading from above.
These are the only stationary stack connector screws; no side-bearing screws
are required. The upper lip remains 1.5 mm while the nut pockets extend into
the thicker material outside the bearing recess.

Top/bottom attachment bolts have limited insertion space above/below the
servo. Select lengths for the actual assembly and keep its case envelope clear.

## Assembly and exported demonstrations

1. Load two M3 nuts into each floating bar from below. Load the four M3 stack
   nuts into the upper bearing plate from above, and its 12 M3 grid nuts from
   underneath. The lower holder captures these underside nut openings.
2. Load the four cross-pattern M3 nuts from the runner's top and two M3
   connector nuts from its underside. Sandwich runner/lid with two M3 × 10
   countersunk screws from the top.
   Each cross-pattern nut has an M3 passage through to the runner underside
   for attachment screw-tip clearance.
3. Pass the coupled runner/lid through the upper bearing plate from above.
   Slide the bearing over its female end from below into the upper seat.
   Lower this assembly onto the lower holder; the bearing rests on its shoulder.
4. Fit one 1 mm spacer above each ear. Insert the servo from below, engage
   the matching female socket, and fit the two nut bars beneath the ears.
   Start four M3 × 30 countersunk screws from the top, with their heads flush. Fit its supplied horn-retention screw through
   the central access and check free rotation.
5. Pass the lead through the cover port. Fit the cover with four M3 × 25
   screws through its driver wells, clamping all three stationary layers.
6. With the clamshell closed, loosen the four top servo screws slightly,
   settle the servo, then tighten evenly. Check free output rotation.

`3dpr.stl` contains nine separate prints on the bed: `holder`,
`bearing_retainer`, `female_rotor`, `output_lid`, `clamshell`,
`clamp_left`, `clamp_right`, `spacer_left`, and `spacer_right`.
The lower holder's ear ledges bridge roughly 17 mm between side supports;
inspect those bridges and native nut reliefs in the slicer.

Demonstrations include `assembly_<profile>`, `assembly_open`, `section`,
`exploded`, `assembled_printed`, and `bottom_view`. `bearing_loading`
separates the lower plate, bearing and complete upper seat. `servo_nut_loading`
shows metal nuts below the floating bars; `servo_nut_insertion_sweep` records
six insertion positions. `nut_loading` shows the output nuts/lid; `diagonal_connectors` separates the
rotor/lid and shows the dedicated M3 countersunk hardware alongside the retained M3 cross
nuts. `reference_output_fasteners`, `reference_output_nuts` and
`reference_cover_nuts` provide physical metal envelopes.
`top_grid_nut_loading` shows the added upper grid nuts;
`reference_top_grid_nuts` records their metal envelopes.
`bottom_through_bolts` displays full-length shafts at every retained bottom site;
`top_grid_tip_reliefs` records the extended upper screw-tip clearances. Finally,
`horn_interface` exposes the female socket. `installed_*` files preserve
assembly coordinates for reproducible mesh checks. Demonstrations containing
reference hardware are not print files.

## Rebuild and checks

```powershell
python action_make_servo_v2.py
python validate_servo_v2.py
```

The shortcut runs `working_oomp_populate` → `working_oomp` → `working_scad`.
Geometry lives in `servo_v2.py`; the dispatch is
`working_scad.get_holder_motor_servo_standard_v2`. Catalogue placements and
actual piece depths live in `working_oomp_populate.get_options()`.

The bearing plate, runner, female taper, lid, diagonal hardware, and print
coupons now use `ServoMechanics` in `servo_shared.py`, also used by micro V2.
See `SERVO_SHARED.md` and `SERVO_MICRO_V2.md` for the shared edit workflow.
Each profile now supplies its centre screw clearance: 3.4 mm for the MG996R
and FS5106R design envelopes, 3.0 mm for HS-311 and S3004. These clearances
do not certify the factory screw's thread. OEM screw families vary; use the
supplied screw and check the profile evidence in `mechanical.json`.
The 6.4 mm head well now continues down to a seat 1.55 mm above the modelled
spline top, leaving 1.2 mm above the socket roof for a short retention screw.
`reference_retention_<profile>`, `retention_bore_test` and `bearing_fit_test`
demonstrate and calibrate these details. Female fit coupons now include all
four standard profiles, with three labelled fits per profile.

The validation script checks actual exported STL meshes: closed single solids,
print-bed placement, complete upper bearing seat/lower small bore, bar nut roofs, bottom nut insertion, bearing insertion, four servo envelopes,
actual profile mounting nuts and screws, bottom insertion, a 12-position output
rotation sweep, all stationary/rotating/hardware separations, exposed grid
holes, all corner M6 passages, 25 mm screw-head wells, 1.5 mm retaining lip,
OOBB bearing centre, removed rear window/side connectors, separate 45° holes,
M3 countersunk heads and bottom nuts versus the bearing, socket and cross-pattern nuts,
12 captive top nuts and their extended tip reliefs, bottom-loading runner nut
insertion and rotation restraint, a nut-free M3 countersunk topper, solid blocked M6/bottom sites,
full-length retained bottom bolt paths,
through-holes under all four runner cross-pattern nuts and their remaining journal walls,
and V1 preservation. Deliberate case/bearing
collisions and 30-degree nut rotations must produce interference, verifying
both collision detection and nut rotation restraint. Results and reproducible
SCAD intersections are in `outputs/servo_v2_clearance/`.

These are digital envelope checks. Provisional servo dimensions, friction fit,
print tolerances and loaded performance remain physical checks.

The top-access revision also verifies all nine print solids, all four ear-hole
patterns against the chosen M3 axes, screw heads and full-length shafts against
the bearing and printed parts, nut insertion/rotation restraint in both bars,
all four spacer-pair thicknesses, full thread engagement, all sixteen matching
runner/profile/spacer combinations, and case/runner/bar clearance with the cover
closed. `servo_mount_adjustment` exposes the new mounting arrangement.
