"""Filtered shortcut for the normal populate -> OOMP -> SCAD/STL/PNG pipeline."""
import working


if __name__ == "__main__":
    working.run(run_oomp_populate=True, run_oomp=True, run_scad=True,
                generate_stl=True, run_action=False, run_svg=False,
                filter="holder_motor_servo_standard_v2")
