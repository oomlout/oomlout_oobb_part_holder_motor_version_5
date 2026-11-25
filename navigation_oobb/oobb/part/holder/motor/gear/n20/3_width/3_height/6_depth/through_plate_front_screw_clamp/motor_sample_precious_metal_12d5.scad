$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -27.9]) {
							cylinder(h = 15.420000000000002, r = 6);
						}
					}
					union() {
						translate(v = [-7.0, -15.0, -28.000000000000004]) {
							cube(size = [14, 10, 15.600000000000001]);
						}
						translate(v = [-7.0, 5.0, -28.000000000000004]) {
							cube(size = [14, 10, 15.600000000000001]);
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
		translate(v = [-6.0, -5.0, -12.5]) {
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-6.0, -5.0, -6.875000000000001]) {
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-6.0, -5.0, -1.3]) {
			cube(size = [12, 10, 1.3]);
		}
		translate(v = [-3.5, -2.5, -12.5]) {
			cylinder(h = 12.5, r = 1.35);
		}
		translate(v = [3.5, 2.5, -12.5]) {
			cylinder(h = 12.5, r = 1.35);
		}
		translate(v = [0, 0, -12.5]) {
			cylinder(h = 12.5, r = 3.6);
		}
		translate(v = [0, 0, -29.1]) {
			cylinder(h = 1.21, r = 2.5);
		}
		translate(v = [0, 0, -34.1]) {
			cylinder(h = 5.01, r = 0.5);
		}
		translate(v = [-3.7, -0.75, -29.700000000000003]) {
			cube(size = [0.5, 1.5, 1.81]);
		}
		translate(v = [3.2, -0.75, -29.700000000000003]) {
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
