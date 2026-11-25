$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 5.5]) {
			cylinder(h = 7, r = 32.5);
		}
	}
	union() {
		translate(v = [0, 0, 4.5]) {
			cylinder(h = 9, r = 25.0);
		}
	}
}
