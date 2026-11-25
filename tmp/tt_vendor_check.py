from pathlib import Path
import trimesh as t,numpy as np,json
main=next(Path('parts').glob('*gear_tt*23d5_depth_bearing*'))
parts=[t.load_mesh(main/'stationary.stl')]
records=[]
for i in range(8):
 m=t.load_mesh(f'tmp/tt_ref_{i}.stl')
 m.vertices=m.vertices[:,[2,0,1]]+[0,0,-6.3]
 for piece in parts:
  v=t.boolean.intersection([piece,m],engine='manifold',check_volume=False).volume
  records.append(float(v)); print(i,v)
print(records)
