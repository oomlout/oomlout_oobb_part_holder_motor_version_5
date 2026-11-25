$fn = 50;

difference() {
	union() {
		translate(v = [-4.5, 0, 3.05]) {
			cylinder(h = 20, r = 1);
		}
		translate(v = [4.5, 0, 3.05]) {
			cylinder(h = 20, r = 1);
		}
		translate(v = [-12, 0, 3.0500000000000007]) {
			cylinder(h = 24, r = 1.4);
		}
		translate(v = [12, 0, 3.0500000000000007]) {
			cylinder(h = 24, r = 1.4);
		}
	}
	union();
}
