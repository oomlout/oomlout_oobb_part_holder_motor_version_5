intersection() {
  union() { include <stationary_local.scad>; include <reference_stack_fasteners.scad>; }
  rotate([0,0,90]) { include <rotating_local.scad>; }
}