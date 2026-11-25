"""Shared physical coupon and micro captive-nut insertion regressions."""
import json
import math
from pathlib import Path
import shutil
import subprocess
import warnings

import numpy as np
import trimesh

import servo_v2
import servo_micro_v2
import working_oomp_populate


def main():
    root=Path(__file__).resolve().parent
    out=root/'outputs/servo_shared_clearance';out.mkdir(parents=True,exist_ok=True)
    results=[]

    def check(name,condition,**details):
        results.append(dict(test=name,passed=bool(condition),**details))
        if not condition:print('FAIL',name,details,flush=True)

    def collide(name,a,b,empty=True):
        path=out/(name+'.scad');stl=path.with_suffix('.stl')
        path.write_text('intersection(){'+a+b+'}',encoding='utf-8')
        if stl.exists():stl.unlink()
        run=subprocess.run([shutil.which('openscad'),'--backend=Manifold','-o',str(stl),str(path)],
            capture_output=True,text=True,timeout=120,creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
        log=run.stdout+run.stderr
        assert 'ERROR:' not in log and 'WARNING:' not in log,log
        if stl.exists():
            with warnings.catch_warnings():
                warnings.simplefilter('ignore',RuntimeWarning)
                volume=abs(float(trimesh.load_mesh(stl).volume))
        else:
            assert 'empty' in log.lower(),log
            volume=0
        check(name,volume<.001 if empty else volume>.01,volume_mm3=volume)

    for family,design in [('standard',servo_v2),('micro',servo_micro_v2)]:
        option=next(o for o in working_oomp_populate.get_options() if o['oobb_name']==f'holder_motor_servo_{family}_v2')
        working_oomp_populate.apply_taxonomy(option)
        folder=root/'parts'/working_oomp_populate.build_oomp_id(option)
        profiles=design.reference()['profiles']
        for name,count in [('horn_fit_test',3*len(profiles)),('bearing_fit_test',3),('retention_bore_test',len(profiles))]:
            mesh=trimesh.load_mesh(folder/(name+'.stl'));solids=mesh.split()
            check(f'{family}_{name}_closed_solids',len(solids)==count and all(p.is_watertight for p in solids))
            check(f'{family}_{name}_on_bed',abs(mesh.bounds[0,2])<.002)
        for key,p in profiles.items():
            path=(folder/('installed_rotor_'+key+'.stl')).as_posix()
            rotor=f'import("{path}");'
            face=p.get('runner_face',design.dimensions()['face'])
            bolts='union(){'+''.join(f'translate([{x},{y},{face}]) cylinder(r=1.5,h={design.dimensions()["split"]-face},$fn=32);' for x,y in design.output_positions())+'}'
            collide(f'{family}_{key}_four_output_shanks',rotor,bolts)
            nuts='union(){'+''.join(f'translate([{x},{y},{design.dimensions()["nut_bottom"]+.1}]) rotate([0,0,{30+math.degrees(math.atan2(y,x))}]) cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);' for x,y in design.output_positions())+'}'
            collide(f'{family}_{key}_four_output_nuts',rotor,nuts)
        if family=='micro':
            imported=lambda n:f'import("{(folder/(n+".stl")).as_posix()}");'
            def nut_sweep(offsets,angle=30,lift=0):
                return 'union(){'+''.join(f'translate([{x},{y},{design.dimensions()["servo_nut_bottom"]+lift-offset}]) rotate([0,0,{angle}]) cylinder(r={5.5/math.sqrt(3)},h=2.4,$fn=6);' for x,y in design.clamp_joins() for offset in offsets)+'}'
            blocks='union(){'+imported('installed_nut_block_left')+imported('installed_nut_block_right')+'}'
            collide('micro_clamp_nuts_fit',blocks,nut_sweep([0]))
            collide('micro_clamp_nuts_insert_from_bottom',blocks,nut_sweep([0,1,2,4,8]))
            collide('micro_clamp_nuts_fit_with_0d6mm_bridge_loss',blocks,nut_sweep([0],lift=.6))
            collide('micro_clamp_nuts_cannot_spin_positive_control',blocks,nut_sweep([0],60),empty=False)
            for key in profiles:
                collide('micro_clamp_nuts_vs_'+key,imported('reference_case_'+key),nut_sweep([0]))
            for key in profiles:
                mesh=trimesh.load_mesh(folder/('mount_pattern_test_'+key+'.stl'))
                check('mount_pattern_gauge_'+key,mesh.is_watertight and len(mesh.split())==1 and abs(mesh.bounds[0,2])<.002)
    passed=all(r['passed'] for r in results)
    (out/'report.json').write_text(json.dumps(dict(passed=passed,checks=len(results),results=results),indent=2),encoding='utf-8')
    print(f'{"PASS" if passed else "FAIL"}: {len(results)} shared checks',flush=True)
    assert passed,[r['test'] for r in results if not r['passed']]


if __name__=='__main__':
    main()
