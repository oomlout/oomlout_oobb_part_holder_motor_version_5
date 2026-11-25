$fn = 50;

difference() {
	union() {
		translate(v = [-5.7, 0, 0]) {
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
		translate(v = [-5.7, -8.5, 2]) {
			linear_extrude(height = 0.5) {
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "fs90", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-17.6, -6.55, -1]) {
			cube(size = [23.8, 13.1, 4]);
		}
		translate(v = [-19.2, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
		translate(v = [7.8, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
	}
}
