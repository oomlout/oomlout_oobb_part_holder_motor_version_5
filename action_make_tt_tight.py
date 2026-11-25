"""Shortcut for the normal catalogue build of the complete tight TT part.

All dimensions and placements live in working_oomp_populate.py. Every drawing,
including the print layout and reference hardware, lives in working_scad.py.
"""
import working


def main():
    working.main(filter="holder_motor_gear_tt_assembly", generate_stl=True, navigation=True)


if __name__ == "__main__":
    main()
