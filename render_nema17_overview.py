"""Contact sheet of the seven current straight-mount assemblies."""
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont

from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id


def main():
    root = Path(__file__).resolve().parent
    output = root / "outputs/nema17"
    output.mkdir(parents=True, exist_ok=True)
    sheet = Image.new("RGB", (1500, 1400), "#f7f7f7")
    draw = ImageDraw.Draw(sheet)
    font = ImageFont.truetype("C:/Windows/Fonts/segoeui.ttf", 21)
    title = ImageFont.truetype("C:/Windows/Fonts/segoeuib.ttf", 34)
    small = ImageFont.truetype("C:/Windows/Fonts/segoeui.ttf", 18)
    draw.text((28, 16), "Straight NEMA17 mounts / 5 mm flange coupler", fill="#19383b", font=title)
    draw.text((28, 66), "Flush M3 motor fixings • 6705 and 6810 clamshells with embedded output nuts", fill="#46666a", font=font)
    for option in get_options():
        if option["motor_style"] != "nema17":
            continue
        apply_taxonomy(option)
        row = {3: 0, 5: 1, 7: 2}[option["height"]]
        column = (0 if option["support"] == "direct" else 1 if option["support"] == "6810"
                  or option["output_style"] == "circle" else 2)
        folder = root / "parts" / build_oomp_id(option)
        preview = Image.open(folder / "assembly.png").convert("RGB")
        preview.thumbnail((496, 335))
        x, y = column * 500, 110 + row * 410
        sheet.paste(preview, (x + (500 - preview.width) // 2, y))
        label = {"direct": "Direct / motor bearings only", "6810": "6810 / 12 mm clamshell"}.get(option["support"])
        if option["support"] == "6705":
            label = "6705 circular" if option["output_style"] == "circle" else "6705 raised 3×3 square"
        draw.text((x + 20, y + 337), f'{option["width"]}×{option["height"]} / ' + label, fill="#19383b", font=font)
        if option["support"] == "6705":
            detail = "2-piece rotor • 4 embedded M3 output nuts" if option["output_style"] == "circle" else "3-piece rotor • 8 embedded M3 output nuts"
            draw.text((x + 20, y + 369), detail, fill="#46666a", font=small)
        elif option["support"] == "6810":
            draw.text((x + 20, y + 369), "Lip-free journal • M6 nuts on central 3×3", fill="#46666a", font=small)
    draw.text((28, 1370), "Reference hardware shown. Physical fit and load capacity remain untested.", fill="#46666a", font=small)
    sheet.save(output / "overview.png")
    print(output / "overview.png")


if __name__ == "__main__":
    main()
