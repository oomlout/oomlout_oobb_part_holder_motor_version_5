$fn = 50;

difference() {
	union() {
		translate(v = [-10.2, 0, -28.0]) {
			hull() {
				translate(v = [-19.2, 8.9, 0]) {
					cylinder(h = 36.0, r = 1);
				}
				translate(v = [19.2, 8.9, 0]) {
					cylinder(h = 36.0, r = 1);
				}
				translate(v = [-19.2, -8.9, 0]) {
					cylinder(h = 36.0, r = 1);
				}
				translate(v = [19.2, -8.9, 0]) {
					cylinder(h = 36.0, r = 1);
				}
			}
		}
		translate(v = [-37.2, -9.9, -3.5]) {
			cube(size = [54.0, 19.8, 2.5]);
		}
		translate(v = [0, 0, 8.0]) {
			cylinder(h = 1.4000000000000004, r = 3.7);
		}
		translate(v = [-35.4, -2.0, -25.0]) {
			cube(size = [6, 4, 3]);
		}
	}
	union() {
		translate(v = [-34.95, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [-34.95, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.55, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.55, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
	}
}
