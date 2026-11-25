# Developing standard and micro V2 together

## Edit map

| Change | Edit |
|---|---|
| Bearing seat, retaining lip, journal, runner nuts, diagonal screws, topper | `servo_shared.py`, `ServoMechanics` |
| Female taper, horn screw shaft clearance and recessed head seat | Shared `socket()` / `retention_cutters()` and profile JSON |
| Bearing, socket and centre-bore print coupons | Shared `draw_*_coupons()` methods |
| Standard frame, mounting ledges, cover and OOBB exclusions | `servo_v2.py` |
| Two-nut blocks used by both families | `servo_shared.draw_captive_nut_bar()` |
| Micro frame, ear brackets, support ring, top screws and OOBB exclusions | `servo_micro_v2.py` |
| Individual body, spline and factory screw reference | Each family's `mechanical.json` |
| Catalogue dimensions and print placements | `working_oomp_populate.get_options()` |
| Standard and micro dispatch | Respective V2 functions in `working_scad.py` |
| Clearance regressions | `validate_servo_v2.py`, `validate_servo_micro_v2.py` |

`ServoMechanics` receives explicit reference/dimension/grid callbacks. Each
family has an independent instance; no process-global family switch or geometry
copy is needed. The validators check that both instances use the same methods.
The four cross-pattern nut positions, diagonal connector radius, full bearing
seat, print-aware nuts and short horn-screw well therefore improve together.

`bearing_stack_dimensions()` supplies the common lip, seat, runner split,
lid and connector rules. Family dimensions add their mounting and cover sizes.
Both families' dimensions and generated print components were compared before
and after this extraction and remained identical.
Micro
profiles can extend their female noses below the common journal start; this is
necessary for low outputs such as the FS90. Attachment bores follow the lower
nose face, so they remain open on every runner variant.

## Checking changes

Rebuild both V2 families using their action shortcuts, then run both validation
scripts. Review `comparison_standard_micro_sections`, `horn_interface`, the
appropriate profile assembly and the ten-piece micro print layout. Reprint
small coupons after changing bearing allowance, taper or screw clearances.
The socket roof uses the native nut-style two-layer bridge in both V2 families.
For the coarse socket-down diameter/depth matrix, run
`python action_make_servo_adapter_fit.py`; see `SERVO_ADAPTER_FIT.md`.
Run `python validate_servo_adapter_fit.py` after rebuilding both families to
check the exported transition layers and every labelled fit sample.
`make_servo_comparison.py` refreshes the numerical comparison and checks source
archive hashes. All values are millimetres and use the servo ear datum.
Run `python validate_servo_shared.py` as well for both sets of physical print
coupons, four output bolt/nut paths per profile, and the micro clamp nuts'
bottom insertion, extra bridge-height allowance and rotation restraint.

V1 is archived under `working-backups/catalogue-cleanup/`, outside the active
catalogue and parts trees. Its preservation manifest points to those archived
files with the original hashes. The standard holder, bearing plate, lid and clamshell STLs
were byte-identical after the initial extraction into the shared module. The
intended standard V2 change is in the runner: researched screw-clearance fields
and a lower head seat. V1 source and output preservation are checked separately.

## Source confidence

Keep confirmed dimensions distinct from estimated envelopes in the JSON status
and retention evidence fields. A screw's clearance diameter does not establish
its thread. Tooth count does not establish spline diameter or tooth shape.
The source archive keeps current and older drawings where they disagree so
future measurements can replace assumptions without hiding the discrepancy.

## Top-adjustable mounting

Both families wrap the common upper plate with four flush M3 x 30 countersinks
and use `draw_captive_nut_bar()` for 6.5 x 19.5 x 6.5 mm blocks with M3 nuts at
10.4 mm pitch. Main plates contain plain shaft holes. Each family specifies
its own axes and ear support. Micro blocks retain the taller 3.4 mm pockets.

Standard calls the common runner using `installed_profile()`. It lowers the
female nose, spline reference and retention seat by the selected ear-spacer
thickness while keeping the bearing/output stack fixed. The default is 1 mm;
0.5, 1, 2 and 3 mm spacers have matching runner exports. See `SERVO_V2.md`.

Micro uses the nominal ear datum and a straight 20.6 mm main bore. A separate
1 mm outer-race support ring and the whole bearing fit inside its 7 mm upper
plate, above the 9 mm main holder. The common bearing recess depth follows
`bearing_roof - retainer_bottom`, allowing the ring without changing standard.
See `SERVO_MICRO_V2.md` for print orientation and assembly.

## Family-specific nut height

`ServoMechanics` reads `dimensions()['nut_pocket_depth']`, defaulting to 2.8 mm
for the standard family. Micro V2 uses 3.4 mm for its upper plate and runner;
its separate nut blocks also use 3.4 mm pockets. The micro runner
split and output top rise by 0.6 mm to enclose the taller cross pockets with
the original lid thickness. Nut blocks retain material above their pockets; the main plate contains no nuts.
Keep nut width independent of this Z allowance. `validate_servo_shared.py`
checks insertion with a 0.6 mm lift to allow for bridge-height loss.

The micro validator compares standard exports with
`source_file/servo_micro_v2_reference/standard_output_baseline.json`.
Refresh that baseline only after an authorized, validated standard-servo change;
micro-only changes must preserve it. Earlier fingerprints remain in the saved
micro revision under `outputs/servo_micro_v2_before_bottom_adjustment/`.
The 2026-11-01 baseline refresh covers the shared socket-roof bridge change;
the stationary holder, retainer, shell, clamps and lid sources stayed identical.
