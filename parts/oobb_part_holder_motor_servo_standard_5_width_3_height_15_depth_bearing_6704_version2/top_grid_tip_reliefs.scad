$fn = 50;

difference() {
	union() {
		translate(v = [-45.0, -7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-45.0, 7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-37.5, 0.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-22.5, -15.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-22.5, -7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-22.5, 0.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-22.5, 7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-22.5, 15.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-15.0, -7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-15.0, 7.5, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-7.5, -15.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
		translate(v = [-7.5, 15.0, 8.91]) {
			cylinder(h = 7.299999999999999, r = 1.5);
		}
	}
	union();
}
