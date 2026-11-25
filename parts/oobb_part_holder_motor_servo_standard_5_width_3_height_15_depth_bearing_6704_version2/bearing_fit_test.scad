$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 5.6, r = 17.5);
						translate(v = [-17.0, -22.0, 0]) {
							cube(size = [34, 8, 1]);
						}
						translate(v = [0, -19, 1]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "6704 -0.1", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 8, r = 12.5);
						}
						translate(v = [0, 0, 1.5]) {
							cylinder(h = 4.2, r = 13.649999999999999);
						}
					}
				}
			}
		}
		translate(v = [42, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 5.6, r = 17.5);
						translate(v = [-17.0, -22.0, 0]) {
							cube(size = [34, 8, 1]);
						}
						translate(v = [0, -19, 1]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "6704 +0.0", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 8, r = 12.5);
						}
						translate(v = [0, 0, 1.5]) {
							cylinder(h = 4.2, r = 13.7);
						}
					}
				}
			}
		}
		translate(v = [84, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 5.6, r = 17.5);
						translate(v = [-17.0, -22.0, 0]) {
							cube(size = [34, 8, 1]);
						}
						translate(v = [0, -19, 1]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "6704 +0.1", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 8, r = 12.5);
						}
						translate(v = [0, 0, 1.5]) {
							cylinder(h = 4.2, r = 13.75);
						}
					}
				}
			}
		}
	}
	union();
}
