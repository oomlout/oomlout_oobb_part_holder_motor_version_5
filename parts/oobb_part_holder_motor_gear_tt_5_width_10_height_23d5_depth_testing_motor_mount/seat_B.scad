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
										cylinder(h = 250, r = 3.6);
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
										cylinder(h = 250, r = 3.6);
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
						translate(v = [-37.0, -11.399999999999999, -1]) {
							cube(size = [48.4, 22.799999999999997, 4]);
						}
						translate(v = [-58.0, -10.395, -1]) {
							cube(size = [34.0, 20.79, 6.099999999999999]);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 9, r = 5.2);
						}
						translate(v = [16.7, 0, 0.45]) {
							rotate(a = [180, 0, 90]) {
								linear_extrude(height = 0.5) {
									text(font = "Liberation Sans", halign = "center", size = 2.6, text = "B 0.2", valign = "center");
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
