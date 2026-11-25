"""Populate -> OOMP -> working_scad, then parallel checked N20 STL/PNG exports."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

import working
from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id

ROOT=Path(__file__).resolve().parent


def catalogue():
    result=[]
    for option in get_options():
        if option['motor_style']=='n20':
            apply_taxonomy(option)
            result.append((option,ROOT/'parts'/build_oomp_id(option)))
    return result


def render(source,extension):
    target=source.with_suffix('.'+extension)
    digest=hashlib.sha256(source.read_bytes()).hexdigest()
    fingerprint=source.with_suffix('.'+extension+'.sha256')
    if fingerprint.is_file() and fingerprint.read_text()==digest and target.is_file():
        return str(target)
    command=[shutil.which('openscad'),'--backend=Manifold','-o',str(target)]
    if extension=='png':
        command+=['--render','--autocenter','--viewall','--imgsize=1000,800',
                  '--colorscheme=Tomorrow','--camera=0,0,0,58,0,35,160']
    command.append(str(source))
    result=subprocess.run(command,capture_output=True,text=True,timeout=240,
                          creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
    log=result.stdout+result.stderr
    source.with_suffix('.'+extension+'.log').write_text(log,encoding='utf-8')
    if 'Current top level object is empty' in log:
        # press-fit has no grip fasteners. There is deliberately no fake STL.
        if source.stem=='reference_grip_fasteners': return 'empty reference'
    if result.returncode or 'ERROR:' in log or 'WARNING:' in log or not target.is_file():
        raise RuntimeError(f'{source}: {log}')
    fingerprint.write_text(digest)
    return str(target)


def export(jobs=3):
    output=ROOT/'outputs/n20'; output.mkdir(parents=True,exist_ok=True)
    (output/'validation.json').write_text(json.dumps(dict(status='pending_validation',
        reason='Geometry export started; run python validate_n20.py after the build.'),indent=2)+'\n')
    # Render identical printable pieces once per exact SCAD content. Sources
    # still come from every catalogue assembly, through the normal pipeline.
    grouped={}
    for option,folder in catalogue():
        metadata=__import__('yaml').safe_load((folder/'thing.yaml').read_text())['thing']
        piece_names=set(metadata.get('piece_placements',{}))
        if option['family']=='fit_test':
            piece_names=set(metadata['additional_outputs'])
        selected=piece_names|{'3dpr','assembly','assembled_printed','exploded',
                              'stationary_local','rotating_local','reference_motor',
                              'reference_grip_fasteners','reference_holder_fasteners',
                              'reference_bearing','reference_hub'}
        selected|={path.stem for path in folder.glob('reference_*.scad')}
        rears={name for name in metadata.get('additional_outputs',{}) if name.startswith('rear_')}
        rears.update(n for n in metadata.get("additional_outputs",{}) if n.startswith(("mount_trial_", "motor_sample_")))
        selected|=rears
        for name in sorted(selected):
            source=folder/(name+'.scad')
            if not source.is_file(): continue
            extensions=['stl']
            if name in piece_names|rears|{'3dpr','assembly','exploded','assembled_printed'}:
                extensions.append('png')
            for ext in extensions:
                key=(hashlib.sha256(source.read_bytes()).hexdigest(),ext)
                grouped.setdefault(key,[]).append(source)
    with ThreadPoolExecutor(max_workers=jobs) as pool:
        futures={pool.submit(render,sources[0],ext):(sources,ext)
                 for (_,ext),sources in grouped.items()}
        for index,future in enumerate(as_completed(futures),1):
            sources,ext=futures[future]
            outcome=future.result()
            if outcome!='empty reference':
                for duplicate in sources[1:]:
                    shutil.copy2(sources[0].with_suffix('.'+ext),duplicate.with_suffix('.'+ext))
                    duplicate.with_suffix('.'+ext+'.sha256').write_text(hashlib.sha256(duplicate.read_bytes()).hexdigest())
            if index%20==0 or index==len(futures):
                print(f'Exported {index}/{len(futures)} unique N20 jobs',flush=True)
    publish_inspection()


def publish_previous_inspection():
    from PIL import Image, ImageDraw, ImageFont
    import n20
    output=ROOT/'outputs/n20'; output.mkdir(parents=True,exist_ok=True)
    font=ImageFont.truetype('C:/Windows/Fonts/segoeui.ttf',22)
    title=ImageFont.truetype('C:/Windows/Fonts/segoeuib.ttf',32)
    sheet=Image.new('RGB',(2000,1460),'#f4f5f6'); draw=ImageDraw.Draw(sheet)
    draw.text((25,15),'N20 / three holders x five shaft grips',font=title,fill='#173337')
    rows=[]
    for option,folder in catalogue():
        stem=option['variant']
        if option['family']=='assembly':
            row=n20.HOLDERS.index(option['holder_style']); col=n20.GRIPS.index(option['grip_style'])
            pic=Image.open(folder/'assembly.png').convert('RGB'); pic.thumbnail((395,355))
            x,y=col*400,65+row*450
            sheet.paste(pic,(x+(400-pic.width)//2,y))
            draw.text((x+10,y+350),option['holder_style'].replace('_',' '),font=font,fill='#173337')
            draw.text((x+10,y+381),option['grip_style'].replace('_',' '),font=font,fill='#173337')
        for source_name,dest_name in [('3dpr.stl',stem+'.stl'),('assembly.png',stem+'.png'),
                                     ('exploded.png',stem+'_exploded.png')]:
            source=folder/source_name
            if source.is_file(): shutil.copy2(source,output/dest_name)
        details=__import__('yaml').safe_load((folder/'thing.yaml').read_text())['thing']
        rows.append(dict(variant=stem,part_id=folder.name,folder=str(folder),
                         print_stl=str(output/(stem+'.stl')),
                         render=str(output/((stem if option['family']=='assembly' else 'fit_coupons')+'.png')),
                         pieces={name:dict(stl=str(folder/(name+'.stl')),scad=str(folder/(name+'.scad')),
                             render=str(folder/(name+'.png')),**placement)
                             for name,placement in details.get('piece_placements',{}).items()}))
    # Fit-test assembly is its actual bed layout.
    fit=next(folder for option,folder in catalogue() if option['family']=='fit_test')
    shutil.copy2(fit/'3dpr.png',output/'fit_coupons.png')
    draw.text((25,1420),'Nominal reference hardware shown. Printed fits and load capacity require physical testing.',font=font,fill='#435b61')
    sheet.save(output/'overview.png')
    grips=Image.new('RGB',(2000,620),'#f4f5f6'); gd=ImageDraw.Draw(grips)
    gd.text((25,15),'N20 / shaft sockets and retention hardware',font=title,fill='#173337')
    for col,grip in enumerate(n20.GRIPS):
        folder=next(f for o,f in catalogue() if o.get('holder_style')=='through_plate' and o.get('grip_style')==grip)
        pic=Image.open(folder/'rotor.png').convert('RGB'); pic.thumbnail((395,390))
        x=col*400; grips.paste(pic,(x+(400-pic.width)//2,65))
        gd.text((x+10,455),grip.replace('_',' '),font=font,fill='#173337')
        gd.text((x+10,490),'rotor.stl / socket facing up',font=font,fill='#435b61')
        if grip=='taper_collet':
            for j,name in enumerate(('collet_insert','collet_cap')):
                thumb=Image.open(folder/(name+'.png')).convert('RGB'); thumb.thumbnail((150,105))
                grips.paste(thumb,(x+25+j*170,515))
    grips.save(output/'shaft_grips.png')
    (output/'manifest.json').write_text(json.dumps(rows,indent=2)+'\n',encoding='utf-8')
    html=['<!doctype html><html lang="en"><meta charset="utf-8"><title>N20 inspection</title>',
          '<style>body{font:16px system-ui;max-width:1200px;margin:30px auto;padding:0 20px}img{max-width:100%}table{border-collapse:collapse;width:100%;table-layout:fixed}td,th{padding:10px;text-align:left;border-bottom:1px solid #bbb;overflow-wrap:anywhere}</style>',
          '<h1>N20 inspection</h1><p>15 assemblies and 9 motor / shaft / hardware calibration coupons.</p>',
          '<p><a href="validation.json">Geometric validation report</a> | <a href="manifest.json">All filenames and piece placements</a> | <a href="coupon_map.json">Fit coupon positions</a></p><img src="overview.png" alt="All fifteen assemblies">',
          '<table><tr><th>Variant</th><th>Render</th><th>Print layout STL</th><th>Source / separate pieces</th></tr>']
    for row in rows:
        stem=row['variant']; folder=Path(row['folder'])
        render_label='Print layout' if stem=='fit_coupons' else 'Assembled'
        exploded='' if stem=='fit_coupons' else f' / <a href="{stem}_exploded.png">Exploded</a>'
        html.append(f'<tr><td>{stem}</td><td><a href="{stem}.png">{render_label}</a>{exploded}</td><td><a href="{stem}.stl">{stem}.stl</a></td><td><a href="{folder.as_uri()}">{folder.name}</a></td></tr>')
    html += ['</table><h2>Hardware and assembly</h2>',
        '<p>All designs use the Pololu no-encoder 25.6 mm motor-body profile. The 3 mm D shaft projects 10 mm from the gearbox face; its front boss is 4 mm diameter. Motors, bearings and metal hubs are reference hardware, excluded from print STLs. An encoder needs a separate envelope check. Change catalogue parameters for another motor profile.</p>',
        '<ul><li>Through-plate and cassette keeper: two M3 x 30 countersunk screws and two M3 nuts. Insert nuts into the side slots before installing the keeper. The rear window clears terminals and an optional rear shaft.</li>',
        '<li>Cradle saddle: two M3 x 25 countersunk screws and two M3 nuts. Bolts are at +/-12 mm across the foot; the shaft axis is 22.5 mm above the foot underside. Tighten only enough to retain the can. Rear-stop clearance is intentional; use a small shim if the motor needs axial take-up.</li>',
        '<li>Bearing cassette: one 6704 bearing (20 x 27 x 4 mm), four printed spacers, four M6 x 20 socket screws and four M6 nuts. Load the four M6 nuts into the loose upper cap before fitting it under the output. Insert the bearing over the free lower journal, assemble both stationary halves around it, then join the stack. The M6 heads recess 1 mm into the holder underside. Screw tips stay below the output.</li>',
        '<li>Split clamp: one M3 x 16 socket screw and one M3 nut. On the cradle, rotate the output 180 degrees to present the pinch screw upwards for Allen-key access.</li>',
        '<li>Captive-nut grub grip: one M3 x 8 grub screw and one M3 nut. Insert the nut from the radial side slot, then tighten onto the shaft flat.</li>',
        '<li>Metal hub: Pololu 1996, its M3 grub screw, and four M3 x 8 socket screws. The four holes are on a 12.7 mm bolt circle rotated 45 degrees, with deep straight Allen-key wells. Fit the hub to the shaft first; its four screws enter from the output side. The extra shaft-tip bore prevents bottoming out above the 5 mm hub.</li>',
        '<li>Tapered collet: printed insert and cap, two M3 x 8 countersunk screws and two M3 nuts. Side-load the sleeve nuts, put the insert on the shaft, fit the cap and tighten evenly through the rear tool channels. The cap has 0.5 mm travel; the modeled taper has 0.05 mm radial clearance before tightening. Physical compression and torque transfer require a print trial.</li>',
        '<li>Press fit: no shaft-retention hardware. The socket is nominal line-to-line; choose a measured profile offset from the labelled coupons. Axial retention and repeated removal need a print trial.</li></ul>',
        '<h2>Shaft-grip details</h2><img src="shaft_grips.png" alt="Five printed shaft-grip rotors, with collet insert and cap">',
        '<h2>Output and mounting holes</h2><p>Each output has four M6 corner holes and accessible M6 hex pockets underneath. Fit these output nuts before installing the rotor into the bearing cassette; the open M6 pockets retain nuts against rotation, but the attachment screws provide axial retention. Printed grips also have four M3 half-grid output holes with radially loaded hex pockets below a solid top skin. The metal-hub version reserves those positions for coupling screws and tool wells. The central bore is coupling/tool access, not an advertised M6 mounting position. Omitted full/half-grid sites and reasons are recorded in each grid_hole_audit.json.</p>',
        '<p>Output hardware used in the checks: M6 x 12 socket screws with M6 nuts, plus M3 x 8 socket screws and M3 nuts where present. These are clearance examples; select the final length for the thickness of the attached item. The cradle mounting check uses screws from below and nuts above the foot. The through-plate mounting check uses screws from its front and nuts behind the plate. Cassette corners are its structural M6 stack fixings.</p>',
        '<h2>Print and validation</h2><p>Individual STLs and the combined print layout sit on Z=0. The face-down holder and output-first rotor orientations are already applied. Native OOBB overhang relief is enabled for screw and nut cuts. Small horizontal slots and tool channels still need slicer inspection. The nine labelled coupons test four D-profile offsets, three motor-pocket clearances per side, and native M3/M6 hardware pockets.</p>',
        '<p>Run: <code>python action_make_n20.py</code>, then <code>python validate_n20.py</code>. The first command follows working_oomp_populate.py, working_oomp.py and working_scad.py before exporting STL/PNG. Validation checks closed meshes, print-bed placement, catalogue consistency, nominal motor/bearing/hub and M3/M6 hardware intersections, every retained grid bore, Allen-key access, continuous M3/M6 nut insertion paths and a conservative continuous 360-degree sweep. The JSON report contains measured intersection volumes. These digital checks do not establish physical fit, clamp torque, plastic creep, heat tolerance or load capacity.</p>',
        '<h2>Fit coupons</h2><img src="fit_coupons.png" alt="Nine labelled calibration coupons"><p>Raised labels and coupon_map.json identify each tolerance. D values are outward offsets of both the curved perimeter and single flat; motor values are clearance on each side. Print the coupons before a complete assembly.</p></html>']
    (output/'index.html').write_text('\n'.join(html),encoding='utf-8')
    print(output/'overview.png',flush=True)


def publish_coupler_plate(testing):
    import trimesh

    # Keep the catalogue print orientations. Positive Y is the back of the plate.
    layout = [
        ('press_fit', 'rotor', 0, 0),
        ('split_clamp', 'rotor', 50, 0),
        ('nut_grub', 'rotor', 100, 0),
        ('metal_hub', 'rotor', 0, 50),
        ('taper_collet', 'rotor', 50, 50),
        ('taper_collet', 'collet_insert', 84, 50),
        ('taper_collet', 'collet_cap', 108, 50),
    ]
    pieces = []
    for style, name, x, y in layout:
        piece = trimesh.load_mesh(testing / style / (name + '.stl'))
        piece.apply_translation([x, y, 0])
        pieces.append(piece)
    trimesh.util.concatenate(pieces).export(testing / 'n20_shaft_couplers.stl')


def publish_inspection():
    """Publish holders and shaft experiments as separate, complete folders."""
    import yaml
    from PIL import Image, ImageDraw, ImageFont
    output=ROOT/'outputs/n20'; output.mkdir(parents=True,exist_ok=True)
    rows=[]; holders=[]; tests=[]
    trials=output/"testing/mount_trials"
    trials.mkdir(parents=True,exist_ok=True)
    for option,source in catalogue():
        is_holder=option['family']=='n20_holder'
        slug=option['holder_style'] if is_holder else option['variant'].removeprefix('testing_')
        destination=output/('holders' if is_holder else 'testing')/slug
        destination.mkdir(parents=True,exist_ok=True)
        for path in source.iterdir():
            if path.suffix.lower() in ('.scad','.stl','.png','.yaml','.json') and not path.name.startswith('check_'):
                if path.name.startswith(('mount_trial_', 'motor_sample_')):
                    shutil.copy2(path,trials/path.name)
                else:
                    shutil.copy2(path,destination/path.name)
        row=dict(variant=slug,kind='holder' if is_holder else 'testing',part_id=source.name,
            folder=str(destination),source_folder=str(source),
            stl=str(destination/'3dpr.stl'),render=str(destination/('assembly.png' if is_holder or option['family']=='n20_shaft_test' else '3dpr.png')))
        if is_holder:
            details=__import__('yaml').safe_load((source/'thing.yaml').read_text())['thing']
            row['rear_pieces']=[dict(item,stl=str(destination/(item['name']+'.stl')),
                render=str(destination/(item['name']+'.png'))) for item in details['rear_piece_options']]
            row['rear_pieces_print_layout']=str(destination/'rear_pieces.stl')
        rows.append(row); (holders if is_holder else tests).append(row)
    font=ImageFont.truetype('C:/Windows/Fonts/segoeui.ttf',24)
    title=ImageFont.truetype('C:/Windows/Fonts/segoeuib.ttf',34)
    sheet=Image.new('RGB',(600*len(holders),750),'#f4f5f6'); draw=ImageDraw.Draw(sheet)
    draw.text((25,15),'N20 / slim rears / top-loaded OOBB nuts',font=title,fill='#173337')
    for i,row in enumerate(holders):
        pic=Image.open(row['render']).convert('RGB');pic.thumbnail((590,540))
        x=i*600;sheet.paste(pic,(x+(600-pic.width)//2,65))
        draw.text((x+20,625),row['variant'].replace('_',' '),font=font,fill='#173337')
    draw.text((25,700),'M1.6 face screws / two captive M3 attachment nuts / screw-guided rear',font=font,fill='#435b61')
    sheet.save(output/'holders/overview.png')
    rear_sheet=Image.new('RGB',(1800,650),'#f4f5f6');rd=ImageDraw.Draw(rear_sheet)
    rd.text((25,15),'N20 / 6 mm rear pieces / nuts drop into the top',font=title,fill='#173337')
    for index,(low,high,length) in enumerate(((20,25,35),(25,30,40),(30,35,45))):
        pic=Image.open(output/f'holders/through_plate/rear_{low}_{high}.png').convert('RGB')
        pic.thumbnail((590,465));x=index*600
        rear_sheet.paste(pic,(x+(600-pic.width)//2,65))
        rd.text((x+20,550),f'{low}-{high} mm / M3 x {length}',font=font,fill='#173337')
        rd.text((x+20,590),f'rear_{low}_{high}.stl',font=font,fill='#435b61')
    rear_sheet.save(output/'holders/rear_ranges.png')
    css='<style>body{font:16px system-ui;max-width:1200px;margin:30px auto;padding:0 20px}img{max-width:100%}td,th{padding:10px;text-align:left;overflow-wrap:anywhere;border-bottom:1px solid #bbb}table{width:100%;table-layout:fixed;border-collapse:collapse}</style>'
    html=['<!doctype html><html lang="en"><meta charset="utf-8"><title>N20 holders</title>',css,
        '<h1>N20 holders</h1><p><a href="../testing/index.html">Shaft samples and calibration: testing</a> | <a href="../validation.json">Validation report</a></p>',
        '<img src="overview.png" alt="Three holder-only examples"><table><tr><th>Holder</th><th>Render</th><th>Printable file</th><th>Separate pieces</th></tr>']
    for row in holders:
        s=row['variant']; html.append(f'<tr><td>{s}</td><td><a href="{s}/assembly.png">Assembled</a> / <a href="{s}/exploded.png">Exploded</a></td><td><a href="{s}/3dpr.stl">{s}/3dpr.stl</a></td><td><a href="{s}/rear_20_25.stl">20-25 rear</a> / <a href="{s}/rear_25_30.stl">25-30 rear</a> / <a href="{s}/rear_30_35.stl">30-35 rear</a><br><a href="{s}/rear_pieces.stl">All three rears</a><br><a href="{s}/">SCAD, STL, PNG and YAML</a></td></tr>')
    html += ['</table><h2>Motor mounting</h2><p>Two M1.6 x 4 countersunk screws enter the motor at 9 mm pitch through the 3 mm front face, giving approximately 1.06 mm engagement at the modelled head seat. Check the selected motor supplier; the retained Pololu guidance limits intrusion to 1.3 mm. Countersunk screw lengths include the head.</p>',
        '<p>Two M3 countersunk screws enter from the front face and guide the slim rear through plain bores. Recessed native OOBB M3 hex pockets open on the rear face: print this face upwards and drop the nuts in from the top. Tightening draws the rear against the motor end cap. The pocket floor is 2.8 mm thick. Its central window leaves terminals and the optional rear shaft open. Standard rear dimensions are 31 x 12 x 6 mm; the bearing version is 41 x 12 x 6 mm. The standard screw pitch is a compact 21.5 mm, independently chosen from the OOBB mounting grid.</p>',
        '<h2>Choose the labelled rear piece</h2><table><tr><th>Motor body length</th><th>Screws covering the whole range</th><th>Rear file in each holder folder</th></tr><tr><td>20-25 mm</td><td>Two M3 x 35 countersunk</td><td>rear_20_25.stl</td></tr><tr><td>25-30 mm</td><td>Two M3 x 40 countersunk</td><td>rear_25_30.stl</td></tr><tr><td>30-35 mm</td><td>Two M3 x 45 countersunk</td><td>rear_30_35.stl</td></tr></table><p>All three rears share the same 6 mm body, with different engraved range labels. Each holder folder also has rear_pieces.stl to print all three together. Its normal 3dpr.stl includes the middle 25-30 mm piece. The 25.6 mm reference motor uses two M3 x 35 screws, which fully engage its nuts and project 1.6 mm beyond the rear. The longer range-wide screws project 2.2-7.2 mm beyond the rear over each full band; choose shorter screws for a measured body while retaining full nut engagement. Motor length excludes shafts and terminals.</p>',
        '<img src="rear_ranges.png" alt="Three flat range-labelled rear pieces"><h2>OOBB grid</h2><p>Every 15 mm M6 and intermediate 7.5 mm M3 position is checked against the motor, countersinks and structural features with a 0.7 mm minimum web. Only physically conflicting sites are omitted; reasons are in grid_hole_audit.json. The M3 pair at X = +/-7.5, Y = 15 mm accepts nuts from the rear. All other grid positions use plain bores. Adjacent holes are available attachment choices; large external heads or loose nuts can limit simultaneous use.</p>',
        '<h2>Bearing cassette</h2><p>The 5 x 3 version uses a 6704 bearing, four printed M3 spacers, four M3 x 25 countersunk screws through the cap, and four separate captured-nut blocks behind the face plate. Its front tension screws sit at +/-16 mm, outside the bearing OD; straight key passages through the retainers allow tightening with the bearing fitted. These wider rear pieces are specific to the bearing holder; use the files in that holder folder. Insert the four bearing-join M3 nuts from the underside of their blocks before tightening the stack. Countersunk heads finish flush; structural nut pockets use native OOBB overhang relief. No rotating shaft or output parts are included.</p>',
        '<h2>Rebuild</h2><pre>python action_make_n20.py\npython validate_n20.py</pre><p>The catalogue still runs through working_oomp_populate.py, working_oomp.py and working_scad.py. Nominal mesh and hardware checks do not replace a physical fit or load test.</p></html>']
    html.insert(-1,'<p><a href="../testing/mount_trials/mount_trial_tray.stl">Print the three mounting trials and rear clamp</a> | <a href="../testing/mount_trials/mount_trial_tray.png">Preview</a> | <a href="../testing/mount_trials/mount_trials.md">Motor models and bench procedure</a></p>')
    shutil.copy2(ROOT/'source_file/n20_reference/mount_trials.md',trials/'mount_trials.md')
    (output/'holders/index.html').write_text('\n'.join(html),encoding='utf-8')
    test_html=['<!doctype html><html lang="en"><meta charset="utf-8"><title>N20 testing</title>',css,
        '<h1>N20 testing</h1><p><a href="../holders/index.html">Holder-only set</a></p><p>Shaft samples are independent experiments, retained separately from the revised holders. Their old axial stack is not a claim of compatibility with the new 3 mm motor face.</p><table><tr><th>Sample</th><th>Render</th><th>Print layout</th></tr>']
    publish_coupler_plate(output/'testing')
    test_html.append('<tr><td>All five N20 shaft couplers</td><td>Front row: press fit, split clamp, captive-nut grub. Back row: metal hub adapter, taper collet, insert and cap.</td><td><a href="n20_shaft_couplers.stl">Print all five styles together</a></td></tr>')
    for row in tests:
        s=row['variant']; render='3dpr.png' if s=='fit_coupons' else 'assembly.png'
        test_html.append(f'<tr><td>{s}</td><td><a href="{s}/{render}">{s}/{render}</a></td><td><a href="{s}/3dpr.stl">{s}/3dpr.stl</a></td></tr>')
    test_html.append('<tr><td>Motor mounting trials</td><td><a href="mount_trials/mount_trial_tray.png">Tray preview</a></td><td><a href="mount_trials/mount_trial_tray.stl">Print tray</a> | <a href="mount_trials/mount_trials.md">Procedure</a></td></tr>')
    test_html+=['</table><p>The previous combined assemblies are preserved under previous_assemblies for reference.</p></html>']
    (output/'testing/index.html').write_text('\n'.join(test_html),encoding='utf-8')
    (output/'index.html').write_text('<!doctype html><meta charset="utf-8"><title>N20</title>'+css+'<h1>N20</h1><p><a href="holders/index.html">Holders only</a></p><p><a href="testing/index.html">Testing: shaft samples and fit coupons</a></p><img src="holders/overview.png" alt="Holder-only set">',encoding='utf-8')
    (output/'manifest.json').write_text(json.dumps(rows,indent=2)+'\n')
    print(output/'holders/index.html',flush=True)


if __name__=='__main__':
    parser=argparse.ArgumentParser(); parser.add_argument('--export-only',action='store_true')
    parser.add_argument('--no-navigation',action='store_true')
    parser.add_argument('--jobs',type=int,default=3); args=parser.parse_args()
    if not args.export_only:
        working.main(filter='holder_motor_gear_n20',generate_stl=False,navigation=False)
    export(args.jobs)
    if not args.no_navigation:
        # Navigation must copy the final renders and meshes, not the older
        # exports that existed before this build generated its SCAD sources.
        import scad_help
        scad_help.generate_navigation(sort=[f'taxonomy_{i}' for i in range(1,14)])
