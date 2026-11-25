"""Load catalogue YAML into OOMP, preserving the drawing parameters.

No image-generation actions are needed for this mechanical project. Process
parts synchronously so working_scad can read them immediately afterwards.
"""
import copy
from pathlib import Path
import oomp
import yaml


def main(**kwargs):
    load_parts(**kwargs)


def load_parts(**kwargs):
    create_generic(**kwargs)


def create_generic(**kwargs):
    for source_path in sorted(Path("parts_source").glob("*/working.yaml")):
        part = yaml.safe_load(source_path.read_text(encoding="utf-8"))
        if not isinstance(part, dict) or not isinstance(part.get("oobb_details"), dict):
            continue
        part = copy.deepcopy(part)
        part_id = oomp.get_id(**part)
        part["name"] = part_id
        part["name_space"] = part_id.replace("_", " ")
        part["name_proper"] = part["name_space"].title()
        part["name_upper"] = part["name_space"].upper()
        part["directory"] = f"parts/{part_id}"
        part["project_name"] = Path.cwd().name
        manual_path = Path(part["directory"]) / "working_manual.yaml"
        if manual_path.is_file():
            part.update(yaml.safe_load(manual_path.read_text(encoding="utf-8")) or {})
        part.update(kwargs)
        oomp.add_part(**part)


if __name__ == "__main__":
    main()
