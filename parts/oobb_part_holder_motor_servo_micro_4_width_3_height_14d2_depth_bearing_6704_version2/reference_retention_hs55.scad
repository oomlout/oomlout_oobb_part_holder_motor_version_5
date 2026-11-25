$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 6.65]) {
			cylinder(h = 4, r = 0.85);
		}
		translate(v = [0, 0, 10.65]) {
			cylinder(h = 1.3, r = 2.4);
		}
	}
	union();
}
