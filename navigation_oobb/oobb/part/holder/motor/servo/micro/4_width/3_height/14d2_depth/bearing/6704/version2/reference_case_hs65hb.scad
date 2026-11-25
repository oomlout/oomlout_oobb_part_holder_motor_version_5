$fn = 50;

difference() {
	union() {
		translate(v = [-5.700000000000001, 0, -17]) {
			hull() {
				translate(v = [-11.100000000000001, 5.1, 0]) {
					cylinder(h = 24, r = 0.7);
				}
				translate(v = [11.100000000000001, 5.1, 0]) {
					cylinder(h = 24, r = 0.7);
				}
				translate(v = [-11.100000000000001, -5.1, 0]) {
					cylinder(h = 24, r = 0.7);
				}
				translate(v = [11.100000000000001, -5.1, 0]) {
					cylinder(h = 24, r = 0.7);
				}
			}
		}
		translate(v = [-21.9, -5.8, -2]) {
			cube(size = [32.4, 11.6, 2]);
		}
		translate(v = [0, 0, 7.0]) {
			cylinder(h = 1, r = 3.5);
		}
		translate(v = [-20.5, -2.0, -14]) {
			cube(size = [4, 4, 3]);
		}
	}
	union() {
		translate(v = [-19.2, -3, -4]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [-19.2, 3, -4]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [7.8, -3, -4]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [7.8, 3, -4]) {
			cylinder(h = 5, r = 1.0);
		}
	}
}
