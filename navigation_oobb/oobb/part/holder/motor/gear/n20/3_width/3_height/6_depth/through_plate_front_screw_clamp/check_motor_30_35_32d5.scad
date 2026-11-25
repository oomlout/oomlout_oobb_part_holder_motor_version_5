$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -31.3]) {
							cylinder(h = 22.32, r = 6);
						}
					}
					union() {
						translate(v = [-7.0, -15.0, -31.400000000000002]) {
							cube(size = [14, 10, 22.5]);
						}
						translate(v = [-7.0, 5.0, -31.400000000000002]) {
							cube(size = [14, 10, 22.5]);
						}
					}
				}
			}
		}
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
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-6.0, -5.0, -4.95]) {
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-6.0, -5.0, -1.3]) {
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-3.5, -2.5, -9.0]) {
			cylinder(h = 9, r = 1.35);
		}
		translate(v = [3.5, 2.5, -9.0]) {
			cylinder(h = 9, r = 1.35);
		}
		translate(v = [0, 0, -9.0]) {
			cylinder(h = 9, r = 3.6);
		}
		translate(v = [0, 0, -32.5]) {
			cylinder(h = 1.21, r = 2.5);
		}
		translate(v = [0, 0, -37.5]) {
			cylinder(h = 5.01, r = 0.5);
		}
		translate(v = [-3.7, -0.75, -33.1]) {
			cube(size = [0.5, 1.5, 1.81]);
		}
		translate(v = [3.2, -0.75, -33.1]) {
			cube(size = [0.5, 1.5, 1.81]);
		}
		cylinder(h = 0.7, r = 2);
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
