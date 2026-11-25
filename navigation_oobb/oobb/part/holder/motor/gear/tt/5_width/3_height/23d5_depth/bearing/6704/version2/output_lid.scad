$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, -25]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 25.0]) {
							cylinder(h = 3, r = 15.0);
						}
					}
					union() {
						translate(v = [0, 0, 25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
										cylinder(h = 253.2, r = 3.0);
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.8);
										}
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, 0, 24]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 0, 24]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0, -7.5, 24]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0, 7.5, 24]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0, 11, 27.6]) {
							linear_extrude(height = 0.45) {
								text(font = "Liberation Sans", halign = "center", size = 2.5, text = "TT", valign = "center");
							}
						}
					}
				}
			}
		}
	}
	union();
}
