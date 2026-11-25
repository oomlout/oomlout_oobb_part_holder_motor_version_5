"""Compatibility entry point: TT deliverables live only in parts/."""
from pathlib import Path
from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id


def main():
    root = Path(__file__).resolve().parent
    for option in get_options():
        if option['oobb_name'].startswith('holder_motor_gear_tt_v2'):
            apply_taxonomy(option)
            print(root/'parts'/build_oomp_id(option))


if __name__ == '__main__':
    main()
