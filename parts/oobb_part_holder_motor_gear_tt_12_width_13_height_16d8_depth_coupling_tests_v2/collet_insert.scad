$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 11.5]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 3.7]) {
							cylinder(h = 6.8, r1 = 4.45, r2 = 5.45);
						}
						translate(v = [0, 0, 10.49]) {
							cylinder(h = 1.01, r = 6.5);
						}
					}
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 3.6]) {
											cylinder(h = 8.0, r = 2.8000000000000003);
										}
									}
									union() {
										translate(v = [-20.0, -21.95, 2.6]) {
											cube(size = [40, 20, 10.0]);
										}
										translate(v = [-20.0, 1.9499999999999993, 2.6]) {
											cube(size = [40, 20, 10.0]);
										}
									}
								}
							}
						}
						translate(v = [-0.3, -10.0, 3.6]) {
							cube(size = [0.6, 20, 6.1]);
						}
						translate(v = [-10.0, -0.3, 3.6]) {
							cube(size = [20, 0.6, 6.1]);
						}
						translate(v = [0, 5.4, 11.1]) {
							linear_extrude(height = 0.45) {
								text(font = "Liberation Sans", halign = "center", size = 1.5, text = "T2", valign = "center");
							}
						}
					}
				}
			}
		}
	}
	union();
}
