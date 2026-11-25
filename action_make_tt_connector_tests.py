"""Build one complete connector test tray through populate -> OOMP -> SCAD."""
import working
import render_tt_connector_map


if __name__=='__main__':
    working.main(filter='holder_motor_gear_tt_v2_coupling_tests',
        generate_stl=True,navigation=False,run_action=False,run_svg=False)
    render_tt_connector_map.main()
