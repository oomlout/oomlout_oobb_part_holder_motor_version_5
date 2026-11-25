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
				text(font = "Liberation Sans", halign = "center", size = 1.5, text = "hs65hb", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-17.8, -6.1, -1]) {
			cube(size = [24.200000000000003, 12.2, 4]);
		}
		translate(v = [-19.2, -3, -1]) {
			cylinder(h = 4, r = 1.0);
		}
		translate(v = [-19.2, 3, -1]) {
			cylinder(h = 4, r = 1.0);
		}
		translate(v = [7.8, -3, -1]) {
			cylinder(h = 4, r = 1.0);
		}
		translate(v = [7.8, 3, -1]) {
			cylinder(h = 4, r = 1.0);
		}
	}
}
