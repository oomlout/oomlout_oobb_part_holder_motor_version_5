$fn = 50;

difference() {
	union() {
		translate(v = [-24, -5.2, -13.999999999999998]) {
			cylinder(h = 28.3, r = 1.5);
		}
		translate(v = [-24, -5.2, 14.3]) {
			cylinder(h = 1.7, r1 = 1.5, r2 = 2.9);
		}
		translate(v = [-24, 5.2, -13.999999999999998]) {
			cylinder(h = 28.3, r = 1.5);
		}
		translate(v = [-24, 5.2, 14.3]) {
			cylinder(h = 1.7, r1 = 1.5, r2 = 2.9);
		}
		translate(v = [14.5, -5.2, -13.999999999999998]) {
			cylinder(h = 28.3, r = 1.5);
		}
		translate(v = [14.5, -5.2, 14.3]) {
			cylinder(h = 1.7, r1 = 1.5, r2 = 2.9);
		}
		translate(v = [14.5, 5.2, -13.999999999999998]) {
			cylinder(h = 28.3, r = 1.5);
		}
		translate(v = [14.5, 5.2, 14.3]) {
			cylinder(h = 1.7, r1 = 1.5, r2 = 2.9);
		}
	}
	union();
}
