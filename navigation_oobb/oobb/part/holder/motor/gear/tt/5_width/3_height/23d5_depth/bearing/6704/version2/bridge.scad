$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 16]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 13]) {
							hull() {
								translate(v = [-17.0, 17.0, 0]) {
									cylinder(h = 3, r = 5);
								}
								translate(v = [17.0, 17.0, 0]) {
									cylinder(h = 3, r = 5);
								}
								translate(v = [-17.0, -17.0, 0]) {
									cylinder(h = 3, r = 5);
								}
								translate(v = [17.0, -17.0, 0]) {
									cylinder(h = 3, r = 5);
								}
							}
						}
						translate(v = [18, 0, 7.0]) {
							cylinder(h = 6.01, r = 4);
						}
						translate(v = [-18, 0, 7.0]) {
							cylinder(h = 6.01, r = 4);
						}
						translate(v = [0, 18, 7.0]) {
							cylinder(h = 6.01, r = 4);
						}
						translate(v = [0, -18, 7.0]) {
							cylinder(h = 6.01, r = 4);
						}
					}
					union() {
						translate(v = [18, 0, 6]) {
							cylinder(h = 12, r = 1.55);
						}
						translate(v = [-18, 0, 6]) {
							cylinder(h = 12, r = 1.55);
						}
						translate(v = [0, 18, 6]) {
							cylinder(h = 12, r = 1.55);
						}
						translate(v = [0, -18, 6]) {
							cylinder(h = 12, r = 1.55);
						}
						translate(v = [0, 0, 12]) {
							cylinder(h = 5, r = 12.25);
						}
						translate(v = [0, 0, 14]) {
							cylinder(h = 3, r = 13.65);
						}
						translate(v = [-15.0, -15.0, 12]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 12]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, -15.0, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 15.0, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, -15.0, 12]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [15.0, -7.5, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 7.5, 12]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 15.0, 12]) {
							cylinder(h = 5, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
