$fn = 50;

difference() {
	union() {
		translate(v = [-10.0, -10.0, 0]) {
			cube(size = [20, 20, 10]);
		}
		translate(v = [-10.0, -14.0, 0]) {
			cube(size = [20, 6, 1.2]);
		}
		translate(v = [0, -11.5, 1.1]) {
			linear_extrude(height = 0.4) {
				text(font = "Liberation Sans", halign = "center", size = 2.5, text = "M6", valign = "center");
			}
		}
	}
	union() {
		translate(v = [0, 0, 10]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 3.0);
						}
						cylinder(h = 256.2, r = 5.5);
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 3.25);
						}
						translate(v = [-2.875, -5.0, -0.3]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, -0.6]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 3.0);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-2.875, -5.0, -0.3]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, -0.6]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						translate(v = [-2.875, -5.0, 5.5]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, 5.8]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						linear_extrude(height = 5.5) {
							polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
						}
						translate(v = [-2.875, -5.0, -0.3]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, -0.6]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						translate(v = [-2.875, -5.0, 5.5]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, 5.8]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						translate(v = [-2.875, -5.0, -0.3]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, -0.6]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
						translate(v = [-2.875, -5.0, 5.5]) {
							cube(size = [5.75, 10, 0.3]);
						}
						translate(v = [-2.875, -2.875, 5.8]) {
							cube(size = [5.75, 5.75, 0.3]);
						}
					}
					union();
				}
			}
		}
	}
}
