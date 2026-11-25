$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, 0]) {
							hull() {
								translate(v = [-32.0, 9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, 9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [-32.0, -9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, -9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-20.6, -8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.8);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-20.6, 8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.8);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-36.9, -11.299999999999999, -1]) {
							cube(size = [48.199999999999996, 22.599999999999998, 4]);
						}
						translate(v = [-58.0, -10.295, -1]) {
							cube(size = [33.900000000000006, 20.59, 5.999999999999998]);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 9, r = 5.2);
						}
						translate(v = [16.7, 0, 0.45]) {
							rotate(a = [180, 0, 90]) {
								linear_extrude(height = 0.5) {
									text(font = "Liberation Sans", halign = "center", size = 2, text = "A 0.1", valign = "center");
								}
							}
						}
					}
				}
			}
		}
	}
	union();
}
