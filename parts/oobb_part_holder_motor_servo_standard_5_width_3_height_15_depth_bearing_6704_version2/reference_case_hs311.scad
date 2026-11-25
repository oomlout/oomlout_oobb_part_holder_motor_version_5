$fn = 50;

difference() {
	union() {
		translate(v = [-10.0, 0, -30.0]) {
			hull() {
				translate(v = [-19.0, 9.0, 0]) {
					cylinder(h = 36.5, r = 1);
				}
				translate(v = [19.0, 9.0, 0]) {
					cylinder(h = 36.5, r = 1);
				}
				translate(v = [-19.0, -9.0, 0]) {
					cylinder(h = 36.5, r = 1);
				}
				translate(v = [19.0, -9.0, 0]) {
					cylinder(h = 36.5, r = 1);
				}
			}
		}
		translate(v = [-36.4, -10.0, -3.5]) {
			cube(size = [52.8, 20.0, 2.5]);
		}
		translate(v = [0, 0, 6.5]) {
			cylinder(h = 1.5, r = 3.7);
		}
		translate(v = [-35.0, -2.0, -27.0]) {
			cube(size = [6, 4, 3]);
		}
	}
	union() {
		translate(v = [-33.9, -5.1, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [-33.9, 5.1, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [13.899999999999999, -5.1, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [13.899999999999999, 5.1, -5]) {
			cylinder(h = 5, r = 2.25);
		}
	}
}
