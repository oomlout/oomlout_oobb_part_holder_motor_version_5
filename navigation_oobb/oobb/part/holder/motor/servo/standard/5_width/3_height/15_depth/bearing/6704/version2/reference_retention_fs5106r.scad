$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 8.850000000000001]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [0, 0, 14.850000000000001]) {
			cylinder(h = 1.3, r = 2.9);
		}
	}
	union();
}
