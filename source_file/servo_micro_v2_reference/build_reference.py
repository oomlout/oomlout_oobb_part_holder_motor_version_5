"""Transcribed manufacturer dimensions; rerun to refresh the editable JSON.

Each row is a clearance model. Ambiguous/undimensioned axial and screw data
are deliberately identified as estimates rather than certified dimensions.
"""
import json
from pathlib import Path

ROOT = Path(__file__).parent
ROWS = [
    # key,label,body,offset,case top,ear length,ear thick,pitch,spline D,teeth,bottom,top,boss
    ('sg90','TowerPro SG90',[23,12.2,23],5.8,6,32.3,1.5,[27.5,0],4.8,21,7.5,10.5,7),
    ('mg90s','TowerPro MG90S',[22.8,12.4,28.4],6.2,7,32.5,2,[27.5,0],4.8,21,8,11.5,7.5),
    ('fs90','FEETECH FS90-C',[23.2,12.5,23],5.9,4.2,32.6,2.4,[27,0],4.8,20,4.2,8.5,6.6),
    ('fs90r','FEETECH FS90R',[22.5,12.1,23.4],6.1,4.4,32.3,2.3,[27.7,0],4.86,21,8.7,11.7,7),
    ('hs55','Hitec HS-55',[22.8,11.6,20.8],6.1,3.1,32.6,1,[28.6,0],4,15,6.4,9.1,6),
    ('hs65hb','Hitec HS-65HB',[23.6,11.6,24],6.1,7,32.4,2,[27,6],5,25,8,11.1,7),
]
SOURCES = {
    'sg90': ('https://towerpro.com.tw/product/sg90-7/',
             'Current manufacturer plan 23x12.2 and overall 29; legacy drawing 22.2x11.8/31 includes horn. Case/ear datum, pitch, spline and screw are provisional common 9g envelopes.'),
    'mg90s': ('https://towerpro.com.tw/product/mg90s-3/',
             'Current manufacturer gives 22.8x12.2x28.5 and configure-table width 12.4. Tall conservative case envelope 28.4 intentionally includes ambiguous height convention. Spline, ear datum and screw provisional.'),
    'fs90': ('https://www.pololu.com/file/0J1435/FS90-specs.pdf',
             'Manufacturer drawing p2: 23.2x12.5, case 23, ear underside 16.4+thickness 2.4, total 27.3, pitch 27, shaft 5.9 from end. Spline start at crown approximate; screw not specified.'),
    'fs90r': ('https://www.pololu.com/file/0J1867/FS90R.pdf',
              'Manufacturer drawing p2: case 23.4, ear top 19/underside 16.7, spline shoulder 27.7/top 30.7, pitch 27.7, near mounting hole 8.7 from spindle. Screw not specified.'),
    'hs55': ('https://www.hiteccs.com/public/uploads/data_sheet/HCS_HS-55_Specsheetv2.2_1026-1729887855.pdf',
             'v2.2 drawing: plan 22.8x11.6, case 20.8, ear underside 16.7+1, pitch 28.6 (-19.6,+9.0), spline length 2.7 and 15T/4.0. Axial spline datum inferred.'),
    'hs65hb': ('https://www.hiteccs.com/public/uploads/data_sheet/HCS_HS-65HB_Specsheetv2.2_10-1729887930.pdf',
               'v2.2 confirms M25T/5, spline length 3.1, 27x6 mounting. Legacy tab 32.4/body 24 vs current tab 32.3/height 26 indicate revision/datum differences. Conservative case 24 and top 7; spline start estimated.'),
}


def main():
    profiles = {}
    fields = ('label','body','shaft_offset','case_top','tab_length','tab_thickness',
              'mount_pitch','spline_diameter','spline_teeth','spline_bottom','spline_top','boss_diameter')
    for key, *values in ROWS:
        p = profiles[key] = dict(zip(fields, values))
        p['source'], p['status'] = SOURCES[key]
        p['runner_face'] = round(p['case_top']+.6, 3)
        nominal = 1.7 if key == 'hs55' else 2.6 if key == 'hs65hb' else 2.0
        p['retention'] = dict(nominal_diameter=nominal,clearance_diameter=round(nominal+.4,2),
            head_clearance_diameter=5.4,head_envelope_diameter=4.8,seat_above_spline=1.55,
            length=4 if key == 'hs55' else 5,
            thread='T1.7 self tapping' if key == 'hs55' else 'factory supplied; check actual thread',
            evidence='Hitec OEM T1.7/L4 listing' if key == 'hs55' else
                     'Clearance design envelope only; exact model thread not specified by manufacturer')
        p['mount_hole_diameter'] = 2.0 if key.startswith('hs') else 2.2
        p['tab_center_x'] = round(p['shaft_offset']-p['body'][0]/2,3)
        p['mount_positions'] = [[round(p['tab_center_x']+s*p['mount_pitch'][0]/2,3),y]
            for s in (-1,1) for y in ([0] if not p['mount_pitch'][1] else [-3,3])]
    data = dict(researched_on='2026-10-20',units='mm',default_profile='sg90',
        datum='Z=0 upper servo ear; spindle axis X=Y=0. Each runner nose reaches its case +0.6 mm.',
        profiles=profiles,design=dict(plate_width=4,plate_center_x=-7.5,case_clearance=.6,
        bearing_id=20,bearing_od=27,bearing_width=4,bearing_axial_clearance=.1,
        access_diameter=5.4,body_opening=[25.2,13.6],body_opening_center=-5.7,
        ear_clamps='Two floating M3 bars below ears; independent of micro ear-hole pattern.',shell_bottom=-28),
        sources='downloads.json records original URLs, archives, hashes and failed downloads. Estimated fields require sample measurement.')
    (ROOT/'mechanical.json').write_text(json.dumps(data,indent=2),encoding='utf-8')


if __name__ == '__main__':
    main()
