$fn = 50;

difference() {
	union() {
		translate(v = [-10.45, 0, -30.3]) {
			hull() {
				translate(v = [-19.45, 9.0, 0]) {
					cylinder(h = 37.0, r = 1);
				}
				translate(v = [19.45, 9.0, 0]) {
					cylinder(h = 37.0, r = 1);
				}
				translate(v = [-19.45, -9.0, 0]) {
					cylinder(h = 37.0, r = 1);
				}
				translate(v = [19.45, -9.0, 0]) {
					cylinder(h = 37.0, r = 1);
				}
			}
		}
		translate(v = [-37.45, -10.0, -3.5]) {
			cube(size = [54.0, 20.0, 2.5]);
		}
		translate(v = [0, 0, 6.699999999999999]) {
			cylinder(h = 1.7000000000000002, r = 3.7);
		}
		translate(v = [-35.9, -2.0, -27.3]) {
			cube(size = [6, 4, 3]);
		}
	}
	union() {
		translate(v = [-35.2, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [-35.2, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.3, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.3, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
	}
}
