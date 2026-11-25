$fn = 50;

difference() {
	union() {
		translate(v = [-21.15, -21.15, -38]) {
			cube(size = [42.3, 42.3, 38]);
		}
		cylinder(h = 2, r = 11.0);
		cylinder(h = 24, r = 2.5);
	}
	union() {
		translate(v = [-15.5, -15.5, -4.5]) {
			cylinder(h = 5, r = 1.5);
		}
		translate(v = [-15.5, 15.5, -4.5]) {
			cylinder(h = 5, r = 1.5);
		}
		translate(v = [15.5, -15.5, -4.5]) {
			cylinder(h = 5, r = 1.5);
		}
		translate(v = [15.5, 15.5, -4.5]) {
			cylinder(h = 5, r = 1.5);
		}
	}
}
