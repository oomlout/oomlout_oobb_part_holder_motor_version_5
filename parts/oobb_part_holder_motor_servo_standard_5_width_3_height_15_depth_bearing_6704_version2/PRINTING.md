# Standard servo V2: flush countersunk servo attachment

For an existing assembly, reprint bearing_retainer.stl and replace the four
top servo screws with M3 x 30 countersunk screws. The other printed parts fit
the revised plate.

Print 3dpr.stl for the nine-piece default set. It includes one 1 mm spacer
above each servo ear, two lower nut bars and the MG996R female runner.
Do not also print the individual versions of pieces already on that plate.

Hardware for the new servo clamp: four M3 x 30 countersunk screws and four
M3 nuts. Load two nuts into each bar from below, start the screws from above,
and close the cover. Loosen and retighten from above to settle the servo;
keep the screws threaded into the nuts. The four servo heads sit flush at Z=16.2, in nominal M3 conical seats.
Countersunk lengths include the head: the 30 mm screws reach Z=-13.8 and
fully engage the nuts with every spacer pair. Cover screws remain M3 x 25
socket caps.

spacer_assortment.stl contains eight shims in four rows: 0.5, 1, 2, 3 mm,
starting at Y=0. Individual spacer_pair_<thickness>mm files are alternatives.
The name 0d5mm means 0.5 mm. Use equal shims above both ears. Changing shims
requires opening the cover.

Choose female_rotor_<profile>_spacer_<thickness>mm.stl to match both your
servo and shim thickness. Profiles: mg996r, hs311, fs5106r, s3004.
The runner in 3dpr.stl is mg996r with 1 mm shims; substitute one runner
when choosing another servo or shim. Match the physical servo's spline and
factory horn screw. Calibrate the female fit using horn_fit_test.stl.

534 standard mesh/clearance checks passed for this revision; the shared
mechanics retain their preceding validated geometry.
These are digital checks; physical fit and loaded performance are untested.
Complete dimensions, remaining assembly hardware and source confidence are
in the repository's SERVO_V2.md.
