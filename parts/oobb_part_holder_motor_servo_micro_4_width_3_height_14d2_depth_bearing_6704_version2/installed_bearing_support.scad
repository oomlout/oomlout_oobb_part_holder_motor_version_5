$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 9.0]) {
			cylinder(h = 1, r = 13.6);
		}
	}
	union() {
		translate(v = [0, 0, 8]) {
			cylinder(h = 3, r = 12.7);
		}
	}
}
