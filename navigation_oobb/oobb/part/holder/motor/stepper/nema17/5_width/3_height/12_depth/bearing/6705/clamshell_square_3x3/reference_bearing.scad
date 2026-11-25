$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 20.1]) {
			cylinder(h = 4, r = 16.0);
		}
	}
	union() {
		translate(v = [0, 0, 19.1]) {
			cylinder(h = 6, r = 12.5);
		}
	}
}
