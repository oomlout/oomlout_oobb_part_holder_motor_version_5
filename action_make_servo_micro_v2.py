"""Normal populate -> working_oomp -> working_scad pipeline for micro V2."""
import working

if __name__ == '__main__':
    working.run(run_oomp_populate=True,run_oomp=True,run_scad=True,
                generate_stl=True,run_action=False,run_svg=False,
                filter='holder_motor_servo_micro_v2')
