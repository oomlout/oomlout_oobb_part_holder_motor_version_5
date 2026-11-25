$fn = 50;

difference() {
	union() {
		translate(v = [-5.15, 0, 0]) {
			hull() {
				translate(v = [-19.0, 9.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [19.0, 9.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [-19.0, -9.0, 0]) {
					cylinder(h = 2, r = 1);
				}
				translate(v = [19.0, -9.0, 0]) {
					cylinder(h = 2, r = 1);
				}
			}
		}
		translate(v = [-5.15, -8.5, 2]) {
			linear_extrude(height = 0.5) {
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "fs90r", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-16.700000000000003, -6.35, -1]) {
			cube(size = [23.1, 12.7, 4]);
		}
		translate(v = [-19.0, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
		translate(v = [8.7, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
	}
}
