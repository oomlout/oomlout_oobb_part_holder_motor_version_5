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
				text(font = "Liberation Sans", halign = "center", size = 2.5, text = "M3", valign = "center");
			}
		}
	}
	union() {
		translate(v = [0, 0, 10]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 1.5);
						}
						cylinder(h = 253.2, r = 3.0);
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 1.8);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 1.5);
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
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [-1.75, -3.25, 3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, 3.3]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						linear_extrude(height = 3) {
							polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [-1.75, -3.25, 3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, 3.3]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [-1.75, -3.25, 3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, 3.3]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
					}
					union();
				}
			}
		}
	}
}
