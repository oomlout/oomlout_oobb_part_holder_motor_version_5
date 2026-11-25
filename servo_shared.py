"""Shared OOBB v5 servo bearing, runner, female socket and hardware details.

Standard and micro assemblies supply their dimensions and mounting callbacks.
Edit these details once to improve both families; V1 does not use this module.
"""
import copy
import math
import oobb


def bearing_stack_dimensions(face, seat=None):
    """Common stack rules. Family modules add only their mounting/cover sizes."""
    face=round(face,3)
    seat=round(face+1 if seat is None else seat,3)
    roof=round(seat+4.1,3)
    top=round(roof+1.5,3)
    return dict(face=face,seat=seat,holder_top=seat,retainer_bottom=seat,
        bearing_roof=roof,assembly_top=top,bearing_lip_thickness=1.5,
        retainer_thickness=round(top-seat,3),servo_screw_length=10,
        cover_screw_head=round(top-.8-25,3),cover_screw_length=25,
        nut_bottom=round(seat+6,3),split=round(seat+8.8,3),
        output_top=round(seat+11,3),lid_thickness=2.2,output_screw_length=10,
        output_join_nut_top=round(seat+4.2,3),output_join_radius=6.35,
        top_tip_relief_bottom=round(face-.7,3),shell_top=round(face-2-.2,3))


def add(thing, base, shape, typ="positive", **fields):
    p3 = copy.deepcopy(base)
    # Avoid parent plate dimensions or inherited named radii changing a cutter.
    for key in ("pieces", "radius", "radius_1", "radius_2", "radius_name", "r", "size", "rot"):
        p3.pop(key, None)
    p3["type"] = typ
    p3["shape"] = shape
    p3.update(copy.deepcopy(fields))
    if "nut" in shape or "screw" in shape:
        p3["overhang"] = True
    oobb.append_full(thing, **p3)


def group(objects, pos=None, rot=None, typ="positive"):
    return dict(type="rotation", typetype=typ, pos=pos or [0, 0, 0],
                rot=rot or [0, 0, 0], objects=copy.deepcopy(objects))


def draw_captive_nut_bar(thing, kwargs, x, top, pocket_depth=2.8):
    """The standard two-M3-nut block, with independent vertical print allowance."""
    bottom=top-6.5
    add(thing,kwargs,"rounded_rectangle",size=[6.5,19.5,6.5],r=.6,pos=[x,0,bottom])
    for y in (-5.2,5.2):
        add(thing,kwargs,"oobb_hole","negative",radius_name="m3",depth=8.5,pos=[x,y,bottom-1])
        add(thing,kwargs,"oobb_nut","negative",radius_name="m3",depth=pocket_depth,
            pos=[x,y,bottom+pocket_depth],rot=[180,0,30],zz="bottom",clearance="top",overhang=True)


class ServoMechanics:
    def __init__(self, reference, dimensions, grid_layout, cover_joins):
        self.reference = reference
        self.dimensions = dimensions
        self.grid_layout = grid_layout
        self.cover_joins = cover_joins

    def draw_grid(self, thing, kwargs, face, bottom, depth):
        records = self.grid_layout(face)
        thing.setdefault("grid_hole_audit", []).extend(records)
        for site in records:
            if site["included"]:
                add(thing, kwargs, "oobb_hole", "negative", radius_name=site["radius_name"],
                    depth=depth, pos=[site["x"], site["y"], bottom])

    def output_positions(self):
        return [(-7.5, 0), (7.5, 0), (0, -7.5), (0, 7.5)]


    def output_joins(self):
        # Separate 45-degree M3 connectors; their nuts are below the cross-nut
        # layer and inside the bearing bore. Heads countersink into the top lid.
        a = self.dimensions()["output_join_radius"]/math.sqrt(2)
        return [(-a, -a), (a, a)]


    def draw_retainer(self, thing, **kwargs):
        d = self.dimensions()
        nut_depth = d.get('nut_pocket_depth',2.8)
        add(thing, kwargs, "oobb_plate", width=self.reference()["design"].get("plate_width",5), height=3, depth=d["retainer_thickness"],
            holes=False, pos=[self.reference()["design"].get("plate_center_x",-15), 0, d["retainer_bottom"]], zz="bottom")
        add(thing, kwargs, "oobb_hole", "negative", radius=12.5, depth=10,
            pos=[0, 0, d["retainer_bottom"]-1])
        add(thing, kwargs, "oobb_hole", "negative", radius=oobb.gv("bearing_6704_od", "3dpr"),
            depth=round(d["bearing_roof"]-d["retainer_bottom"]+.1,3), pos=[0, 0, d["retainer_bottom"]-.1])
        # Entry chamfer faces up in the inverted print; no suspended underside lip.
        add(thing, kwargs, "oobb_cylinder", "negative", radius_1=14.0, radius_2=13.7,
            depth=.3, pos=[0, 0, d["retainer_bottom"]-.01], zz="bottom")
        for x, y in self.cover_joins():
            add(thing, kwargs, "oobb_hole", "negative", radius_name="m3", depth=10,
                pos=[x, y, d["retainer_bottom"]-.1])
            add(thing, kwargs, "oobb_nut", "negative", radius_name="m3", depth=nut_depth,
                pos=[x, y, d["cover_screw_head"]+d["cover_screw_length"]-nut_depth],
                zz="bottom", clearance="top", overhang=True)
        self.draw_grid(thing, kwargs, "retainer", d["retainer_bottom"]-1, 10)
        for site in self.grid_layout("retainer"):
            if site["embedded_nut"]:
                add(thing, kwargs, "oobb_nut", "negative", radius_name="m3", depth=nut_depth,
                    pos=[site["x"],site["y"],d["retainer_bottom"]], zz="bottom", overhang=True)
        thing["depth_mm"] = d["retainer_thickness"]


    def socket(self, thing, base, profile, delta=0, floor=None):
        """Smooth female friction taper; metal splines imprint it during seating.

        Exact tooth roots/angles are not specified by the sources. This avoids
        presenting an invented 24/25-tooth cavity as a manufactured spline fit.
        """
        d = self.dimensions()
        runner_face = profile.get("runner_face",d["face"])
        floor = runner_face if floor is None else floor
        start = max(runner_face, profile["spline_bottom"])
        roof = profile["spline_top"]+.35+base.get("socket_depth_adjustment_mm", 0)
        add(thing, base, "oobb_cylinder", "negative",
            radius_1=(profile["spline_diameter"]+.20+delta)/2,
            radius_2=(profile["spline_diameter"]-.08+delta)/2,
            depth=roof-start, pos=[0, 0, floor+start-runner_face], zz="bottom")
        if start > runner_face:
            add(thing, base, "oobb_hole", "negative", radius=profile.get("boss_diameter",8.4)/2+.15,
                depth=start-runner_face+.12, pos=[0, 0, floor-.01])
        # A flared entrance eases alignment over the spindle before friction bites.
        add(thing, base, "oobb_cylinder", "negative", radius_1=profile["spline_diameter"]/2+.5, radius_2=profile["spline_diameter"]/2+.1,
            depth=.45, pos=[0, 0, floor-.01], zz="bottom")
        # Same native slot -> square -> round transition as the nut pockets.
        # The runner prints socket-down: these two 0.3 mm layers bridge the
        # blind socket roof before continuing into the smaller screw passage.
        shaft_d = profile.get("retention", {}).get("clearance_diameter", 3.6)
        add(thing, base, "oobb_overhang", "negative",
            radius_name="m3" if shaft_d >= 3 else "m2",
            pos=[0, 0, floor+roof-runner_face], zz="bottom")


    def output_nuts(self, thing, kwargs, runner_face=None):
        d = self.dimensions()
        runner_face = d["face"] if runner_face is None else runner_face
        for x, y in self.output_positions():
            # Whole nuts enter from the exposed top of the rotor, above the
            # bearing. The lid provides the complete plastic roof over them.
            add(thing, kwargs, "oobb_nut", "negative", radius_name="m3", depth=d.get('nut_pocket_depth',2.8),
                pos=[x, y, d["nut_bottom"]], zz="bottom", overhang=True,
                rot=[0, 0, 30+math.degrees(math.atan2(y, x))])
            # Continue beneath each captive nut to the runner underside so a
            # longer attachment screw can pass through the bearing middle piece.
            add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
                depth=d["split"]-runner_face+2, pos=[x, y, runner_face-1])


    def draw_rotor(self, thing, **kwargs):
        d = self.dimensions()
        profile = self.reference()["profiles"][kwargs.get("socket_profile", self.reference().get("default_profile","mg996r"))]
        runner_face = profile.get("runner_face",d["face"])
        # Keep the female end within the bearing ID: the bearing must slide over
        # this end before the lower plate and servo are installed. Opposed solid
        # flanges would trap an un-installable bearing between them.
        for r, z, depth in [(9.9, runner_face, d["seat"]-runner_face), (9.9, d["seat"], 4.3),
                             (11.0, d["seat"]+4.3, .3),
                             (11.9, d["seat"]+4.6, d["split"]-d["seat"]-4.6)]:
            add(thing, kwargs, "oobb_cylinder", radius=r, depth=depth, pos=[0, 0, z], zz="bottom")
        self.socket(thing, kwargs, profile, delta=kwargs.get("socket_diameter_adjustment_mm", 0))
        self.retention_cutters(thing, kwargs, profile, runner_face)
        self.output_nuts(thing, kwargs, runner_face=runner_face)
        for x, y in self.output_joins():
            add(thing, kwargs, "oobb_hole", "negative", radius_name="m3",
                depth=d["split"]-runner_face+2, pos=[x,y,runner_face-1])
            # Bottom-loading inverted native nut pocket. Slightly tighter print
            # allowance retains material around the bearing journal and socket.
            add(thing, kwargs, "oobb_nut", "negative", radius_name="m3", depth=d.get('nut_pocket_depth',2.8),
                pos=[x,y,d["output_join_nut_top"]], zz="bottom", clearance="top",
                rot=[180,0,30+math.degrees(math.atan2(y,x))],
                clearance_tightness=-.1, overhang=True)
        thing["depth_mm"] = d["split"]-runner_face


    def draw_output_lid(self, thing, **kwargs):
        d = self.dimensions()
        add(thing, kwargs, "oobb_cylinder", radius=11.9, depth=d["lid_thickness"],
            pos=[0, 0, d["split"]], zz="bottom")
        for x, y in self.output_positions():
            add(thing, kwargs, "oobb_hole", "negative", radius_name="m3", depth=d["lid_thickness"]+2,
                pos=[x, y, d["split"]-1])
        for x, y in self.output_joins():
            add(thing, kwargs, "oobb_screw_countersunk", "negative", radius_name="m3",
                depth=d["output_screw_length"], pos=[x,y,d["output_top"]], zz="none",
                nut_include=False, clearance="top", overhang=True)
        # Factory horn screw enters through this access recess. Its thread and
        # length belong to the chosen servo, not a universally assumed M2.5 thread.
        add(thing, kwargs, "oobb_hole", "negative", radius=self.reference()["design"].get("access_diameter",6.4)/2, depth=d["lid_thickness"]+2,
            pos=[0, 0, d["split"]-.2])
        thing["depth_mm"] = d["lid_thickness"]


    def draw_reference_bearing(self, thing, **kwargs):
        # Native bearing primitive for nominal hardware; the cutter seat uses its
        # own print allowance and the full 4.1 mm axial space above.
        d = self.dimensions()
        add(thing, kwargs, "oobb_bearing", bearing_size="6704", pos=[0, 0, d["seat"]+2],
            clearance_bearing=0)


    def draw_output_hardware(self, thing, **kwargs):
        d = self.dimensions()
        for x, y in self.output_joins():
            add(thing, kwargs, "oobb_cylinder", radius=1.5, depth=d["output_screw_length"],
                pos=[x, y, d["output_top"]-d["output_screw_length"]], zz="bottom")
            head_depth=oobb.gv("screw_countersunk_depth_m3","true")
            add(thing, kwargs, "oobb_cylinder", radius_1=1.5,
                radius_2=oobb.gv("screw_countersunk_radius_m3","true"), depth=head_depth,
                pos=[x,y,d["output_top"]-head_depth], zz="bottom")
            add(thing, kwargs, "polyg", r=5.5/math.sqrt(3), sides=6, height=2.4,
                pos=[x,y,d["output_join_nut_top"]-2.5],
                rot=[0,0,30+math.degrees(math.atan2(y,x))])


    def draw_fit_coupons(self, thing, **kwargs):
        d = self.dimensions()
        for row, key in enumerate(self.reference()["profiles"]):
            p = self.reference()["profiles"][key]
            for col, delta in enumerate((-.10, 0, .10)):
                coupon = oobb.get_default_thing(type="female_fit_coupon")
                add(coupon, kwargs, "oobb_cylinder", radius=5.5, depth=8,
                    pos=[0, 0, 0], zz="bottom")
                self.socket(coupon, kwargs, p, delta=delta, floor=0)
                add(coupon, kwargs, "oobb_hole", "negative", radius=p.get("retention",{}).get("clearance_diameter",3.6)/2, depth=9, pos=[0, 0, -1])
                # Socket up, closed end on bed. Separate tile labels identify each fit.
                thing["components"].append(group(coupon["components"], pos=[col*18, row*24, 8], rot=[180, 0, 0]))
                add(thing, kwargs, "oobb_cube_center", size=[16, 22, 1],
                    pos=[col*18, row*24-3, 0], zz="bottom")
                add(thing, kwargs, "oobb_text", text=f'{key} {delta:+.1f}',
                    size=1.8, depth=.5, pos=[col*18, row*24-10, 1],
                    font="Liberation Sans", halign="center", valign="center")


    def retention_cutters(self, thing, kwargs, profile, runner_face):
        d = self.dimensions()
        retention = profile.get("retention", {})
        shaft_d = retention.get("clearance_diameter", 3.6)
        head_d = retention.get("head_clearance_diameter", self.reference()["design"].get("access_diameter",6.4))
        # Move the screw seat with the experimental roof, preserving its land.
        seat = profile["spline_top"] + retention.get("seat_above_spline",1.55) + kwargs.get("socket_depth_adjustment_mm", 0)
        add(thing, kwargs, "oobb_hole", "negative", radius=shaft_d/2,
            depth=d["output_top"]-runner_face+2, pos=[0,0,runner_face-1])
        add(thing, kwargs, "oobb_hole", "negative", radius=head_d/2,
            depth=d["output_top"]-seat+1, pos=[0,0,seat])

    def draw_adapter_fit_test(self, thing, **kwargs):
        """Socket-down matrix using the production taper, bridges and head seat.

        D changes both taper diameters; Z changes the socket roof and head
        seat together. Each independently labelled coupon is removable.
        """
        key = kwargs["socket_profile"]
        profile = copy.deepcopy(self.reference()["profiles"][key])
        face = profile.get("runner_face", self.dimensions()["face"])
        for field in ("spline_bottom", "spline_top"):
            profile[field] -= face
        profile["runner_face"] = 0
        records = thing.setdefault("fit_test_samples", [])
        for row, depth_delta in enumerate(kwargs["fit_depth_adjustments_mm"]):
            for col, diameter_delta in enumerate(kwargs["fit_diameter_adjustments_mm"]):
                base = dict(kwargs, socket_depth_adjustment_mm=depth_delta)
                seat = profile["spline_top"]+profile["retention"]["seat_above_spline"]+depth_delta
                height = round(seat+1.5, 3)
                coupon = oobb.get_default_thing(type="servo_adapter_fit_sample")
                add(coupon, base, "oobb_cylinder", radius=9.9, depth=height,
                    pos=[0, 0, 0], zz="bottom")
                self.socket(coupon, base, profile, delta=diameter_delta, floor=0)
                self.retention_cutters(coupon, base, profile, 0)
                # The tab stops outside the socket/boss opening on the bed.
                add(coupon, base, "oobb_cube_center", size=[26, 10, 1.2],
                    pos=[0, -12, 0], zz="bottom")
                label = f"D{diameter_delta:+.1f} Z{depth_delta:+.1f}"
                for text, y in ((key, -10), (label, -14)):
                    add(coupon, base, "oobb_text", text=text, size=1.8, depth=.5,
                        pos=[0, y, 1.2], font="Liberation Sans", halign="center", valign="center")
                position = [col*30, row*38, 0]
                thing["components"].append(group(coupon["components"], pos=position))
                records.append(dict(profile=key, label=label, pos=position,
                    diameter_adjustment_mm=diameter_delta, depth_adjustment_mm=depth_delta,
                    entry_diameter_mm=profile["spline_diameter"]+.20+diameter_delta,
                    roof_diameter_mm=profile["spline_diameter"]-.08+diameter_delta,
                    socket_roof_mm=profile["spline_top"]+.35+depth_delta,
                    screw_seat_mm=seat, height_mm=height))
        thing["depth_mm"] = max(r["height_mm"] for r in records)

    def draw_retention_reference(self, thing, profile, **kwargs):
        """Nominal screw envelope, not an invented model-specific thread."""
        r=profile['retention']
        seat=profile['spline_top']+r['seat_above_spline']+kwargs.get('socket_depth_adjustment_mm',0)
        add(thing,kwargs,'oobb_cylinder',radius=r['nominal_diameter']/2,depth=r['length'],
            pos=[0,0,seat-r['length']],zz='bottom')
        add(thing,kwargs,'oobb_cylinder',radius=r['head_envelope_diameter']/2,depth=1.3,
            pos=[0,0,seat],zz='bottom')

    def draw_bearing_fit_coupons(self, thing, **kwargs):
        """Three inverted bearing seats: diameter adjustments -0.1/0/+0.1 mm."""
        for col,delta in enumerate((-.1,0,.1)):
            part=oobb.get_default_thing(type='bearing_fit_coupon')
            add(part,kwargs,'oobb_cylinder',radius=17.5,depth=5.6,pos=[0,0,0],zz='bottom')
            add(part,kwargs,'oobb_hole','negative',radius=12.5,depth=8,pos=[0,0,-1])
            add(part,kwargs,'oobb_hole','negative',radius=oobb.gv('bearing_6704_od','3dpr')+delta/2,
                depth=4.2,pos=[0,0,1.5])
            add(part,kwargs,'oobb_cube_center',size=[34,8,1],pos=[0,-18,0],zz='bottom')
            add(part,kwargs,'oobb_text',text=f'6704 {delta:+.1f}',size=2.2,depth=.5,
                pos=[0,-19,1],font='Liberation Sans',halign='center',valign='center')
            thing['components'].append(group(part['components'],pos=[col*42,0,0]))

    def draw_retention_coupons(self, thing, **kwargs):
        """Profile-labelled shaft clearances and short-screw counterbore seats."""
        for i,(key,p) in enumerate(self.reference()['profiles'].items()):
            part=oobb.get_default_thing(type='retention_bore_coupon')
            r=p['retention']
            add(part,kwargs,'oobb_cube_center',size=[18,20,5],pos=[0,0,0],zz='bottom')
            add(part,kwargs,'oobb_hole','negative',radius=r['clearance_diameter']/2,
                depth=7,pos=[0,0,-1])
            add(part,kwargs,'oobb_hole','negative',radius=r['head_clearance_diameter']/2,
                depth=4,pos=[0,0,1.2])
            add(part,kwargs,'oobb_text',text=f'{key} D{r["clearance_diameter"]:.1f}',
                size=1.4,depth=.5,pos=[0,-7,5],font='Liberation Sans',halign='center',valign='center')
            thing['components'].append(group(part['components'],pos=[(i%3)*23,(i//3)*25,0]))

