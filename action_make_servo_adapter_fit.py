"""Rebuild both standalone coarse servo-adapter calibration parts."""
import working


if __name__ == "__main__":
    working.run(run_oomp_populate=True, run_oomp=True, run_scad=True,
                generate_stl=True, run_action=False, run_svg=False,
                filter="adapter_fit_test")
