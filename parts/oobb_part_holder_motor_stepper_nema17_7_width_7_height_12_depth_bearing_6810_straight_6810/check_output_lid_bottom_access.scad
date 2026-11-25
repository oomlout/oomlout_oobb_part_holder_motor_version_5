intersection() { include <assembled_local.scad>; union() { translate([-22.5,-22.5,15.1]) cylinder(r=4.4,h=13.89,$fn=50);
translate([-22.5,22.5,15.1]) cylinder(r=4.4,h=13.89,$fn=50);
translate([22.5,-22.5,15.1]) cylinder(r=4.4,h=13.89,$fn=50);
translate([22.5,22.5,15.1]) cylinder(r=4.4,h=13.89,$fn=50); } }