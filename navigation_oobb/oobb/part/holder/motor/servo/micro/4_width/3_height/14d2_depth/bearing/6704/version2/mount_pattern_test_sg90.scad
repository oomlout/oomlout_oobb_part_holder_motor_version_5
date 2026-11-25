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
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "sg90", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-17.5, -6.3999999999999995, -1]) {
			cube(size = [23.6, 12.799999999999999, 4]);
		}
		translate(v = [-19.45, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
		translate(v = [8.05, 0, -1]) {
			cylinder(h = 4, r = 1.1);
		}
	}
}
