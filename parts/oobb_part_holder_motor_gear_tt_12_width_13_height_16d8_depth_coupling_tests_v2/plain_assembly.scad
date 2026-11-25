$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 13.79]) {
											cylinder(h = 6.51, r = 6.0);
										}
									}
									union() {
										translate(v = [-25.0, -20.0, 12.790000000000001]) {
											cube(size = [20, 40, 8.51]);
										}
										translate(v = [5.0, -20.0, 12.790000000000001]) {
											cube(size = [20, 40, 8.51]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 3.5]) {
							cylinder(h = 10.3, r = 11.3);
						}
					}
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 3.4]) {
											cylinder(h = 8.799999999999999, r = 2.8000000000000003);
										}
									}
									union() {
										translate(v = [-20.0, -21.95, 2.4]) {
											cube(size = [40, 20, 10.799999999999999]);
										}
										translate(v = [-20.0, 1.9499999999999993, 2.4]) {
											cube(size = [40, 20, 10.799999999999999]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 15]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 3.3) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 15]) {
							cylinder(h = 6.300000000000001, r = 1.8);
						}
						translate(v = [-8.0, -2.9, 15]) {
							cube(size = [8, 5.8, 3.3]);
						}
						translate(v = [0, 3, 19.900000000000002]) {
							linear_extrude(height = 0.45) {
								text(font = "Liberation Sans", halign = "center", size = 1.8, text = "P", valign = "center");
							}
						}
					}
				}
			}
		}
	}
	union();
}
