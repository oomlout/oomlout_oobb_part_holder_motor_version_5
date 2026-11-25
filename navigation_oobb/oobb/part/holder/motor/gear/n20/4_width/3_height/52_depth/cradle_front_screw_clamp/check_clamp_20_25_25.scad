$fn = 50;

difference() {
	union() {
		translate(v = [-18.0, -8.0, -37]) {
			cube(size = [36, 16, 12]);
		}
	}
	union() {
		translate(v = [-12, 0, -31]) {
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
						translate(v = [-20.0, -3.4619999999999997, 0]) {
							cube(size = [20, 6.9239999999999995, 3]);
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
		translate(v = [12, 0, -31]) {
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
						translate(v = [0.0, -3.4619999999999997, 0]) {
							cube(size = [20, 6.9239999999999995, 3]);
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
		translate(v = [-4.6, -3.2, -37.1]) {
			cube(size = [9.2, 6.4, 12.2]);
		}
		translate(v = [-12, 0, -37.1]) {
			cylinder(h = 12.2, r = 1.8);
		}
		translate(v = [12, 0, -37.1]) {
			cylinder(h = 12.2, r = 1.8);
		}
		translate(v = [0, -7.6, -33]) {
			rotate(a = [90, 0, 0]) {
				linear_extrude(height = 0.5) {
					text(font = "Liberation Sans", halign = "center", size = 2.5, text = "20-25", valign = "center");
				}
			}
		}
	}
}
