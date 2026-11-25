$fn = 50;

difference() {
	union() {
		translate(v = [12, 0, -4.5]) {
			hull() {
				translate(v = [-4.0, 12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [4.0, 12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [-4.0, -12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [4.0, -12.0, 0]) {
					cylinder(h = 2, r = 1);
				}
			}
		}
	}
	union() {
		translate(v = [14.5, -5.2, -5.5]) {
			cylinder(h = 4, r = 1.8);
		}
		translate(v = [14.5, 5.2, -5.5]) {
			cylinder(h = 4, r = 1.8);
		}
		translate(v = [-30, -15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [-30, 15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [15, -15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
		translate(v = [15, 15, -5.5]) {
			cylinder(h = 4, r = 3.25);
		}
	}
}
