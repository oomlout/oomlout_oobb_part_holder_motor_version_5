$fn = 50;

difference() {
	union() {
		translate(v = [14.5, 0, -1]) {
			hull() {
				translate(v = [-2.65, 9.15, 0]) {
					cylinder(h = 1, r = 0.6);
				}
				translate(v = [2.65, 9.15, 0]) {
					cylinder(h = 1, r = 0.6);
				}
				translate(v = [-2.65, -9.15, 0]) {
					cylinder(h = 1, r = 0.6);
				}
				translate(v = [2.65, -9.15, 0]) {
					cylinder(h = 1, r = 0.6);
				}
			}
		}
	}
	union() {
		translate(v = [14.5, -5.2, -2]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [14.5, 5.2, -2]) {
			cylinder(h = 3, r = 1.8);
		}
	}
}
