$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 10.0]) {
			cylinder(h = 4, r = 13.5);
		}
	}
	union() {
		translate(v = [0, 0, 9.9]) {
			cylinder(h = 4.2, r = 10.0);
		}
	}
}
