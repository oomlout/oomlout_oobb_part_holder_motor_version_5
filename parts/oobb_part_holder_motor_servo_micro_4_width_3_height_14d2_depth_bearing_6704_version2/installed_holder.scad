$fn = 50;

difference() {
	union() {
		translate(v = [-7.5, 0, 7]) {
			hull() {
				translate(v = [-24.5, 17.0, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [24.5, 17.0, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [-24.5, -17.0, 0]) {
					cylinder(h = 2, r = 5);
				}
				translate(v = [24.5, -17.0, 0]) {
					cylinder(h = 2, r = 5);
				}
			}
		}
		translate(v = [-23.65, 0, 0]) {
			hull() {
				translate(v = [-4.35, 12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [4.35, 12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [-4.35, -12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [4.35, -12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
			}
		}
		translate(v = [12.45, 0, 0]) {
			hull() {
				translate(v = [-4.55, 12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [4.55, 12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [-4.55, -12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [4.55, -12.5, 0]) {
					cylinder(h = 7, r = 1);
				}
			}
		}
		translate(v = [-22.5, -15, 0.0]) {
			cylinder(h = 7.8, r = 4.5);
		}
		translate(v = [-22.5, 15, 0.0]) {
			cylinder(h = 7.8, r = 4.5);
		}
		translate(v = [7.5, -15, 0.0]) {
			cylinder(h = 7.8, r = 4.5);
		}
		translate(v = [7.5, 15, 0.0]) {
			cylinder(h = 7.8, r = 4.5);
		}
	}
	union() {
		translate(v = [-22.5, -15, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-22.5, 15, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [7.5, -15, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [7.5, 15, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-24, -5.2, -1]) {
			cylinder(h = 11, r = 1.8);
		}
		translate(v = [-24, 5.2, -1]) {
			cylinder(h = 11, r = 1.8);
		}
		translate(v = [14.5, -5.2, -1]) {
			cylinder(h = 11, r = 1.8);
		}
		translate(v = [14.5, 5.2, -1]) {
			cylinder(h = 11, r = 1.8);
		}
		translate(v = [-18.3, -6.8, -0.2]) {
			cube(size = [25.2, 13.6, 7.8]);
		}
		translate(v = [0, 0, -1]) {
			cylinder(h = 11, r = 10.3);
		}
		translate(v = [-30.0, -15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [-22.5, -15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-22.5, 15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-15.0, -15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [-15.0, -7.5, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-15.0, 7.5, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-15.0, 15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [-7.5, -15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [7.5, -15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [7.5, 15.0, -1]) {
			cylinder(h = 20, r = 1.8);
		}
		translate(v = [15.0, -15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [15.0, 15.0, -1]) {
			cylinder(h = 20, r = 3.25);
		}
		translate(v = [-30.0, -15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
		translate(v = [-30.0, 15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
		translate(v = [-15.0, -7.5, 6.9]) {
			cylinder(h = 10, r = 1.8);
		}
		translate(v = [-15.0, 7.5, 6.9]) {
			cylinder(h = 10, r = 1.8);
		}
		translate(v = [-15.0, 15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
		translate(v = [-7.5, -15.0, 6.9]) {
			cylinder(h = 10, r = 1.8);
		}
		translate(v = [-7.5, 15.0, 6.9]) {
			cylinder(h = 10, r = 1.8);
		}
		translate(v = [15.0, -15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
		translate(v = [15.0, 15.0, 7.5]) {
			cylinder(h = 10, r = 3.25);
		}
	}
}
