$fn = 50;

difference() {
	union() {
		translate(v = [-10.0, -9.0, 0]) {
			cube(size = [20, 18, 7]);
		}
		translate(v = [-10.0, -13.0, 0]) {
			cube(size = [20, 6, 1.2]);
		}
		translate(v = [0, -10.5, 1.1]) {
			linear_extrude(height = 0.4) {
				text(font = "Liberation Sans", halign = "center", size = 2, text = "0.25/side", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-6.25, -5.25, -0.1]) {
			cube(size = [12.5, 10.5, 7.2]);
		}
	}
}
