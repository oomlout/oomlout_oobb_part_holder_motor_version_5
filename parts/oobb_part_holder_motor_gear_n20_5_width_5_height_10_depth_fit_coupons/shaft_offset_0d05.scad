$fn = 50;

difference() {
	union() {
		cylinder(h = 7, r = 6);
		translate(v = [-6.0, -10.5, 0]) {
			cube(size = [12, 7, 1.2]);
		}
		translate(v = [0, -7.5, 1.1]) {
			linear_extrude(height = 0.4) {
				text(font = "Liberation Sans", halign = "center", size = 2.2, text = "0.05", valign = "center");
			}
		}
	}
	union() {
		translate(v = [0, 0, -0.1]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 7.2, r = 1.55);
					}
					union() {
						translate(v = [-6.0, 1.0499999999999998, -1]) {
							cube(size = [12, 12, 9.2]);
						}
					}
				}
			}
		}
	}
}
