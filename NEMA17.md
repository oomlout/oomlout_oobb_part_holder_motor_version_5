# Straight NEMA17 holders

![Current assemblies](outputs/nema17/overview.png)

All motor fixings use native **`oobb_screw_countersunk`**. Direct/6705 use
M3 × 10 screws in a 6 mm plate (4 mm motor engagement); the 6810 uses **M3 × 6
in a 3 mm plate** (3 mm engagement). Heads finish flush. The reference motor
has 4.5 mm-deep threads. Countersunk lengths include the head.

All NEMA17 internal nut pockets use native OOBB **`overhang=True`** stepped
bridge relief. Quoted pocket depths and face skins describe the hex recess;
the relief extends locally beyond its ends to ease printing.

There are seven active straight mounts. Face, foot and side/angled catalogue
entries are retired under `outputs/nema17_previous_catalogue/before_clamshell/`,
along with their models and previous source. No right-angle bracket remains.

| Option | Output | Complete print layout |
| --- | --- | --- |
| Direct | 44 × 44 mm square; motor's own bearings | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_5_height_8_depth_straight_direct/3dpr.stl) |
| 6705 circular clamshell | 29 mm circle; four embedded M3 output nuts | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_5_height_12_depth_bearing_6705_clamshell_circle/3dpr.stl) |
| 6705 raised 3×3 clamshell | 44 × 44 mm raised square; eight embedded M3 output nuts | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_5_height_12_depth_bearing_6705_clamshell_square_3x3/3dpr.stl) |
| 6810 clamshell | 12 mm shell; 74 × 74 mm split square with embedded nuts | [STL](parts/oobb_part_holder_motor_stepper_nema17_7_width_7_height_12_depth_bearing_6810_straight_6810/3dpr.stl) |

The links above use 5×5 motor plates (7×7 for 6810). Compact **5×3 / 74 × 44 mm**
versions are also available:

| 5×3 option | Complete print layout |
| --- | --- |
| Direct | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_3_height_8_depth_straight_direct/3dpr.stl) |
| 6705 circular | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_3_height_12_depth_bearing_6705_clamshell_circle/3dpr.stl) |
| 6705 raised 3×3 square | [STL](parts/oobb_part_holder_motor_stepper_nema17_5_width_3_height_12_depth_bearing_6705_clamshell_square_3x3/3dpr.stl) |

The 6810's 65 mm outside diameter cannot fit a 44 mm-high 5×3 housing, so it
retains the larger footprint.

Individual SCAD/STL/PNG pieces, assembled/exploded views and reference hardware
are beside each STL. Hardware is excluded from printable files. The motor
plate is 74 × 44 or 74 × 74 mm for direct/6705 and 104 × 104 mm for 6810.

## 6705 clamshell and embedded nuts

The split bearing seat and split nut pockets follow
`C:/gh/oomlout_oobb_part_holder_bearing_version_5/working_scad.py`. A snapshot
is retained in `source_file/nema17_reference/bearing_holder_reference.py`;
builds use editable local drawings and do not import that project.

The stationary halves are each **4.1 mm thick**, meeting at the bearing centre.
Each contains half of a 32.3 mm diameter, 4.2 mm deep seat, with a 2 mm outer-race
retaining lip. Four corner M6 fasteners close the clamshell and attach it to the
motor plate over four 12 mm printed spacers.

On **5×3 bearing versions**, use M6 × 30 socket screws from underneath the motor
plate. Their M6 nuts sit in 5.5 mm deep hex recesses spanning both shell halves,
below the upper shell surface. This keeps large heads/nuts below the raised
square's rotational path; only the narrower screw tips project above the cap.
Eight adjacent M3 half-grid holes are excluded where those nut pockets need
material. The 5×5 bearing versions retain M6 × 35 screws from above and nuts below.

The lower rotating hub has a 24.85 mm journal for the nominal 25 mm bearing bore.
Its lower shoulder is 26.8 mm diameter; above the bearing it expands to 29 mm,
inside the shell's 30.2 mm opening. The metal coupler flange locates in a 22.4 mm
counterbore beneath the hub.

### Circular output: two rotating pieces

- `hub.stl`: flange connection, journal and lower circular nut pockets.
- `output.stl`: 29 mm circular lid closing the pockets.

Four **M3 output nuts at (±7.5,0) and (0,±7.5)** straddle the mating plane.
They are enclosed on assembly. Each hole passes through the lid and continues
blindly into the lower hub. The central M6 access hole and two usable diagonal
half-grid holes remain; the other diagonals hold the lid fasteners.

Two M2.5 × 5 countersunk screws join the lid. Their head mouths are recessed
0.5 mm; their nuts load into the lower split face. Four M3 × 5 socket screws
attach the metal coupler to four separate M3 nuts loaded through the underside
flange recess. The metal flange closes these lower pockets. Separating the
flange and output nuts axially prevents their hex pockets from merging.

### Raised 3×3 output: three rotating pieces

1. `hub.stl`: lower circular flange connection and journal.
2. `output.stl`: raised 44 × 44 × 3 mm square base.
3. `output_lid.stl`: 44 × 44 × 3 mm square lid.

Eight M3 attachment nuts at `(±15,±7.5)` and `(±7.5,±15)` straddle the square's
split plane. Four additional embedded M3 nuts on the coupler's 16 mm bolt
circle secure the rotor. All twelve pockets are **inside the raised square**,
above the bearing and shell. Four M3 × 15 socket screws enter from the
motor-facing side of the metal flange and clamp all three rotating pieces.
Load the twelve nuts before fitting the lid; no paused-print insertion is needed.

The **three-piece count refers to the rotating output**. The full square
assembly contains ten print solids, including the motor plate, two stationary
shell halves and four spacers. The circular assembly contains nine.

## 6810: 12 mm clamshell

The full stationary bearing housing is **12 mm deep: two 6 mm halves**.
They meet at the bearing centre, enclosing a 65.3 mm diameter × 7.2 mm seat.
Each outer-race retaining lip is 2.4 mm thick, with a 62.8 mm opening.
The nominal 50 × 65 × 7 mm bearing has 0.1 mm axial allowance at each face.

The lower shell sits **directly on the 3 mm motor plate**, with no spacers or
M6 stack bolts. Eight **M3 × 10 countersunk screws** enter from the underside
of the plate at `(±37.5, ±7.5)` and `(±7.5, ±37.5)`. Their heads finish flush
and their nuts load into the lower shell's upper mating face.

Twelve more **M3 × 10 countersunk screws** enter from the upper shell:
four at `(±37.5, ±37.5)`, four at `(±37.5, ±22.5)`, and four at
`(±22.5, ±37.5)`. All twenty joining nuts are enclosed by the upper shell,
with 3 mm-deep pockets and 3 mm floors in the lower shell.

**All 24 perimeter M6 positions on the stationary 7×7 housing have captive
hex pockets**, split across the shell mating faces. Each pocket is 5.5 mm
deep, leaving 3.25 mm of material towards each outside shell face. Matching
M6 holes continue through the motor plate. Adjacent M3 holes that intersect
these larger pockets are excluded and recorded in the hole audit. Keep M6
attachment ends below the upper shell face wherever the output sweeps over them.

The output base includes the straight **49.85 mm OD, 22.4 mm-long bearing
journal**, at Z=6.6..29, with no lower retaining lip. The separate inner
hub/lifter remains removed. The journal engages 5.9 mm of the 7 mm bearing
bore and can withdraw upwards.

A second, concentric **drive tube is joined to the top output in the same
print**. Its dimensions are **50.15 mm ID × 59.8 mm OD × 16.4 mm long**.
The 0.3 mm diametral gap separates it from the journal. Its OD leaves
**1.5 mm radial clearance** inside the holder's 62.8 mm opening. Its length
is exactly **6 mm shorter than the inner journal**. Its lower end is at
Z=12.6, 0.1 mm above the bearing, so it clears the bearing face and outer race.
Both tubes join the underside of the output plate at Z=29. The outer tube
rotates as part of the output and does not clamp against the bearing face.

The 74 × 74 mm output uses a **4 mm base and 4 mm lid**. Eight captive M6 nuts
surround the centre hole on the central 3×3 grid: `(±15, ±15)`, `(±15, 0)` and
`(0, ±15)`. Their 5.5 mm-deep pockets leave nominal 1.25 mm skins on both faces,
locally stepped for print relief. The centre M6 hole stays open. Eight captive
M3 attachment nuts remain at `(±30, ±7.5)` and `(±7.5, ±30)`.

Four **M3 × 12 countersunk screws** at `(±22.5, ±22.5)` independently join
the two output plates. Each uses a **loose M3 nut beneath the bottom plate**,
clamping the full 8 mm plate stack. There are no embedded pockets for these
four nuts. The heads finish flush; screw tips project 4 mm below the plate,
about 1.6 mm beyond a nominal 2.4 mm nut.

**9 mm-diameter, bottom-open access channels** clear the adjacent outer drive
tube for fitting the nuts and an appropriately sized socket. They stop at the
plate underside, preserving its full 4 mm thickness. Fit and tighten these
nuts before installing the output on the bearing housing; this encloses the
attachment nuts while the output is handled. Once installed, the 14 mm gap
above the stationary shell allows side access.

### Small flange nut disc and matching top screws

The former tall `coupler_sleeve` is removed. The only separate coupler carrier
is the **38 mm OD × 4 mm nut disc**, retained as `coupler_nut_lid.stl` for file
compatibility. Its **9.9 mm centre bore** gives **0.1 mm diametral interference**
on the coupler's 10 mm barrel. This replaces the previous 10.25 mm clearance
bore. The interference is an editable catalogue parameter; printed fit depends
on printer and material and has not been physically tested.

Four complete M3 nut pockets open at the disc's top face on the **16 mm bolt
circle**, clocked 45°: hole centres are `(±5.656854, ±5.656854)`. Their flats
face radially. Short openings to the bore remove the otherwise 0.052 mm-thick
webs; the barrel closes these openings, while the remaining bore arcs grip it.
Load the nuts and press the disc
onto the barrel until it meets the underside of the **22 mm OD flange**.
The flange covers the nuts so they stay ready for the top screws. There are
no separate disc-lid screws or M2.5 nuts.

The coupler now points flange upwards: its barrel is at Z=17..27 and its
flange at Z=27..29, directly against the output plate. Four **M3 × 15
countersunk screws** from the top lid pass through both output plates and the
metal flange into the disc's nuts. The top holes and disc nuts share the
same flange pattern. The former `(±7.5, ±7.5)` joiners are removed; conflicting
half-grid holes are excluded and recorded in the audit.

Matching **6 mm-wide × 4 mm-high side windows**, along +X at Z=20..24, pass
through both integrated tubes. The barrel's assumed mid-height grub screw
is at Z=22; the 24 mm motor shaft enters the barrel by 7 mm. The disc starts
at Z=23 and leaves the tool corridor below it clear. Lift the loose upper
stationary shell towards the output before tightening the grub screw.

| 6810 feature | Assembly Z range |
| --- | --- |
| Motor plate | 0..3 mm |
| Lower / upper stationary shell | 3..9 / 9..15 mm |
| Nominal bearing | 5.5..12.5 mm |
| Inner journal | 6.6..29 mm; 49.85 mm OD |
| Integrated outer drive tube | 12.6..29 mm; 50.15 mm ID, 59.8 mm OD |
| Coupler barrel / flange | 17..27 / 27..29 mm |
| Nut disc / M3 pockets | 23..27 / 24..27 mm |
| Side access windows | 20..24 mm |
| Square base / lid | 29..33 / 33..37 mm |
| Central M6 output nut pockets | 30.25..35.75 mm |
| M3 output attachment nut pockets | 31.5..34.5 mm |
| Loose output lid joining M3 nuts | 26.6..29 mm; beneath plate |
| Plate and shell joining-nut pockets | 6..9 mm |
| Stationary perimeter M6 pockets | 6.25..11.75 mm |

Limit output attachment screw insertion to **8 mm for M6 and 6 mm for M3**,
measured from the outer face. The flange assembly uses its specified M3 × 15
screws separately. There are **six printable pieces**, **32 captive M3 nuts**,
**32 captive M6 nuts**, and **four loose M3 lid-joining nuts**. The tallest print is the **26.4 mm output base**,
including both tubes. The 12 mm catalogue dimension describes the assembled
stationary bearing shell; the existing `straight_6810` identifier is retained.

### Assembly sequence

1. Fasten the 3 mm motor plate using M3 × 6 countersunk screws. Attach the lower
   stationary shell with eight underside M3 × 10 screws. Load the shell's M3
   joining nuts and perimeter M6 nuts.
2. Load four M3 nuts into the small disc. Press its 9.9 mm bore onto the coupler
   barrel from below until the disc meets the flange underside and traps them.
3. Seat the bearing and place the upper stationary shell loosely above it.
   Place the output's eight M6 and eight M3 attachment nuts. Fit the lid and
   secure it using four M3 × 12 countersunk screws and loose M3 nuts underneath
   the bottom plate, through the bottom-open clearance channels.
4. Seat the coupler flange against the output underside. Fit the four M3 × 15
   countersunk screws from the lid through the flange into the disc nuts.
5. Slide the output journal into the bearing and the coupler onto the motor
   shaft. Align the grub screw and both tube windows along +X.
6. Lift the loose upper shell by up to 14 mm. Tighten the coupler grub screw
   through the windows, then lower the shell and fasten its twelve M3 × 10
   countersunk screws. Check free rotation.

The tool-access check uses a 1.9 mm-diameter corridor at Z=21.5 and 22.
The coupler source does not specify its grub screw's exact axial position;
check this and the printed press fit against the actual hardware. Strength,
thermal behaviour and axial retention have not been physically tested.

## OOBB holes

All faces begin with the complete 15 mm M6 grid and intervening 7.5 mm M3 grid,
including diagonals. Only conflicts with the motor boss, countersinks, bearing
seat, nuts, joining screws or circular edge are excluded. The 6705 raised square
retains nine M6 and twelve M3 grid holes; eight M3 holes have embedded nuts.
Four diagonal half-grid positions are occupied by flange nut pockets.

`thing.yaml` and `grid_hole_audit.json` record every candidate and exclusion.
Validation probes every included hole in exported meshes. Motor-plate holes
above the motor body are access/clearance holes, not places for long bolts
into the motor. Four corner M6 holes hold the 6705 bearing stack; M3 countersunk
joiners attach the 6810 stack and its perimeter M6 nuts serve external mounting.

For either new 6705 output, keep attachment screw insertion **at most 6 mm from
the output's outer face**. This avoids the circular hub's blind floor and the
stationary cap beneath the raised square. Check installed bolts through a full turn.

## Dimensions and hardware

Coordinates use motor face Z=0, with motor behind it and shaft towards +Z.

| 6705 feature | Z range / dimension |
| --- | --- |
| Motor plate | 0..6 mm |
| Coupler barrel / flange | 8.2..18.2 / 18.2..20.2 mm |
| Spacers | 6..18 mm |
| Lower / upper shell | 18..22.1 / 22.1..26.2 mm |
| Nominal bearing | 20.1..24.1 mm; 25 × 32 × 4 mm |
| Lower rotating hub | 18..28.2 mm |
| Circular lid / output-nut split | 28.2..31.2 / 28.2 mm |
| Raised square base / lid | 28.2..31.2 / 31.2..34.2 mm |
| Square nut split | 31.2 mm; pockets ±1.5 mm |
| Journal / housing diametral allowance | 0.15 / 0.3 mm |
| Bearing total axial allowance | 0.2 mm |

| Hardware | Direct | 6705 circle | 6705 square | 6810 |
| --- | --- | --- | --- | --- |
| M3 × 10 countersunk motor screws | 4 | 4 | 4 | — |
| M3 × 6 countersunk motor screws | — | — | — | 4 |
| M3 socket flange screws | 4 × 10 mm | 4 × 5 mm | 4 × 15 mm | — |
| M3 flange nuts | 4 | 4 | 4 | 4 |
| Captured M3 output nuts | — | 4 | 8 | 8 |
| M3 × 10 countersunk plate/shell screws + nuts | — | — | — | 20 each |
| M3 × 15 countersunk flange/output screws | — | — | — | 4 |
| M3 × 12 countersunk output-lid screws + loose nuts | — | — | — | 4 each |
| Captive stationary perimeter M6 nuts | — | — | — | 24 |
| Captive central 3×3 output M6 nuts | — | — | — | 8 |
| M2.5 × 5 countersunk screws + nuts | — | 2 each | — | — |
| M6 × 35 socket screws + nuts | — | 4 each | 4 each | — |
| Printed 12 mm spacers | — | 4 | 4 | — |
| External bearing | — | 6705 | 6705 | 6810 |

Each version needs a 5 mm-bore flange coupler and its grub screw. Socket lengths
exclude heads; countersunk lengths include them. M6 stack nuts and screw ends
sit below the motor plate on 5×5 6705 versions; the 5×3 fasteners are reversed
with recessed upper nuts as described above. The direct output retains
top-loading flange-nut pockets; both bearing sizes have enclosed output nuts.

Motor reference: SOYO SY42STH38-1684A, 42.3 mm square, 38 mm long, 31 mm mounting
pitch, 22 mm boss and 5 mm shaft extending 24 mm. Boss height 2 mm is an estimate.
The supplied coupler has a 22 × 2 mm flange, 10 × 10 mm barrel, and four M3 holes
on a **16 mm bolt circle**, clocked 45° to OOBB. Original records are retained
in `source_file/nema17_reference/`.

Bearing dimensions and race abutments are sourced from
[JTEKT 6705](https://koyo.jtekt.co.jp/en/products/detail/?pno=6705) and
[NSK 6810](https://www.nsk.com/eu-en/engineering/products/bearings/ball-bearings/deep-groove-ball-bearings/single-row-deep-groove-ball-bearings/6810-apn.html).

## Assembly and rebuild

For direct/6705, fasten the motor with flush countersunk screws. Assemble the rotor with its
captured nuts, then fit the bearing and shell halves. Slide the coupler onto
the motor shaft, install spacers and M6 corner fasteners, then tighten the
coupler grub screw through the open gap. Confirm free rotation without
squeezing the bearing's inner and outer races together.

Use supplied print orientations. Upper shell/lids are flipped so mating pockets
open upwards. The lower hub prints on its broad top face with the flange recess
open upwards; inspect its short bridges over underside nut recesses. Print
individual files if the full layout exceeds the bed.

Catalogue parameters are in `working_oomp_populate.py`, drawings in
`working_scad.py`. Fixed positions/depths need coordinated edits when dimensions change.

```powershell
python action_make_nema17.py
python validate_nema17.py
```

For parallel export after SCAD generation:

```powershell
python -c "import working; working.main(filter='holder_motor_stepper_nema17_assembly', generate_stl=False, navigation=False)"
python validate_nema17.py --export
python render_nema17_overview.py
```

Checks cover watertight solids, bed placement, countersinks, every included grid
hole, closed nut skins, bearing-seat halves, nominal hardware interference and
rotor clearance at 0°, 22.5°, 45° and 90°, including the actual stack-fastener
envelopes. Reports are beside each part and in
`source_file/nema17_reference/validation.json`. Physical fit, motor heating and
load capacity remain untested.
