$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 17.0]) {
			cylinder(h = 10, r = 5.0);
		}
		translate(v = [0, 0, 27.0]) {
			cylinder(h = 2, r = 11.0);
		}
	}
	union() {
		translate(v = [0, 0, 16]) {
			cylinder(h = 14, r = 2.5);
		}
		translate(v = [5.656854249492381, 5.656854249492381, 26]) {
			cylinder(h = 4, r = 1.5);
		}
		translate(v = [-5.65685424949238, 5.656854249492381, 26]) {
			cylinder(h = 4, r = 1.5);
		}
		translate(v = [-5.6568542494923815, -5.65685424949238, 26]) {
			cylinder(h = 4, r = 1.5);
		}
		translate(v = [5.656854249492379, -5.6568542494923815, 26]) {
			cylinder(h = 4, r = 1.5);
		}
	}
}
