$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 16]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 8]) {
							hull() {
								translate(v = [-17.0, 17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [17.0, 17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [-17.0, -17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [17.0, -17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [18, 0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-18, 0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 18, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, -18, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 0, 7]) {
							cylinder(h = 10, r = 12.25);
						}
						translate(v = [0, 0, 14]) {
							cylinder(h = 3, r = 13.65);
						}
						translate(v = [-20.6, -8.8, 7]) {
							cylinder(h = 10, r = 3.4);
						}
						translate(v = [-20.6, 8.8, 7]) {
							cylinder(h = 10, r = 3.4);
						}
						translate(v = [-5.5, 0, 10.3]) {
							rotate(a = [-90, 0, 0]) {
								cylinder(h = 23, r = 1.75);
							}
						}
						translate(v = [5.5, 0, 10.3]) {
							rotate(a = [-90, 0, 0]) {
								cylinder(h = 23, r = 1.75);
							}
						}
						translate(v = [-15.0, -15.0, 7]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 7]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, -15.0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, 15.0, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15.0, -15.0, 7]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [15.0, -7.5, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15.0, 7.5, 7]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15.0, 15.0, 7]) {
							cylinder(h = 10, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
