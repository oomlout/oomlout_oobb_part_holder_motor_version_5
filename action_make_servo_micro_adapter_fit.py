"""Rebuild the labelled SG90 micro-servo horn socket fitment matrix."""
import working


if __name__ == "__main__":
    working.run(run_oomp_populate=True, run_oomp=True, run_scad=True,
                generate_stl=True, run_action=False, run_svg=False,
                filter="holder_motor_servo_micro_adapter_fit_test")
