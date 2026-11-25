"""Normal populate -> OOMP -> SCAD/STL/PNG build for TT V2 and both test trays."""
import working
import json
from pathlib import Path
from datetime import datetime, timezone
import shutil


if __name__ == "__main__":
    from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id
    option = next(o for o in get_options() if o["oobb_name"]=="holder_motor_gear_tt_v2")
    apply_taxonomy(option)
    report = Path(__file__).resolve().parent/"parts"/build_oomp_id(option)/"validation.json"
    report.parent.mkdir(parents=True,exist_ok=True)
    report.write_text(json.dumps(dict(passed=False,checks=0,status="pending_validation",
        reason="Rebuilding TT exports; run python validate_tt_v2.py after the build."),indent=2)+"\n")
    root = Path(__file__).resolve().parent
    archive = root/"working-backups"/"tt-parts-only-retired"/datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    retired = [name for name,piece in option["pieces"].items() if piece["role"]=="shaft"]
    for name in retired+["shaft_print","rotating","wire_lid"]:
        for file in report.parent.glob(name+".*"):
            target = archive/file.name
            if not file.resolve().is_relative_to(root) or not target.resolve().is_relative_to(root):
                raise ValueError("TT retirement archive must stay within this project")
            target.parent.mkdir(parents=True,exist_ok=True)
            shutil.move(str(file),str(target))
    working.main(filter="holder_motor_gear_tt_v2", generate_stl=True,
                 navigation=False, run_action=False, run_svg=False)
    shutil.copy2(root/"TT_V2.txt",report.parent/"README.txt")
    tests = next(o for o in get_options() if o["variant"]=="testing_motor_mount")
    apply_taxonomy(tests)
    shutil.copy2(root/"TT_MOUNT_TEST.txt",root/"parts"/build_oomp_id(tests)/"README.txt")
    import render_tt_connector_map
    render_tt_connector_map.main()
