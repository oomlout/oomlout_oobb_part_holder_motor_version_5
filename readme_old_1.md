# Motor holders - version 5

Four motor holders and four matching 6704 bearing variants migrated from
`C:\gh\oomlout_oobb_version_3`. The editable drawings live in this project;
normal builds do not import the version 3 repository or its generated models.
The catalogue also includes one complete tight TT assembly containing the
holder, bearing cap, hub lid, clamshell and internal connector lid.

Seven straight **NEMA17** assemblies use a 5 mm bore flange coupler and flush
M3 countersunk motor screws: direct output, two 6705 clamshell options, and
6810 clamshell. Direct and both 6705 outputs have 5×3 and 5×5 variants; the larger
6810 keeps its 7×7 footprint. The 6705 has a circular output with captive nuts or a three-piece
rotating hub with nuts embedded in a raised 3×3 square. The 6810 shell is 12 mm
deep (6 + 6 mm), mounted directly on a 3 mm motor plate with eight countersunk
M3 joiners and no spacers. Twelve further countersunk M3 screws close the shell;
all 24 perimeter M6 holes have captive nut pockets. Its split 5×5 output has
eight more M6 nut pockets around the central 3×3 grid and eight M3 attachment
nuts. A 22.4 mm lip-free bearing journal and concentric 16.4 mm outer drive
tube are integrated into the output. The tube is 50.15 mm ID × 59.8 mm OD,
leaving 1.5 mm radial clearance to the holder. The tall coupler nut carrier
is removed. A small disc with a 9.9 mm press-fit bore holds four M3 nuts on
the flange's 16 mm bolt circle; matching M3 × 15 countersunk top screws pass
through the 22 mm OD flange into these nuts. All internal nut pockets retain
native overhang relief. Four M3 × 12 countersunk screws with loose nuts beneath
the bottom plate close the top output plates independently. Bottom-open
9 mm access channels clear the drive tube so these nuts can be fitted during
assembly, retaining the separate attachment nuts inside the plates. The 6810 assembly has six printed pieces.
Angled, face and foot
catalogue variants have been retired. All usable M6 OOBB and M3 half-grid holes
are audited. See [NEMA17.md](NEMA17.md) for models, hardware and assembly.

## Compact TT clamshell (October 2026)

The original TT functions remain `get_holder_motor_gear_tt_legacy` and
`get_bearing_plate_motor_gear_tt_legacy`, with their bodies and original part IDs
unchanged. The single **tight** assembly entry contains the revised design.

Define its five pieces, dimensions and print/assembly/exploded positions in
`working_oomp_populate.py` under `get_options()`. The catalogue dispatches to
`get_holder_motor_gear_tt_assembly` in `working_scad.py`, which draws the full
layout using the editable piece functions below. Reference motor and bearing
geometry also live in `working_scad.py`.

All current files share this one part directory:

[Open the complete TT part directory](parts/oobb_part_holder_motor_gear_tt_5_width_3_height_23d5_depth_bearing_6704_tight)

- `3dpr.scad`, `3dpr.stl`, `3dpr.png`: full print layout, seven solids.
- `holder`, `bearing_plate`, `hub_lid`, `clamshell`, `wire_lid`: individual
  print-ready SCAD/STL/PNG files in the same directory.
- `assembly`, `exploded`, `assembled_printed`, `reference_motor`,
  `reference_bearing`: SCAD/STL/PNG views and fit references.
- `working.yaml` and `thing.yaml`: catalogue parameters and generated geometry.

These all rebuild through the normal populate -> OOMP -> working_scad flow.
`action_make_tt_tight.py` is only a filtered shortcut; it contains no drawing
or layout definitions. The former five separate entries are archived under
`outputs/tt_tight_previous_catalogue/`. Older `outputs/tt_tight/` previews are
historical and are no longer rebuilt.

The complete enclosure has a **74 x 44 mm footprint**, with no projecting
connector tab. The motor face is inset **3 mm**, increased from 1 mm. The output
uses a **6704 bearing, 20 x 27 x 4 mm**, included as reference geometry in the
assembly and exploded views. Printed assembly bounds are Z=-23.5..16, or 39.5 mm
high including the raised output hub. The opposite motor shaft exits through
the cover floor.

All assembly screws are now **M2.5**. The motor's two mounting screws stay M3,
and the additional OOBB mounting holes are M3/M6. Drawings use OOBB primitives,
`copy.deepcopy(kwargs)` and explicit, multiline dictionary assignments.

### Printable pieces

| Drawing function (without `get_`) | Physical size | Solids |
| --- | --- | --- |
| `holder_motor_gear_tt` | 74 x 44 x 7 mm | Frame and lower hub |
| `bearing_plate_motor_gear_tt` | 44 x 44 x 6 mm | Bearing cap and upper hub |
| `bearing_plate_motor_gear_tt_hub_lid` | diameter 22.7 x 5 mm | Output hub lid |
| `holder_motor_gear_tt_clamshell` | 74 x 44 x 23.5 mm | Lower enclosure |
| `holder_motor_gear_tt_wire_lid` | 28 x 21.5 x 2 mm | Internal connector lid |

The five piece files contain **seven printable solids**. The combined file is
[3dpr.stl](parts/oobb_part_holder_motor_gear_tt_5_width_3_height_23d5_depth_bearing_6704_tight/3dpr.stl).
Every piece is oriented on the print bed. The narrow bearing lips and recessed
nut pockets have short bridging areas; inspect those edges after printing.
The bearing and motor in `assembly.scad` / `exploded.scad` are reference hardware,
not printable pieces. `assembled_printed.scad` omits the reference hardware but
shows assembled positions; use `3dpr.stl` for printing.

### Bearing hub and holes

The bearing seat has a 25.6 mm outer diameter and **4.1 mm total depth**. This
uses the actual 4 mm nominal bearing thickness plus 0.1 mm axial clearance,
rather than the shared legacy 3.6 mm print-depth lookup. The inner-race seats
are 20 mm diameter. Beyond the race, a 1 mm radial gap separates the rotating
hub from the stationary frame.

Four **M3 output holes at (+/-7.5, 0) and (0, +/-7.5)** keep the standard 15 mm
spacing. Each has a hexagonal nut pocket split between the upper hub and its
lid. Fit the four nuts before closing the lid: the two pocket halves enclose
and retain them. The nut split is at assembly Z=11, above the bearing, where
there is enough radial space. Putting these pockets at the bearing split
would break into its 20 mm bore.

The two diagonal hub joining bolts are M2.5 x 10 socket caps, on a 6.5 mm
radius. Their heads sit recessed in the top lid; their nuts load into the
underside of the lower hub. The tips stop at Z=3.3, above the motor face at Z=3. The central
hole in the lid is M3 access, with a blind underside clearance for the shaft tip.
There is no captive nut in the centre. Keep output mounting-bolt insertion
below 8.5 mm from the top face so tips do not bottom against the lower hub.
The central access hole has less available depth because the motor shaft is
beneath it.

Extra M3 half-grid holes are placed around the holder and bearing cap, with
matching holes where they clear the enclosure. The four clamshell screws have
their own M2.5 positions. Holes over the motor cavity are clearance/access
features; do not run long mounting bolts into the motor. Two cap-edge notches
keep the motor screws accessible after the bearing assembly is closed.

### Integrated motor connector

The clamshell uses the same native **`oobb_wire`, `wire_type="motor"`** void as
`C:/gh/oomlout_oobb_electronic_version_5`. It is rotated towards the rear, and
its connector/header pocket is entirely inside the enclosure footprint.
Only the mating opening reaches the rear wall; there is no external ledge.

The connector pocket and rear insertion opening are both **2.8 mm deep**,
with a **1 mm base** beneath them. The native wire cutter is bounded above and
below with OOBB cubes: its normal entry breakthrough and upper overshoot do
not enlarge the finished connector opening. The narrow internal entry also
retains the same 1 mm base.

The removable 2 mm lid sits below the rear motor can at Z=-19.7..-17.7.
A separate narrow passage through this lid and a top-side return groove carry
the two leads back to the motor terminals. The complete clamshell is now
**23.5 mm deep**. Its lid uses two M2.5 screws and nuts, separate from the four
clamshell screws. Install the connector and route its leads before the motor.
Superseded 20 mm and 24 mm shell exports are retained under
`outputs/tt_tight/superseded_wire_tail/` and
`outputs/tt_tight/superseded_connector_depth/`, outside the active catalogue.

### Hardware and assembly

| Hardware | Quantity | Position |
| --- | --- | --- |
| 6704 bearing, 20 x 27 x 4 mm | 1 | Output |
| M2.5 x 10 countersunk screw | 4 | Bearing cap |
| M2.5 x 10 socket-cap screw | 2 | Three-piece rotating hub |
| M2.5 x 25 countersunk screw | 4 | Lower clamshell to holder |
| M2.5 x 5 countersunk screw | 2 | Internal connector lid |
| M2.5 nut | 12 | Corresponding assembly screws |
| M3 x 25 countersunk screw and nut | 2 each | Motor mounting |
| M3 nut | 4 | Captive output attachment nuts |

All selected screw lengths are in **5 mm increments**. Countersunk screws are
limited to **25 mm**; any longer selection must use a socket cap. This version
needs no screw longer than 25 mm. Countersunk lengths include the head;
socket-cap lengths start underneath the head.

`clearance="top"` opens the recessed heads to the outside. Three cap heads are
3 mm below the top of the cap, while the rear head stays flush; all four now
use 10 mm screws. The clamshell head mouths are 5.5 mm inside its bottom face,
allowing 25 mm screws to reach the holder nuts. Connector-lid head mouths are
recessed 0.8 mm, so 5 mm screws reach their nuts without protruding below the
base. The hub uses 10 mm socket caps to preserve the nut pockets and motor
clearance. Check actual hardware and printed fit before tightening.

The local M2.5 socket-head profile uses a nominal 4.5 mm diameter and 2.5 mm
height, with a 5.0 x 2.7 mm printed clearance pocket, based on
[Accu's DIN 912 / ISO 4762 dimensions](https://www.accu.co.uk/metric-cap-head-screws/250231-SSC-M2-5-25-A4-R360).
The profile is a local alias; shared OOBB hardware variables are unchanged.

1. Fit the connector hardware in the cover floor, route its wires in the return
   channel, and screw down the internal lid.
2. Assemble the bearing, lower hub, upper hub and hub lid in the holder/cap.
   Load the two M2.5 hub nuts from below, trap the four M3 output nuts between
   the upper hub and its lid, then insert the socket-cap screws from above.
3. Close the stationary bearing cap with its M2.5 screws. Slide the motor into
   the 3 mm locating pocket and shaft socket; fasten its M3 screws through the
   cap's access notches. The clamshell has recesses for the motor's rear nuts.

4. Connect the motor leads, close the lower clamshell, and install its four
   M2.5 screws. Check that the hub turns freely and wires stay in their channels.

### Rebuild and validation

```powershell
python action_make_tt_tight.py  # Normal catalogue build, filtered to the assembly
python validate_tt_tight.py
python validate_migration.py --filter gear_tt
```

The mesh checks cover seven watertight print solids, two independent solids in
the assembled printed geometry (stationary housing and rotating hub), the
corrected 17.6 mm motor mounting pattern, the 3 mm inset, M2.5 joining holes,
split M3 nut pockets, extra holes, exact 2.8 mm connector opening, retained
1 mm base, socket-head shoulders and available screw lengths.
Exact CSG intersections check the assembled prints against the nominal bearing
and simplified motor reference. Results are in `validation.json` inside the part directory.
Legacy function bodies are checked against their retained snapshots.

Edit each drawing in `working_scad.py`. The explicit catalogue kwargs include
`body_clearance_mm=0.2`, `motor_inset_mm=3`, `bearing_axial_clearance_mm=0.1`,
`shaft_diameter_mm=5.4`, `shaft_across_flats_mm=3.7`, and
`shaft_clearance_mm=0.15`. These manual layouts describe the saved sizes;
changing one dimension can require changing neighbouring features as well.

The motor evidence is retained in `source_file/tt_reference/`, copied from
`C:/od/OneDrive/docs/oomp_motor`. The shaft's 5.4 mm diameter and 3.7 mm flats
remain **unverified estimates**; the socket adds 0.15 mm overall. The exact
bosses, can length and terminal details are also unresolved. CAD checks do
not establish fit to every TT variant. Physical print, bearing, connector and
motor fit have not been tested.

## Build

Run from this project directory with the existing OOMP/OOBB version 5 Python
environment and OpenSCAD on PATH:

```powershell
python action_make_scad_no_stl.py  # Populate -> OOMP -> SCAD
python action_make_scad.py         # Populate -> OOMP -> SCAD, STL and PNG
```

The full build uses OpenSCAD's Manifold backend and checks export failures.
It generates finished 3D-print geometry; laser sandwich and full-height
`true` variants are not represented by these new depth values.

Outputs are `parts/<id>/3dpr.scad`, `3dpr.stl`, `3dpr.png`, `working.yaml`,
and `thing.yaml`. Composite parts also have their named piece/view exports in
that same directory. `navigation_oobb/` contains copies organised by taxonomy.

## What to edit

| File | Purpose |
|---|---|
| [working_oomp_populate.py](working_oomp_populate.py) | Sixteen catalogue entries; TT piece placements, NEMA17 variants, fit dimensions and taxonomy |
| [working_oomp.py](working_oomp.py) | Load `parts_source` YAML and synchronously create OOMP parts |
| [working_scad.py](working_scad.py) | Separate named drawing routines, motor cutouts and documented fit dimensions |
| [scad_help.py](scad_help.py) | Dispatch drawings, save metadata, export checked STL/PNG and create navigation |

Change `get_options()` to add sizes. Its TT `pieces` dictionaries control
piece widths, heights, depths and placement in each view. Each piece drawing
function contains its body, grid holes, motor cutouts and hardware. The
assembly function calls those drawings with copied kwargs. Repeated primitive
blocks are intentional so each piece can be edited independently.

Every component copies `kwargs`, defines one dictionary value per line, and
passes the dictionary directly to the library. For example, inside a drawing:

```python
p3 = copy.deepcopy(kwargs)
p3["type"] = "negative"
p3["shape"] = "oobb_hole"
p3["radius_name"] = "m3"
p3["depth"] = depth_mm + 2
p3["pos"] = [0, 0, bottom_z_mm - 1]
# p3["m"] = "#"  # Uncomment to highlight this feature in OpenSCAD preview.
oobb.append_full(thing, **p3)
```

Hardware uses `oobb_screw_countersunk`, `oobb_screw_socket_cap`,
`oobb_screw_self_tapping`, `oobb_bearing` and `oobb_overhang`. Native screws
include their shaft holes, optional nut pockets and printing reliefs in one
call. Grid holes use `radius_name="m3"` or `"m6"`; servo fasteners also use
the appropriate smaller named sizes. Numeric radii remain only for physical
motor features such as horn sockets, insert bores and bearing access openings.

Screw positions are explicit: countersunk Z is the head mouth, socket/self-
tapping Z is the underside of the head. With `zz="none"`, rotating 180 degrees
about Y reverses the screw at that same anchor. Holes with an explicit depth
start at their Z position and extend upwards. These conventions matter when
moving a screw between the upper and lower faces.

The catalogue is the source of truth. Regeneration overwrites generated YAML
and SCAD. Optional per-part `working_manual.yaml` overrides are still loaded;
to change drawing parameters there, override the `oobb_details` mapping.

For a TT drawing-only iteration after population (including all named exports):

```powershell
python -c "import working_scad; working_scad.main(filter='holder_motor_gear_tt_assembly', save_type='all')"
```

After editing the catalogue's `pieces` or fit kwargs, run
`python action_make_tt_tight.py` to repopulate metadata and redraw everything.
All layouts are manual: review neighbouring geometry and assembly positions
when changing a piece's thickness.

The legacy layouts preserve the existing body sizes and motor-specific cutouts;
hardware clearances now follow version 5. Body dimensions can be edited, but
the selected mounting-hole patterns are explicit, not an
automatic design system for arbitrary sizes. Review them when changing size.

## Taxonomy and dimensions

Every entry starts with these separate taxonomy fields:

```text
oobb, part, holder, motor, {type}, {style}, {width}_width, {height}_height, {depth}_depth
```

Motor type/style pairs are `gear, tt`, `servo, micro`, and `servo, standard`.
The bottom section adds `bottom` after the dimensions. Bearing variants add
`bearing, plate, 6704`, followed by the horn variant where needed.
Fractional dimensions use `d` in IDs (`6d5_depth`); numeric `depth` stays `6.5`.

Examples:

```text
oobb_part_holder_motor_gear_tt_6_width_3_height_6_depth
oobb_part_holder_motor_servo_standard_5_width_3_height_28_depth_bottom
oobb_part_holder_motor_gear_tt_3_width_3_height_6_depth_bearing_plate_6704
```

Width and height are **15 mm grid counts**, not millimetres. The source code
and saved models already use 15 mm spacing, so no 20-to-15 mm rescaling was
applied. Motor fits and the 18 mm bearing-attachment offsets stay in physical
millimetres. Standard OOBB plates are `count * 15 - 1` mm; the original standard
servo and bearing plates use the full `count * 15` envelope, which is retained.

| Part | Width | Height | Finished depth (mm) | Original ID depth |
|---|---:|---:|---:|---:|
| TT holder | 6 | 3 | 6 | 6 |
| Micro servo holder | 4 | 3 | 9 | 3 |
| Standard servo holder | 5 | 3 | 15 | 3 |
| Standard servo bottom | 5 | 3 | 28 | 55 |
| TT bearing plate + shaft hub | 3 | 3 | 6 | 12 |
| Micro servo bearing plate + shaft hub | 3 | 3 | 6 | 12 |
| Standard servo printed-horn plate + hub | 3 | 3 | 6 | 12 |
| Standard servo screw-horn hub | 3 | 3 | 6.5 | 12 |

Depth is the actual finished model Z extent. The old bottom was 43 mm stock
with its upper 15 mm removed, leaving 28 mm. The bearing plates were cut in
half for printing; the screw-horn variant retains an extra 0.5 mm above the
bearing centre. Its `3 x 3` describes the assembly grid, not the hub diameter.

Original assembly coordinates are retained: TT is at Z=0..6, micro at -9..0,
standard at -15..0, bottom at -43..-15, bearing plates at -6..0, and the
screw-horn hub at -6..0.5. Slicers can place the parts on their print bed.
The first three bearing variants intentionally contain **two separate solids**:
the outer bearing plate and its central rotating shaft adapter.

## Native hardware and migration checks

Saved legacy `3dpr.scad` files record the original geometry. Some old `details.json`
files and the latest Python bearing routine differ from those saved models.
The saved TT, micro and printed-horn variants include outer plates; the
screw-horn variant is a hub only. Both standard horn variants are preserved.

Reference SCAD snapshots and SHA-256 provenance are in
`source_file/migration_reference/`. The drawings do not read these files.
Hardware now uses the installed `oomlout_oobb_version_5` definitions, so these
redraws intentionally differ from the frozen originals:

- The native 6704 bearing is 20 mm ID, 27 mm OD and 4 mm wide. Its profile
  replaces the old hand-built 25.6 mm OD / 3.6 mm seat. With the explicit
  `clearance_bearing=3` setting, the hub's lower outside diameter is 22 mm
  (previously 22.7 mm).
- Screw heads, hex pockets, named-hole tolerances and bridge reliefs come from
  the library. Micro-holder bearing screws span the actual 9 mm body, placing
  their head and nut pockets on opposite faces. Obsolete reliefs from the
  omitted left screw have been removed.
- Motor body/tab dimensions, horn tapers, insert bores, mounting positions,
  15 mm grids, catalogue IDs and finished depths are retained.

Each bearing plate still represents the lower half of its original assembly;
its fasteners span both halves. The standard screw-horn variant remains a hub
only. The small horn screws use native M2 self-tapping profiles.

```powershell
python validate_migration.py
python validate_migration.py --previews
```

Validation requires `trimesh`, `numpy` and `PyYAML`. It checks taxonomy through
all stages, actual depth and bounds, watertight meshes, expected solid counts,
measured M3/M6 grid-hole radii, and `m="#"` propagation through the drawing and
SCAD serializer. OpenSCAD renders with Manifold and any warning/error fails
validation. Frozen source checksums are also checked; exact legacy geometry
equality is no longer a requirement.

The current report is `outputs/native_validation/report.json` and the redraw
overview is `outputs/native_overview.png`. The previous exact-migration report
under `outputs/migration_validation/` is historical. These are digital checks;
the revised native hardware clearances have not been physically fit-tested.

## Standard servo holder V2 (October 2026)

The active standard-servo V2 has top-adjustable mounting: four **M3 × 30
countersunk screws** pass through the upper plate into two floating bars below
the ears, each retaining two M3 nuts at **10.4 mm spacing**. The main holder
has plain shaft holes. Loosen and tighten from above after closing the clamshell.
The 4.5 mm ear holes accommodate the shifted screw axes around the 6704 bearing.
The four servo heads sit flush with the fixed top plate at Z=16.2; screw lengths include the head.

Separate **0.5, 1, 2 and 3 mm spacer pairs** move the servo away from the bearing;
**1 mm is fitted by default**. Matching female runner variants preserve shaft
engagement for each profile and spacer thickness. Changing shims requires
opening the cover. The default print layout has nine pieces. The lower cover
is 2 mm deeper to accommodate the 3 mm spacer option. Twelve free captive M3
grid nuts, eight M6 sites and all corner passages remain in the fixed top.

The active part is
`oobb_part_holder_motor_servo_standard_5_width_3_height_15_depth_bearing_6704_version2`.
Its bearing, female taper, raised output nuts, separate 45° countersunk runner
connectors, reference servos and fit coupons retain their shared mechanics.
V1 is preserved. The preceding V2 is in `outputs/servo_v2_before_top_adjustment/`.

```powershell
python action_make_servo_v2.py
python validate_servo_v2.py
```

See [SERVO_V2.md](SERVO_V2.md) for dimensions, spacer/runner file selection,
hardware, assembly and the digital clearance checks.

## Microservo holder V2 and shared servo mechanics

The micro version has a **4x3 footprint and ten print pieces**. Four flush
**M3 x 30 countersunk screws** enter from the top and engage two standard-design
two-nut blocks under broad ear brackets. Adjust the servo from above with the
clamshell closed. Micro nut pockets remain 3.4 mm tall for bridge clearance.

The main holder is **9 mm**, the upper plate **7 mm**, and the clamshell **35 mm**
deep. The bearing occupies Z=10..14, entirely within the Z=9..16 upper plate.
A separate **1 mm outer-race ring** sits below it inside that plate. The main
part has a straight 20.6 mm bore and prints flat-face-down without an annular
bearing ledge. Keep the exported print orientation and include the support ring.
The retained 14.2 mm catalogue declaration differs from the actual dimensions.
Six references cover SG90, MG90S, FEETECH FS90/FS90R and Hitec HS-55/HS-65HB.
Choose the matching female runner and print its calibration coupons first.

Both V2 families now use `servo_shared.py` for their bearing seat, female taper,
runner nuts, diagonal M3 countersunk screws, topper and calibration coupons.
The centre bores and lowered horn-screw head seats follow each profile's
clearance data. Exact factory threads remain model-specific. V1 stays separate.

```powershell
python action_make_servo_micro_v2.py
python validate_servo_micro_v2.py
python action_make_servo_v2.py
python validate_servo_v2.py
python validate_servo_shared.py
python make_servo_comparison.py
```

See [micro assembly/research](SERVO_MICRO_V2.md), [shared edit guide](SERVO_SHARED.md)
and [visual/numerical comparisons](source_file/servo_comparison/README.md).
Original specifications, dimensions and download hashes are retained in
`source_file/servo_micro_v2_reference/`.
