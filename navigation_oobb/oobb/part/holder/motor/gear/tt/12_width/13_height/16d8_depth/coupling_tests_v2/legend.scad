$fn = 50;

difference() {
	union() {
		translate(v = [-15.0, 102.0, 0]) {
			cube(size = [140, 16, 2]);
		}
	}
	union() {
		translate(v = [55, 111.5, 1.55]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 2.7, text = "P PLAIN   C PINCH   JA/JB JAWS   T1/T2/T3 COLLET", valign = "center");
			}
		}
		translate(v = [55, 106.5, 1.55]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 2.7, text = "STOCK 26 STOCK HUB    HUB/CAP SHARED PARTS", valign = "center");
			}
		}
	}
}
