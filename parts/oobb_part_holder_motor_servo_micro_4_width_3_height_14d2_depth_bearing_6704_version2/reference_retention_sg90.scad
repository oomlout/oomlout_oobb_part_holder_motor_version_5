$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7.050000000000001]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [0, 0, 12.05]) {
			cylinder(h = 1.3, r = 2.4);
		}
	}
	union();
}
