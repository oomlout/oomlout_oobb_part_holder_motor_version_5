$fn = 50;

difference() {
	union() {
		cylinder(h = 12, r = 6);
	}
	union() {
		translate(v = [0, 0, -1]) {
			cylinder(h = 14, r = 3.25);
		}
	}
}
