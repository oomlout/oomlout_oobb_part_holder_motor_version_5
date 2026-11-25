$fn = 50;

difference() {
	union() {
		translate(v = [-5.3, 0, 0]) {
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
		translate(v = [-5.3, -8.5, 2]) {
			linear_extrude(height = 0.5) {
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "hs55", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-17.0, -6.1, -1]) {
			cube(size = [23.400000000000002, 12.2, 4]);
		}
		translate(v = [-19.6, 0, -1]) {
			cylinder(h = 4, r = 1.0);
		}
		translate(v = [9.0, 0, -1]) {
			cylinder(h = 4, r = 1.0);
		}
	}
}
