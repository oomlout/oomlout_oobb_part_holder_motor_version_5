"""Optional project-specific notes, applied before source YAML is written."""
from oomp_populate_helper import build_oomp_id


def main(**kwargs):
    extras_by_id = {build_oomp_id(extra): extra for extra in kwargs.get("extras", [])}
    # Add notes against a real catalogue ID here. For example:
    # extras_by_id["oobb_part_holder_motor_gear_tt_6_width_3_height_6_depth"]["notes"] = "..."
    return extras_by_id
