$fn = 50;

difference() {
	union() {
		cylinder(h = 10, r = 7);
		translate(v = [-12.5, -14.0, 0]) {
			cube(size = [25, 10, 1.5]);
		}
		translate(v = [0, -10, 1.5]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 1.65, text = "D+0.0 F+0.4", valign = "center");
			}
		}
	}
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.10000000000000009]) {
							cylinder(h = 7.8, r = 2.7);
						}
					}
					union() {
						translate(v = [-20.0, -22.05, -1.1]) {
							cube(size = [40, 20, 9.8]);
						}
						translate(v = [-20.0, 2.0500000000000007, -1.1]) {
							cube(size = [40, 20, 9.8]);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 7]) {
			cylinder(h = 4, r = 1);
		}
	}
}
