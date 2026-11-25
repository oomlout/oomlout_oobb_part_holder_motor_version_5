$fn = 50;

difference() {
	union() {
		translate(v = [-5.2, 0, 0]) {
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
		translate(v = [-5.2, -8.5, 2]) {
			linear_extrude(height = 0.5) {
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "mg90s", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-16.900000000000002, -6.5, -1]) {
			cube(size = [23.400000000000002, 13.0, 4]);
		}
		translate(v = [-18.95, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
		translate(v = [8.55, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
	}
}
