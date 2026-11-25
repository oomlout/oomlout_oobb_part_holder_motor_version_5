"""Optional independent CAD check. Install cadquery-ocp-novtk in a separate environment.
Run python validate_tt_supplier.py path/to/3777.step after rebuilding the TT parts.
"""
import argparse
import hashlib
import json
from pathlib import Path
from tempfile import TemporaryDirectory

import numpy as np
import trimesh
import yaml
from OCP.BRepAdaptor import BRepAdaptor_Surface
from OCP.BRepMesh import BRepMesh_IncrementalMesh
from OCP.GeomAbs import GeomAbs_Cylinder
from OCP.STEPControl import STEPControl_Reader
from OCP.StlAPI import StlAPI_Writer
from OCP.TopAbs import TopAbs_FACE, TopAbs_SOLID
from OCP.TopExp import TopExp_Explorer
from OCP.TopoDS import TopoDS

from working_oomp_populate import get_options, apply_taxonomy, build_oomp_id


def main(step):
    root = Path(__file__).resolve().parent
    profile = yaml.safe_load((root/"source_file/tt_reference/mount_3777.yaml").read_text())
    digest = hashlib.sha256(step.read_bytes()).hexdigest()
    if digest != profile["step_sha256"]:
        raise ValueError("STEP revision differs from the documented 3777 mounting profile")
    folder = {}
    for part in get_options():
        if part["motor_style"]=="tt" and part["variant"] in ("version2","testing_motor_mount"):
            apply_taxonomy(part)
            folder[part["variant"]] = root/"parts"/build_oomp_id(part)
    gauge = folder["testing_motor_mount"]
    stationary = trimesh.load_mesh(folder["version2"]/"stationary.stl")
    saddle = trimesh.load_mesh(gauge/"nut_bar.stl")
    saddle.apply_translation([-20.6,0,-23.5])
    tests = dict(holder=stationary,saddle=saddle)
    for letter in "ABC":
        seat = trimesh.load_mesh(gauge/f"seat_{letter}.stl")
        seat.apply_transform(np.diag([1,-1,-1,1]))
        seat.apply_translation([0,0,7])
        tests["seat_"+letter] = seat

    reader = STEPControl_Reader()
    reader.ReadFile(str(step))
    reader.TransferRoots()
    solids = TopExp_Explorer(reader.OneShape(),TopAbs_SOLID)
    hole_centres = set()
    interference = {name:[] for name in tests}
    with TemporaryDirectory() as tmp:
        path = Path(tmp)/"solid.stl"
        while solids.More():
            solid = solids.Current()
            faces = TopExp_Explorer(solid,TopAbs_FACE)
            while faces.More():
                surf = BRepAdaptor_Surface(TopoDS.Face(faces.Current()))
                if surf.GetType()==GeomAbs_Cylinder:
                    cyl = surf.Cylinder()
                    loc = cyl.Location()
                    if abs(cyl.Radius()-1.5)<1e-6 and abs(cyl.Axis().Direction().Y())>.999:
                        hole_centres.add((round(loc.Z(),4),round(loc.X(),4)))
                faces.Next()
            BRepMesh_IncrementalMesh(solid,.025,False,.15,True)
            StlAPI_Writer().Write(solid,str(path))
            mesh = trimesh.load_mesh(path)
            mesh.update_faces(mesh.nondegenerate_faces())
            mesh.remove_unreferenced_vertices()
            mesh.vertices = mesh.vertices[:,[2,0,1]]+[0,0,-6.3]
            for name,obj in tests.items():
                overlap = trimesh.boolean.intersection([obj,mesh],engine="manifold")
                interference[name].append(round(abs(float(overlap.volume)),6))
            solids.Next()
    passed = (len(interference["holder"])==8 and {(-20.6,-8.8),(-20.6,8.8)} <= hole_centres
              and all(max(v)<.0001 for v in interference.values()))
    report = dict(passed=passed,step_sha256=digest,source=profile["source"],
                  three_mm_bore_centres_xy_mm=sorted(hole_centres),
                  overlap_by_supplier_solid_mm3=interference,physical_fit_tested=False)
    (gauge/"supplier_fit.json").write_text(json.dumps(report,indent=2)+"\n")
    print(json.dumps(report,indent=2))
    if not passed:
        raise SystemExit(1)


if __name__=="__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("step",type=Path)
    main(parser.parse_args().step)

