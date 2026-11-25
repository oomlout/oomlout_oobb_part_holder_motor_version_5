# Microservo V2: top countersunk adjustment

Print `3dpr.stl` for all TEN pieces with the SG90 runner. Alternatively print
the ten individual files in `pieces/`. Do not print both sets. Substitute
`runners/female_rotor_<profile>.stl` for a different servo. Fit coupons are in
`fit_tests/`; files in `previews/` show assembly and are not print layouts.

Actual depths: main holder 9 mm, upper plate 7 mm, clamshell 35 mm. The retained
14.2 mm catalogue declaration does not describe those finished depths.

Keep the exported print orientations: the main holder and upper plate already
have their flat faces on the bed. The main has a straight 20.6 mm bore without
an inward bearing step. Print the separate 1 mm bearing_support ring flat.
Inspect the short native nut bridges in the slicer and check the fit coupons.

The whole 6704 bearing sits at Z=10..14 inside the upper plate at Z=9..16.
The ring sits below its OUTER race at Z=9..10; do not omit the ring. The main
holder stops at Z=9. The ring avoids an annular overhang in the main print.

Servo mounting uses four M3 x 30 COUNTERSUNK screws, length including head.
Heads sit flush with the fixed top at Z=16. Two broad 2 mm ear brackets go
under the servo ears, with a standard-design two-nut block under each bracket.
Blocks are 6.5 x 19.5 x 6.5 mm, with nuts at 10.4 mm pitch. Load two M3 nuts
into the bottom of each block before installation. All micro nut pockets are
3.4 mm tall, preserving extra vertical allowance for bridge droop.

Pass the four screws down through the upper and main plates, the brackets and
the nut blocks. Raise each bracket/block together until it contacts the ear;
do not bend the bracket to close a gap. Tighten gently with the ears against
both upper shelves. The screw axes clear the six modelled cases/ears without
depending on the servo mounting-hole pattern.

Fit the runner/lid through the upper plate, slide the bearing over the female
end from below, then fit the support ring below the bearing and close the main
plate against it. Insert the servo from below and use its factory horn screw.
The four cross output nuts load from above; the two diagonal connector nuts
load from below. The runner lid remains 2.2 mm thick, installed Z=19.4..21.6.

Close the clamshell using four M3 x 25 socket-cap screws and four nuts. To
adjust with the case closed, loosen the FOUR TOP countersunk heads while
keeping the screws threaded, settle the servo and retighten evenly. Check
free output movement. Servo-driver holes in the bottom are no longer needed;
the cover screws retain their own underside wells.

Other hardware: one 6704, two M3 x 10 countersunk runner connectors plus two
nuts, four M3 cross output nuts, and optional top-grid nuts. Use the servo's
own horn-retention screw; an assembly M3 does not establish its factory thread.

558 micro CAD checks and 48 shared checks passed.
Coverage includes all six servo envelopes, full countersunk screw envelopes,
top access, both ear supports, nut insertion with 0.6 mm height allowance,
the whole bearing above the main plate, and the main bore without a step.
The 360 accepted standard SCAD/STL/PNG exports are preserved.
Physical fit, printing quality and loaded performance require print trials.
See SERVO_MICRO_V2.md for complete assembly and source evidence.
