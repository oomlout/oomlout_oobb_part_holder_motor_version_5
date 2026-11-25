$fn = 50;

difference() {
	union() {
		translate(v = [-5.300000000000001, 0, -17.7]) {
			hull() {
				translate(v = [-10.700000000000001, 5.1, 0]) {
					cylinder(h = 20.8, r = 0.7);
				}
				translate(v = [10.700000000000001, 5.1, 0]) {
					cylinder(h = 20.8, r = 0.7);
				}
				translate(v = [-10.700000000000001, -5.1, 0]) {
					cylinder(h = 20.8, r = 0.7);
				}
				translate(v = [10.700000000000001, -5.1, 0]) {
					cylinder(h = 20.8, r = 0.7);
				}
			}
		}
		translate(v = [-21.6, -5.8, -1]) {
			cube(size = [32.6, 11.6, 1]);
		}
		translate(v = [0, 0, 3.1]) {
			cylinder(h = 3.3000000000000003, r = 3.0);
		}
		translate(v = [-19.700000000000003, -2.0, -14.7]) {
			cube(size = [4, 4, 3]);
		}
	}
	union() {
		translate(v = [-19.6, 0, -4]) {
			cylinder(h = 5, r = 1.0);
		}
		translate(v = [9.0, 0, -4]) {
			cylinder(h = 5, r = 1.0);
		}
	}
}
