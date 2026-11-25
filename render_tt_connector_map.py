"""Draw a labelled engineering PNG from the actual connector STLs, in parts/."""
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.collections import PolyCollection
from matplotlib.colors import to_rgb
import numpy as np
import trimesh
import yaml

from working_oomp_populate import get_options,apply_taxonomy,build_oomp_id


def main():
    root=Path(__file__).resolve().parent
    option=next(o for o in get_options() if o['oobb_name']=='holder_motor_gear_tt_v2_coupling_tests')
    apply_taxonomy(option)
    folder=root/'parts'/build_oomp_id(option)
    data=yaml.safe_load((folder/'thing.yaml').read_text())['thing']
    samples=data['coupling_test_samples']
    colors=dict(plain='#258782',pinch='#3877ae',jaws='#bf782a',
                collet='#8b63ac',stock='#69853e',common='#63717c')
    fig=plt.figure(figsize=(14.4,10.2),facecolor='#f7f8f6')
    fig.text(.045,.954,'TT SHAFT CONNECTORS / TEST A',fontsize=23,weight='bold',color='#18363b')
    fig.text(.045,.918,'Print 3dpr.stl once. Match the codes on the parts to the names below.',fontsize=12,color='#466065')
    ax=fig.add_axes([.055,.12,.52,.76],facecolor='#ffffff')

    def geometry(mesh,color):
        # View from +Z: omit back-facing and edge-on triangles so vertical
        # walls do not leave tessellation lines across coplanar top surfaces.
        triangles=mesh.triangles[mesh.face_normals[:,2]>.00001]
        heights=triangles[:,:,2].mean(axis=1)
        order=np.argsort(heights,kind='stable')
        shade=.57+.4*(heights-heights.min())/max(float(np.ptp(heights)),.001)
        rgb=np.array(to_rgb(color))
        rgba=np.column_stack([np.clip(shade[:,None]*rgb+.07,0,1),np.ones(len(triangles))])
        ax.add_collection(PolyCollection(triangles[order,:,:2],facecolors=rgba[order],
            edgecolors='none',linewidths=0,antialiaseds=False,rasterized=True))

    legend=trimesh.load_mesh(folder/'legend.stl')
    geometry(legend,'#c4cacc')
    for sample in samples:
        mesh=trimesh.load_mesh(folder/(sample['name']+'.stl'))
        mesh.apply_translation(sample['pos'])
        color=colors[sample['style']]
        geometry(mesh,color)
        x=(mesh.bounds[0,0]+mesh.bounds[1,0])/2
        y=mesh.bounds[1,1]+3.6
        ax.text(x,y,sample['code'],ha='center',va='bottom',fontsize=10,weight='bold',color=color,
            bbox=dict(facecolor='white',edgecolor='none',pad=1.8))
    ax.set(xlim=(-23,137),ylim=(-25,187),xlabel='X / mm',ylabel='Y / mm',aspect='equal')
    ax.set_title('PRINT LAYOUT / TOP VIEW',loc='left',fontsize=11,pad=14,color='#18363b',weight='bold')
    ax.set_xticks(np.arange(-20,141,20)); ax.set_yticks(np.arange(-20,181,20))
    ax.tick_params(colors='#75888a',labelsize=9)
    ax.grid(alpha=.14,zorder=-10); ax.set_axisbelow(True)
    for spine in ax.spines.values(): spine.set_color('#c8d2d2')

    labels=fig.add_axes([.615,.115,.365,.77]); labels.axis('off')
    labels.text(0,1.01,'CODE / TYPE / PART NAME',fontsize=11,weight='bold',color='#18363b')
    for index,sample in enumerate(samples):
        y=.95-index*.086
        labels.text(0,y,sample['code'],fontsize=11,weight='bold',color=colors[sample['style']],va='top')
        labels.text(.25,y,sample['type'],fontsize=12,weight='bold',color='#18363b',va='top')
        labels.text(.25,y-.029,sample['part_name'],fontsize=10.3,color='#52676b',va='top')
    fig.text(.055,.055,'11 printable pieces: 8 grip parts + shared HUB and CAP + printed legend.',fontsize=11,color='#18363b')
    fig.text(.055,.031,'STOCK 26 needs a purchased TT hub. Shaft fit and clamp strength require a physical trial.',fontsize=10,color='#52676b')
    destination=folder/'3dpr_labeled.png'
    fig.savefig(destination,dpi=170,facecolor=fig.get_facecolor())
    plt.close(fig)
    mesh=trimesh.load_mesh(folder/'3dpr.stl')
    (folder/'connector_map.json').write_text(json.dumps(dict(
        revision='TT shaft connector test A',print_file='3dpr.stl',image='3dpr_labeled.png',
        footprint_mm=mesh.extents[:2].tolist(),samples=samples),indent=2)+'\n')
    rows=['TT SHAFT CONNECTOR TEST A','',
          'Print 3dpr.stl once. Do not also print its individual pieces.',
          '3dpr_labeled.png uses the same top-view positions as the print tray.','']
    rows += [f"{s['code']}: {s['type']} / {s['part_name']} / {s['name']}.stl" for s in samples]
    rows += ['', 'HARDWARE',
        'P: friction-fit socket; no shaft clamp screw.',
        'C: 1 x M3 x 12 socket-cap screw and M3 nut.',
        'JA/JB: 2 x M3 x 12 socket-cap screws and M3 nuts.',
        'T1/T2/T3: 2 x M2.5 x 10 countersunk screws and M2.5 nuts.',
        'STOCK 26: purchased 26 mm-pitch TT hub and matching M4 fixings.',
        'HUB/CAP: M3 x 10 centre screw, one stem nut and four M3 output nuts.',
        '', 'Default provisional shaft: 5.4 mm major diameter, 3.7 mm across flats.',
        'Current socket allowance: +0.2 mm total on both dimensions.',
        'Test by hand first. Record fit, slip and axial retention using the part codes.',
        'The stock adapter is a separate experiment, not a drop-in 6704 spindle.']
    (folder/'README.txt').write_text('\n'.join(rows)+'\n')
    print(folder,flush=True)
    print(destination,flush=True)


if __name__=='__main__': main()
