$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-50.8, 0, -5.700000000000001]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 14.2, r = 9.95);
							}
						}
					}
					union() {
						translate(v = [-52.0, -12.0, -23.2]) {
							cube(size = [16, 24, 10.0]);
						}
						translate(v = [-52.0, -12.0, 1.799999999999999]) {
							cube(size = [16, 24, 10.0]);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -24.600000000000005]) {
							cylinder(h = 36.6, r = 2.7);
						}
					}
					union() {
						translate(v = [-20.0, -21.85, -25.6]) {
							cube(size = [40, 20, 38.6]);
						}
						translate(v = [-20.0, 1.8499999999999996, -25.6]) {
							cube(size = [40, 20, 38.6]);
						}
					}
				}
			}
		}
		translate(v = [-36.8, -11.2, -15.600000000000001]) {
			cube(size = [44.0, 22.4, 18.6]);
		}
		translate(v = [7.099999999999999, -7.199999999999999, -15.600000000000001]) {
			cube(size = [4.1, 14.399999999999999, 18.6]);
		}
		translate(v = [7.199999999999999, -7.199999999999999, -15.600000000000001]) {
			cylinder(h = 18.6, r = 4);
		}
		translate(v = [7.199999999999999, 7.199999999999999, -15.600000000000001]) {
			cylinder(h = 18.6, r = 4);
		}
		translate(v = [11.100000000000001, -2.5, -7.700000000000001]) {
			cube(size = [4.9, 5, 2.8000000000000007]);
		}
		translate(v = [-11.25, 0, -17.6]) {
			cylinder(h = 2.1, r = 2);
		}
		translate(v = [-52.6, 0, -6.300000000000001]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 2.1, r = 4.95);
			}
		}
		translate(v = [-54.6, 0, -6.300000000000001]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 2.1, r = 1);
			}
		}
		translate(v = [-49.0, -8.0, 1.6999999999999993]) {
			cube(size = [2, 6, 0.5]);
		}
		translate(v = [-49.0, 2.0, 1.6999999999999993]) {
			cube(size = [2, 6, 0.5]);
		}
	}
	union() {
		translate(v = [14, 0, -8.3]) {
			cylinder(h = 4, r = 1.5);
		}
		translate(v = [-20.6, -8.8, -16.6]) {
			cylinder(h = 20.6, r = 1.5);
		}
		translate(v = [-20.6, 8.8, -16.6]) {
			cylinder(h = 20.6, r = 1.5);
		}
	}
}
