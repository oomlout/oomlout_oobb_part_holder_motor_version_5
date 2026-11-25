# Microservo holder V2 - top adjustment and upper-only 6704 bearing

## Files to start with

Active catalogue ID:
`oobb_part_holder_motor_servo_micro_4_width_3_height_14d2_depth_bearing_6704_version2`.
The 14.2 mm declaration is retained for catalogue continuity; use the actual
piece depths below when printing or measuring the assembly.

Inside its `parts/` directory:

- `3dpr.stl`: **ten separate prints**, with the SG90 runner by default.
- Individual prints: `holder`, `bearing_retainer`, `female_rotor`, `output_lid`,
  `clamshell`, `clamp_left`, `clamp_right`, `bearing_support`, `nut_block_left`
  and `nut_block_right`.
- `female_rotor_<profile>.stl`: substitute the runner for your servo.
- `horn_fit_test.stl`: 18 labelled female socket coupons, three fits per profile.
- `bearing_fit_test.stl`: three 6704 seats, diameter adjustments -0.1 / 0 / +0.1 mm.
- `retention_bore_test.stl`: six labelled shaft bores and screw-head seats.
- `mount_pattern_test_<profile>.stl`: a thin frame for checking case and ear holes.
- `assembly_<profile>`, `section`, `exploded`, `horn_interface`: demonstrations.
- `main_plate_print_section`: section through the main part in print orientation.
- `bearing_loading`: separate support ring, bearing and upper plate.
- `bottom_adjustment`: legacy export name, now showing **top** driver access.
- `reference_clamp_drivers`, `reference_clamp_fasteners_<profile>` and
  `reference_cover_fasteners`: clearance references, not print files.

STL, SCAD and PNG versions are generated through the usual pipeline. Hardware
and comparison files are demonstrations, not print layouts. `print_bundle.zip`
contains current print files, fit coupons, previews, instructions and reports.

## What is shared with standard V2

`servo_shared.py` supplies the same bearing seat, female taper, runner, captive
output nuts, diagonal M3 x 10 countersunk lid connectors and fit coupons to both
families. The journal is 19.8 mm in diameter; the 6704 slides over its female end.
The output lid stays 2.2 mm thick. Native nuts use `overhang=True`.

Both families use `draw_captive_nut_bar()` for the two-nut blocks: **6.5 x 19.5 x
6.5 mm**, two M3 nuts at **10.4 mm spacing**. Micro blocks have 3.4 mm pocket
height instead of the standard 2.8 mm, preserving the additional print allowance.
Frame dimensions and ear brackets remain in their family module. See
`SERVO_SHARED.md` for the edit map. V1 remains separate.

## Dimensions and mounting

| Detail | Micro V2 | Standard V2 |
|---|---:|---:|
| OOBB footprint | 4 x 3 / 59 x 44 mm | 5 x 3 / 74 x 44 mm |
| Bearing axis | OOBB column 3, row 2 | OOBB column 4, row 2 |
| Main holder depth | **9 mm** | 10.6 mm |
| Complete upper plate depth | **7 mm** | 5.6 mm |
| Upper plate installed Z | **9 .. 16 mm** | 10.6 .. 16.2 mm |
| Bearing installed Z | **10 .. 14 mm** | 10.6 .. 14.6 mm |
| Separate support ring Z | **9 .. 10 mm** | Integral support |
| Fixed block Z | -28 .. 16 mm | -38 .. 16.2 mm |
| Fixed block height | 44 mm | 54.2 mm |
| Rotating output top | Z=21.6 mm | Z=21.6 mm |
| Actual clamshell print depth | **35 mm** | 45.4 mm |

Z=0 is the upper surface of the servo ears. Each micro runner nose extends to
its own case height +0.6 mm; shorter outputs use longer noses.

Four **M3 x 30 countersunk screws** enter from above, flush with the upper plate
at **Z=16**, and thread into the two floating nut blocks below the broad 2 mm
ear brackets. Their axes are **X=-24 / +14.5, Y=+/-5.2 mm**. Length includes the
head; nominal tips end at Z=-14. The shafts clear the modelled servo ears and
cases without depending on their mounting-hole pattern. Plain shaft holes pass
through the main plate. No countersinks or nuts are embedded in the main part.

The lower brackets and nut blocks move up together to contact thinner ears.
The default unassembled position allows 2.5 mm ears; the six modelled profiles
use 1.0 .. 2.4 mm. Keep the servo against both upper ear shelves and tighten
gently. The brackets spread the load; the nut blocks sit against their underside.

Four M3 x 25 socket screws at **(-22.5,+/-15), (+7.5,+/-15)** sandwich the fixed
layers. Their underside driver wells remain separate from the servo adjustment.
All four corner M6 paths remain available; the brackets have corner notches.
Blocked bottom grid sites remain solid. See `grid_layout()` for the explicit
included sites and exclusions.

## Flat main plate and bearing entirely inside the upper plate

The real 6704 occupies **Z=10..14**, wholly inside the **Z=9..16 upper plate**.
The main holder ends at Z=9. It has a **straight 20.6 mm shaft opening** through
its full height: no large bearing counterbore narrowing into a suspended ledge.
Both the complete bearing and its locating recess are above the main plate.

A separate **1 mm outer-race support ring**, OD 27.2 / ID 25.4 mm, sits at
Z=9..10 inside the upper recess. It rests flat on the main holder and supports
only the bearing's outer race. This separate print preserves the upper ear
shelves while removing the main part's annular printing overhang. Do not omit it.
The upper plate has a 27.4 mm recess from Z=9 through Z=14.1, leaving a 1.9 mm
upper retaining lip.

The main holder exports flat-face-down, rotated 180 degrees and translated
by 9 mm. Keep that orientation. Its broad face and outer corners touch the bed;
the bore remains clear throughout the part. The upper plate also prints
outer-face-down, so its shoulder prints before the wider bearing recess.
The ring prints flat. Native nut features retain short bridges; inspect those
bridges in your slicer and check fits using the supplied coupons.

## Adjustment with the clamshell closed

Loosen the four top countersunk servo screws while keeping them threaded into
the nut blocks. Settle the servo against its female runner, then tighten evenly
and check free output movement. The broad brackets and blocks follow the ear
thickness. The driver reaches the screw heads directly from above; the previous
bottom servo-driver holes have been removed. The cover screws retain their own
underside wells.

## Taller nut pockets

All micro nut pockets are **3.4 mm tall**, without widening the hexes. The
separate nut blocks load from their bottom face and retain a roof above each
pocket. Mesh checks include nominal insertion and 0.6 mm of vertical allowance
for lost bridge height, together with a rotation-restraint control.

The upper plate's free grid nuts and four cover nuts, runner cross nuts and
diagonal connector nuts all retain this allowance. The runner cross pockets
occupy **Z=16..19.4**, enclosed by the **2.2 mm lid at Z=19.4..21.6**. The two
M3 x 10 diagonal countersunk connectors remain separate from the four servo
attachment screws. The main holder contains no captive nut pockets.

Standard V2 keeps its accepted geometry and 2.8 mm nut depths; its SCAD, STL
and PNG exports are fingerprinted against the accepted standard revision.
Earlier micro revisions remain under `outputs/servo_micro_v2_before_bottom_adjustment/`
and `outputs/servo_micro_before_straight_bore/`.

## Research and fit coverage

| Profile | Published body plan, mm | Mount pitch, mm | Output reference | Centre bore, mm |
|---|---|---|---|---:|
| `sg90` | 23 x 12.2 | 27.5, estimated | 21T / 4.8, provisional | 2.4 |
| `mg90s` | 22.8 x 12.2; table width 12.4 | 27.5, estimated | 21T / 4.8, provisional | 2.4 |
| `fs90` | 23.2 x 12.5 | 27 | 20T / 4.8 | 2.4 |
| `fs90r` | 22.5 x 12.1 | 27.7 | 21T / 4.86 | 2.4 |
| `hs55` | 22.8 x 11.6 | 28.6 | 15T / 4.0 | 2.1 |
| `hs65hb` | 23.6 x 11.6 | 27 x 6, four holes | micro 25T / 5.0 | 3.0 |

This is a **family of interchangeable runners**, not one universal spline.
The female sockets are smooth friction tapers: the actual splines imprint the
plastic. Sources do not specify enough tooth-root geometry to claim an exact
printed spline. Print the three coupons for the chosen profile first; their
labels identify the diameter adjustment. Do not select a socket by tooth count
alone: Hitec micro 25T / 5 mm differs from standard 25T / roughly 5.8 mm.

The raw specifications are archived under `source_file/servo_micro_v2_reference/`.
`downloads.json` records URLs, hashes, retrieval date, successes and failed
downloads. The archive includes current Hitec drawings, historical Hitec/TowerPro
drawings, FEETECH sheets, manufacturer product pages and OEM screw listings.
`mechanical.json` records the dimensions actually used and their uncertainty;
`build_reference.py` reproduces that transcription. The Hitec STEP URL is also
recorded; its host rejected the download with HTTP 406, so the archived PDF
drawings supply the checked dimensions. No imported CAD replaces the editable
OOBB geometry.

Important source differences are retained explicitly:

- [TowerPro SG90](https://towerpro.com.tw/product/sg90-7/) and
  [MG90S](https://towerpro.com.tw/product/mg90s-3/) pages differ from older
  manufacturer drawings in dimensions and height conventions. The MG90S case
  stand-in deliberately uses a taller conservative envelope.
- The [FEETECH FS90 sheet](https://www.pololu.com/file/0J1435/FS90-specs.pdf)
  specifies **20T / 4.8**, while the
  [FS90R sheet](https://www.pololu.com/file/0J1867/FS90R.pdf) specifies **21T / 4.86**.
- [Hitec HS-55](https://www.hiteccs.com/actuators/product-details/HS-55) and
  [HS-65HB](https://www.hiteccs.com/actuators/product-details/HS-65HB) have
  different output families. Current and legacy HS-65HB height conventions also
  differ; the model records its conservative envelope and estimated shaft datum.

Body and mounting clearance are modelled over these six references. Unspecified
axial details, counterfeit/clone variations and loaded fit need sample measurement.

## Horn screws: separate from assembly M3 screws

There is no common horn thread across all micro and standard servos.
[Futaba's OEM catalogue](https://futabausa.com/product-category/accessories/servo-parts/screws/)
lists 2 mm micro, 2.6 mm tapping and 3 mm metal-gear families.
[Hitec's HS-55/45 listing](https://hitecrcd.com/hs-55-hs-45-hdwr-t1-7-l4-typ/)
identifies **T1.7 / L4** hardware; its resin and metal gear screws are separate products.

The SG90, MG90S and FEETECH sources do **not** confirm their exact screw threads.
Their 2.4 mm printed centre bores are clearance design envelopes for an assumed
2 mm shank, not replacement screw specifications. The HS-65HB 3 mm bore covers
an assumed 2.6 mm envelope; that exact model thread is also unconfirmed. Use the
factory screw, check its shank and head against the labelled bore coupon, and
edit the profile if necessary. Do not force an M3 assembly screw into a micro output.

All runner profiles now have a **5.4 mm head access well** down to a seat
1.55 mm above the modelled spline top, leaving 1.2 mm plastic above the socket
roof. This avoids a long unsupported retention screw through the whole runner.
The head reference is a conservative envelope, not a dimensioned OEM head.
The nominal screw lengths used in demonstrations are assumptions except the
listed HS-55 hardware. Verify actual engagement and that the screw cannot bottom
inside the servo. Standard V2 uses the same method with its own bore sizes and
6.4 mm head well.

## Assembly

1. Print fit coupons and check your bearing, output and factory horn screw.
2. Load the upper plate's four cover nuts from above and its free grid nuts
   from below. Load two M3 nuts into the underside of each floating nut block.
3. Load the runner's four cross nuts from above and its two diagonal connector
   nuts from below. Fit the lid using two M3 x 10 countersunk screws.
4. Pass the runner/lid through the upper plate from above. Slide the 6704 over
   the female end from below into the recess, then place the 1 mm support ring
   below the outer race. Set the main holder against the ring and upper plate.
5. Insert the servo from below, engage its female socket, and fit the supplied
   factory retention screw through the centre well. Output attachment screws
   must not project beneath the runner into the servo case.
6. Fit a broad bracket under each ear and a two-nut block beneath each bracket.
   Insert the four M3 x 30 countersunk screws from above through the upper and
   main plates, then through the brackets into the nut blocks. Raise each
   bracket/block together until it contacts the ear; tighten gently.
7. Route the cable through the end port and close the clamshell with four
   M3 x 25 socket screws. Adjust the servo from the four top countersunk heads,
   then verify free output movement and support against both upper ear shelves.

Hardware: one 6704; four M3 x 30 countersunk servo screws + four nuts; four
M3 x 25 socket cover screws + four nuts; two M3 x 10 countersunk runner screws
+ two nuts; four M3 output nuts; optional upper grid nuts; factory horn screw.
Use the assembly and profile views to identify the separate screw groups.

## Comparisons and tests

| Output | Contents |
|---|---|
| `comparison_standard_micro` | Current standard and micro assemblies at the same scale |
| `comparison_standard_micro_sections` | Both bearing stacks and female interfaces cut open |
| `comparison_standard_micro_coupons` | Both sets of socket coupons |
| `comparison_servo_envelopes` | Six servo stand-ins |
| `comparison_assemblies` | Six assemblies with the appropriate runner and clamp height |
| `comparison_rotor_profiles` | Six printable runners, aligned on the bed |
| `comparison_socket_sections` | Different female nose lengths and centre wells |
| `comparison_retention_screws` | Factory-screw design envelopes inside each runner |
| `comparison_mount_patterns` | Six printable mounting gauges |
| `ear_clamping_<profile>` | Correct bar height for each ear thickness |
| `bearing_loading` | Bearing insertion over the female end |

Rows in the six-profile comparisons run SG90, MG90S, FS90, FS90R, HS55, HS65HB.
The CSV comparison in `source_file/servo_comparison/` includes both families.

```powershell
python action_make_servo_micro_v2.py
python validate_servo_micro_v2.py
python action_make_servo_v2.py
python validate_servo_v2.py
python validate_servo_shared.py
python make_servo_comparison.py
```

Both builds use `working_oomp_populate` -> `working_oomp` -> `working_scad`.
The micro checks use exported meshes for printable solids, bearing fit/insertion,
all six cases and clamp positions, top driver access, complete countersunk screw
envelopes, 3.4 mm nut pockets, planar bed contact, a straight main bore without
an inward step, upper-only bearing and support ring, case insertion, horn screw
paths, output rotation, M3/M6 passages and shared implementations. Positive
controls prove lower-bracket contact and upper support on both servo ears. `outputs/servo_micro_v2_clearance/`
contains the report and reproducible SCAD intersections. Digital checks establish
clearance for the modelled envelopes, not physical spline fit or rated load.
