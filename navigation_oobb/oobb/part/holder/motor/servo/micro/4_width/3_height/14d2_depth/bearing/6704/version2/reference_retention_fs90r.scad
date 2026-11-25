$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 8.25]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [0, 0, 13.25]) {
			cylinder(h = 1.3, r = 2.4);
		}
	}
	union();
}
