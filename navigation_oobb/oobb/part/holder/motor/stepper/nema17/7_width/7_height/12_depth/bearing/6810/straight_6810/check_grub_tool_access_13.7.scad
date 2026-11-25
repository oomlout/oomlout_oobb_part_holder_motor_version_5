intersection() {
  union() {
    include <holder.scad>;
    translate([0,0,3]) { include <bearing_housing.scad>; }
    translate([0,0,29]) rotate([180,0,0]) { include <bearing_cap.scad>; }
    include <rotating_local.scad>;
    include <reference_bearing.scad>;
  }
  translate([5.2,0,13.7]) rotate([0,90,0]) cylinder(r=.95,h=60,$fn=32);
}