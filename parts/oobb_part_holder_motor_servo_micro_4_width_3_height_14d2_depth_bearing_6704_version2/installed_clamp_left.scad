$fn = 50;

difference() {
	union() {
		translate(v = [-23.2, 0, -4.5]) {
			hull() {
				translate(v = [-3.9000000000000004, 12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [3.9000000000000004, 12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [-3.9000000000000004, -12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [3.9000000000000004, -12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
			}
		}
	}
	union() {
		translate(v = [-24, -5.2, -5.5]) {
			cylinder(h = 4, r = 1.8);
		}
		translate(v = [-24, 5.2, -5.5]) {
			cylinder(h = 4, r = 1.8);
		}
		translate(v = [-30, -15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [-30, 15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [15, -15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [15, 15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
	}
}
