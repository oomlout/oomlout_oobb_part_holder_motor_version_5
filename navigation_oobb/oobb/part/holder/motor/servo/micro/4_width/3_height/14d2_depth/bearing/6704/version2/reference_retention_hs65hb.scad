$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7.65]) {
			cylinder(h = 5, r = 1.3);
		}
		translate(v = [0, 0, 12.65]) {
			cylinder(h = 1.3, r = 2.4);
		}
	}
	union();
}
