import sys
sys.path.insert(0,'tmp/tt_occ')
from OCP.STEPControl import STEPControl_Reader
from OCP.TopExp import TopExp_Explorer
from OCP.TopAbs import TopAbs_SOLID
from OCP.BRepMesh import BRepMesh_IncrementalMesh
from OCP.StlAPI import StlAPI_Writer
import trimesh,numpy as np
r=STEPControl_Reader();r.ReadFile('tmp/3777.step');r.TransferRoots()
e=TopExp_Explorer(r.OneShape(),TopAbs_SOLID)
i=0
while e.More():
 s=e.Current();BRepMesh_IncrementalMesh(s,.025,False,.15,True); f=f'tmp/tt_ref_{i}.stl'; StlAPI_Writer().Write(s,f)
 m=trimesh.load_mesh(f);print(i,m.bounds.round(2),flush=True);i+=1;e.Next()
