$fn = 50;

difference() {
	union() {
		translate(v = [-24, -5.2, 16.0]) {
			cylinder(h = 20, r = 1.5);
		}
		translate(v = [-24, 5.2, 16.0]) {
			cylinder(h = 20, r = 1.5);
		}
		translate(v = [14.5, -5.2, 16.0]) {
			cylinder(h = 20, r = 1.5);
		}
		translate(v = [14.5, 5.2, 16.0]) {
			cylinder(h = 20, r = 1.5);
		}
	}
	union();
}
