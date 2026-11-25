$fn = 50;

difference() {
	union() {
		translate(v = [-15, 0, 0]) {
			hull() {
				translate(v = [-32.0, 17.0, 0]) {
					cylinder(h = 4, r = 5);
				}
				translate(v = [32.0, 17.0, 0]) {
					cylinder(h = 4, r = 5);
				}
				translate(v = [-32.0, -17.0, 0]) {
					cylinder(h = 4, r = 5);
				}
				translate(v = [32.0, -17.0, 0]) {
					cylinder(h = 4, r = 5);
				}
			}
		}
		translate(v = [-15, -17, 4]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 2, text = "GEARBOX FACE +0.2/SIDE", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-37.0, -11.399999999999999, 1]) {
			cube(size = [48.4, 22.799999999999997, 4]);
		}
		translate(v = [-58.0, -10.395, 1]) {
			cube(size = [34.0, 20.79, 4]);
		}
		translate(v = [-20.6, -8.8, -1]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-20.6, 8.8, -1]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0, 0, -1]) {
			cylinder(h = 6, r = 3.5);
		}
	}
}
