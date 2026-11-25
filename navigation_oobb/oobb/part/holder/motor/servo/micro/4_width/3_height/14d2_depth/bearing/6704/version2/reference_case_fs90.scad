$fn = 50;

difference() {
	union() {
		translate(v = [-5.699999999999999, 0, -18.8]) {
			hull() {
				translate(v = [-10.9, 5.55, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [10.9, 5.55, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [-10.9, -5.55, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [10.9, -5.55, 0]) {
					cylinder(h = 23, r = 0.7);
				}
			}
		}
		translate(v = [-22.0, -6.25, -2.4]) {
			cube(size = [32.6, 12.5, 2.4]);
		}
		translate(v = [-20.299999999999997, -2.0, -15.8]) {
			cube(size = [4, 4, 3]);
		}
	}
	union() {
		translate(v = [-19.2, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
		translate(v = [7.8, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
	}
}
