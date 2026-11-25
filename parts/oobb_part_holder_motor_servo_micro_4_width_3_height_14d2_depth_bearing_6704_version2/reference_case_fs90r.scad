$fn = 50;

difference() {
	union() {
		translate(v = [-5.15, 0, -19.0]) {
			hull() {
				translate(v = [-10.55, 5.35, 0]) {
					cylinder(h = 23.4, r = 0.7);
				}
				translate(v = [10.55, 5.35, 0]) {
					cylinder(h = 23.4, r = 0.7);
				}
				translate(v = [-10.55, -5.35, 0]) {
					cylinder(h = 23.4, r = 0.7);
				}
				translate(v = [10.55, -5.35, 0]) {
					cylinder(h = 23.4, r = 0.7);
				}
			}
		}
		translate(v = [-21.299999999999997, -6.05, -2.3]) {
			cube(size = [32.3, 12.1, 2.3]);
		}
		translate(v = [0, 0, 4.4]) {
			cylinder(h = 4.299999999999999, r = 3.5);
		}
		translate(v = [-19.4, -2.0, -16.0]) {
			cube(size = [4, 4, 3]);
		}
	}
	union() {
		translate(v = [-19.0, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
		translate(v = [8.7, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
	}
}
