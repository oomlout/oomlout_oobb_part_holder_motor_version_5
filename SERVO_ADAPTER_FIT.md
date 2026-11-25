# Servo adapter fit, coarse round 1

The user selected the centre sample **D0/Z0** on 2026-11-01, reporting that
the fit is perfect. This setting is locked in `SERVO_ADAPTER_FIT` in
`working_oomp_populate.py` and applied to both V2 assembly defaults on every
rebuild. Their `adapter_fit_selection` catalogue metadata records the decision.
The full adapters retain the native two-layer socket-roof bridge. This records
the selected setting; it does not establish physical fit for every servo profile.

The standard and micro V2 female adapters now use the native `oobb_overhang`
pattern above the servo socket, as the captive nut pockets do: a 0.3 mm slot
layer, a 0.3 mm square layer, then the round retention-screw passage. They print
socket-down. The screw head seat stays 1.2 mm above the socket roof; the two
transition layers occupy the lower 0.6 mm of that land.

Run `python action_make_servo_adapter_fit.py` for the normal
`working_oomp_populate -> working_oomp -> working_scad` build. This creates two
separate catalogue parts, each with `3dpr.scad`, `3dpr.stl` and `3dpr.png`:

| Part | Default profile | Tallest coupon | Layout |
|---|---|---|---|
| Standard adapter fit test v1 | MG996R, default 1 mm ear spacers | 7.45 mm | 146 x 103 mm |
| Micro adapter fit test v1 | SG90 | 7.55 mm | 146 x 103 mm |

To rebuild only the SG90 micro-servo horn fitting test, run
`python action_make_servo_micro_adapter_fit.py`. Its folder is
`parts/oobb_part_holder_motor_servo_micro_10_width_8_height_7d55_depth_adapter_fit_test_v1`.
Print `3dpr.stl` for the complete fifteen-sample matrix. The micro socket,
boss relief and factory-screw clearances come from the SG90 profile; this is
a separate physical calibration from the standard-servo result.

Each part has fifteen separate coupons with attached labels. Each coupon uses
the production socket, entrance flare, boss relief, roof bridge, screw shaft
clearance and recessed screw head seat. The outside is a simple 19.8 mm cylinder
with a label tab, omitting output nuts and the upper flange to save material.
These coupons calibrate the servo interface; use a complete adapter afterwards
to verify the bearing and assembled stack.

| Label | Values (mm) | Effect |
|---|---|---|
| D, columns left to right | -0.6, -0.3, 0, +0.3, +0.6 | Added to both socket taper diameters, not radius |
| Z, rows front to back | -0.6, 0, +0.6 | Added to socket depth and screw-seat height together |

D0 uses the existing taper: profile spline diameter +0.20 mm at the lower end,
and -0.08 mm at the roof. Z0 uses the existing roof 0.35 mm above the profile
spline top. This broad first pass deliberately spans tight through loose fits.
All coupons print with the socket opening on the bed, just like the adapter;
the small raised letters face up. No support is intended inside the socket.

Start with D+0.6/Z0 and work toward tighter fits by hand. The loosest trial may
still be tight on a particular printer. Stop before force risks the servo.
Compare the three Z rows once a useful D range is found. Check full seating,
rotational play, hand insertion/removal and whether the factory horn screw can
seat. Record profile, D, Z, layer height, material and which fit felt best.
Physical print results determine the next round; mesh checks cannot establish
friction fit or bridge quality.

Change the explicit `fit_diameters`, `fit_depths` and default profile choices in
`working_oomp_populate.get_options()` for another round or servo. Standard
profiles are mg996r, hs311, fs5106r and s3004; micro profiles are sg90, mg90s,
fs90, fs90r, hs55 and hs65hb. Catalogue depth follows the selected profile and
maximum Z adjustment automatically. Adjust the layout if adding more samples.

The selected D and Z are stored as `socket_diameter_adjustment_mm` and
`socket_depth_adjustment_mm` in `SERVO_ADAPTER_FIT` and copied into each
assembly's `oobb_details`. Both remain at the selected zero values. A future Z
change also moves the screw seat, so recheck factory screw engagement and the
full assembly before accepting it. The sockets remain smooth friction tapers;
the research does not establish a printable tooth-root profile.
