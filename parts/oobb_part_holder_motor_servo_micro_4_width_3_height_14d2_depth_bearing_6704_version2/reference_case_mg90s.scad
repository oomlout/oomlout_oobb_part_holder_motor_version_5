$fn = 50;

difference() {
	union() {
		translate(v = [-5.2, 0, -21.4]) {
			hull() {
				translate(v = [-10.700000000000001, 5.5, 0]) {
					cylinder(h = 28.4, r = 0.7);
				}
				translate(v = [10.700000000000001, 5.5, 0]) {
					cylinder(h = 28.4, r = 0.7);
				}
				translate(v = [-10.700000000000001, -5.5, 0]) {
					cylinder(h = 28.4, r = 0.7);
				}
				translate(v = [10.700000000000001, -5.5, 0]) {
					cylinder(h = 28.4, r = 0.7);
				}
			}
		}
		translate(v = [-21.45, -6.2, -2]) {
			cube(size = [32.5, 12.4, 2]);
		}
		translate(v = [0, 0, 7.0]) {
			cylinder(h = 1, r = 3.75);
		}
		translate(v = [-19.6, -2.0, -18.4]) {
			cube(size = [4, 4, 3]);
		}
	}
	union() {
		translate(v = [-18.95, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
		translate(v = [8.55, 0, -4]) {
			cylinder(h = 5, r = 1.1);
		}
	}
}
