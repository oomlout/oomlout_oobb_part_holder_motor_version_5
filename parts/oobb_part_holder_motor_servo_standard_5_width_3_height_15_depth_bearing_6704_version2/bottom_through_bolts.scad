$fn = 50;

difference() {
	union() {
		translate(v = [-45.0, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-45.0, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-30.0, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-30.0, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-22.5, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 1.5);
		}
		translate(v = [-22.5, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 1.5);
		}
		translate(v = [-15.0, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-15.0, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [-7.5, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 1.5);
		}
		translate(v = [-7.5, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 1.5);
		}
		translate(v = [15.0, -15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
		translate(v = [15.0, 15.0, -39.99999999999999]) {
			cylinder(h = 58.2, r = 3);
		}
	}
	union();
}
