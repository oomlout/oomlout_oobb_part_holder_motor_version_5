$fn = 50;

difference() {
	union() {
		translate(v = [-22.5, -15, -9.8]) {
			cylinder(h = 25, r = 1.5);
		}
		translate(v = [-22.5, -15, -12.8]) {
			cylinder(h = 3, r = 2.9);
		}
		translate(v = [-22.5, 15, -9.8]) {
			cylinder(h = 25, r = 1.5);
		}
		translate(v = [-22.5, 15, -12.8]) {
			cylinder(h = 3, r = 2.9);
		}
		translate(v = [7.5, -15, -9.8]) {
			cylinder(h = 25, r = 1.5);
		}
		translate(v = [7.5, -15, -12.8]) {
			cylinder(h = 3, r = 2.9);
		}
		translate(v = [7.5, 15, -9.8]) {
			cylinder(h = 25, r = 1.5);
		}
		translate(v = [7.5, 15, -12.8]) {
			cylinder(h = 3, r = 2.9);
		}
	}
	union();
}
