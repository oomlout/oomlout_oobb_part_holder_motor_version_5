$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7.050000000000001]) {
			cylinder(h = 6, r = 1.3);
		}
		translate(v = [0, 0, 13.05]) {
			cylinder(h = 1.3, r = 2.9);
		}
	}
	union();
}
