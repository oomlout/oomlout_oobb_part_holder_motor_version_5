$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0.7]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 9.3, r = 1.5);
					}
					union() {
						translate(v = [-6.0, 1.0, -1]) {
							cube(size = [12, 12, 11.3]);
						}
					}
				}
			}
		}
		translate(v = [-6.0, -5.0, -9]) {
			cube(size = [12, 10, 9]);
		}
		translate(v = [-6.0, -5.0, -30]) {
			cube(size = [12, 10, 21]);
		}
		cylinder(h = 0.7, r = 2.0);
		translate(v = [-4.2, -0.9, -34]) {
			cube(size = [1.5, 1.8, 4]);
		}
		translate(v = [2.7, -0.9, -34]) {
			cube(size = [1.5, 1.8, 4]);
		}
		translate(v = [0, 0, -35.0]) {
			cylinder(h = 5, r = 0.5);
		}
	}
	union() {
		translate(v = [-4.5, 0, -1.3]) {
			cylinder(h = 1.31, r = 0.8);
		}
		translate(v = [4.5, 0, -1.3]) {
			cylinder(h = 1.31, r = 0.8);
		}
	}
}
