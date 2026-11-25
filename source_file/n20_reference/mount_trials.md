# N20 mounting trials

Print [mount_trial_tray.stl](mount_trial_tray.stl) in the supplied orientation. It contains three small faceplates and one standard rear. The engraved values are clearance **per side**. Each face reproduces the finished holder's 3 mm gearbox inset, entry step, boss opening and both screw patterns.

1. Measure the actual gearbox width and height, the face-to-flat-end-cap distance, overall length through the rear boss, and the terminal positions. Exclude shafts when measuring overall length. Identify the brush/end-cap variant. The references model motors without encoders.
2. Try the unpowered motor in 0.15, 0.25 and 0.35 mm seats before adding screws. Record which seat bottoms by finger pressure, pulls out cleanly and has the least sideways rock. The current holder uses 0.25 mm per side. Check the shaft turns as freely as it did before assembly.
3. With the motor out, seat both M1.6 x 4 countersunk screws and measure their projection past the gearbox stop. Expect about 1.06 mm for the modelled head. The native countersink is cut 0.4 mm shallower to limit head descent. Compare the measurement to the motor supplier's permitted intrusion before installing. The project limit for these Pololu references is 1.3 mm. Both screws should start by hand with the gearbox fully seated.
4. Place two ordinary M3 nuts into the exposed hex pockets in the rear. Pass two countersunk M3 screws from the face, align the central window around terminals, rear boss and rear shaft, then snug the screws alternately. Start with M3 x 35 for the 25.6 mm reference. Check both nuts engage fully and record tip projection. Use the wider rear supplied with the bearing cassette for that holder.
5. Colour the flat end cap lightly with a removable marker. After seating and removing the rear, look for contact on both sides of the window. Check that terminals, solder joints and the rear shaft clear it. Repeat removal and installation three times. Record any tilt, rough running or side play. With the motor fitted, apply a light hand twist to the case and check that the face stays seated. Record printer, material, pocket label, screw projection and result.

The nominal motor samples beside the trial tray are based on Pololu Rev 6.2 drawings, pages 7 and 8. Each brush style has a 9 mm and a 12.5 mm gearbox sample. The models show the maximum 25.6 or 29.1 mm overall envelope, including the rear boss. The boss projects 1.2 mm on precious-metal motors and 0.8 mm on HPCB motors. Terminal pitch is 6.9 and 6.2 mm respectively. All four samples include the optional 5 mm extended rear shaft to test clearance. Gearbox interiors, can curvature and tab thickness are approximations. Check soldered leads on the actual motor.

For an OOBB attachment, insert two M3 nuts from the back of the face plate at X = +/-7.5 mm, Y = 15 mm. They drop in from above in print orientation. Bolt through from the front and check that the nuts seat squarely. The other grid bores are plain.

| Motor reference | Standard gearbox | 1000:1 gearbox |
|---|---|---|
| Precious-metal brushes | [Render](motor_sample_precious_metal_9.png) | [Render](motor_sample_precious_metal_12d5.png) |
| HPCB | [Render](motor_sample_hpcb_9.png) | [Render](motor_sample_hpcb_12d5.png) |
