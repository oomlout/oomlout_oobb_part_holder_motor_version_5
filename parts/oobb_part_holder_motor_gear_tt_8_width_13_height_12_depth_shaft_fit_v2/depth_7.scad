$fn = 50;

difference() {
	union() {
		cylinder(h = 12, r = 7);
		translate(v = [-12.5, -14.0, 0]) {
			cube(size = [25, 10, 1.5]);
		}
		translate(v = [0, -10, 1.5]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 1.8, text = "DEPTH 7", valign = "center");
			}
		}
	}
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.10000000000000009]) {
							cylinder(h = 7.1, r = 2.8000000000000003);
						}
					}
					union() {
						translate(v = [-20.0, -21.95, -1.1]) {
							cube(size = [40, 20, 9.1]);
						}
						translate(v = [-20.0, 1.9499999999999993, -1.1]) {
							cube(size = [40, 20, 9.1]);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 7]) {
			cylinder(h = 6, r = 1);
		}
	}
}
