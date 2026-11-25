$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 19.4]) {
			cylinder(h = 2.2, r = 11.9);
		}
	}
	union() {
		translate(v = [-4.490128060534576, -4.490128060534576, 21.6]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.5);
						}
						translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						cylinder(h = 250, r = 3.6);
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [4.490128060534576, 4.490128060534576, 21.6]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.5);
						}
						translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						cylinder(h = 250, r = 3.6);
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-7.5, 0, 18.4]) {
			cylinder(h = 4.2, r = 1.8);
		}
		translate(v = [7.5, 0, 18.4]) {
			cylinder(h = 4.2, r = 1.8);
		}
		translate(v = [0, -7.5, 18.4]) {
			cylinder(h = 4.2, r = 1.8);
		}
		translate(v = [0, 7.5, 18.4]) {
			cylinder(h = 4.2, r = 1.8);
		}
		translate(v = [0, 0, 19.2]) {
			cylinder(h = 4.2, r = 2.7);
		}
	}
}
