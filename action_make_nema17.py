"""Rebuild the seven straight NEMA17 assemblies through the catalogue pipeline."""
import working


if __name__ == "__main__":
    working.main(filter="holder_motor_stepper_nema17_assembly", generate_stl=True,
                 navigation=True)
    import render_nema17_overview
    render_nema17_overview.main()
