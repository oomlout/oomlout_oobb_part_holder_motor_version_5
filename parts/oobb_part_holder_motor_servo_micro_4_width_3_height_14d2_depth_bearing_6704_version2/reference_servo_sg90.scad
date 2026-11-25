$fn = 50;

difference() {
	union() {
		translate(v = [-5.7, 0, -17]) {
			hull() {
				translate(v = [-10.8, 5.3999999999999995, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [10.8, 5.3999999999999995, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [-10.8, -5.3999999999999995, 0]) {
					cylinder(h = 23, r = 0.7);
				}
				translate(v = [10.8, -5.3999999999999995, 0]) {
					cylinder(h = 23, r = 0.7);
				}
			}
		}
		translate(v = [-21.849999999999998, -6.1, -1.5]) {
			cube(size = [32.3, 12.2, 1.5]);
		}
		translate(v = [0, 0, 6.0]) {
			cylinder(h = 1.5, r = 3.5);
		}
		translate(v = [-20.2, -2.0, -14]) {
			cube(size = [4, 4, 3]);
		}
		translate(v = [0, 0, 7.5]) {
			cylinder(h = 3.0, r = 2.4);
		}
	}
	union() {
		translate(v = [-19.45, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
		translate(v = [8.05, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
	}
}
