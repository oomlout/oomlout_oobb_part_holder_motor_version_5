$fn = 50;

difference() {
	union() {
		translate(v = [34.5, 0, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-34.5, 0, -2]) {
							hull() {
								translate(v = [-2.65, 9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [2.65, 9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [-2.65, -9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [2.65, -9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
							}
						}
					}
					union() {
						translate(v = [-34.5, -5.2, -3]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [-34.5, 5.2, -3]) {
							cylinder(h = 4, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [-4.5, 0, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [14.5, 0, -2]) {
							hull() {
								translate(v = [-2.65, 9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [2.65, 9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [-2.65, -9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
								translate(v = [2.65, -9.15, 0]) {
									cylinder(h = 2, r = 0.6);
								}
							}
						}
					}
					union() {
						translate(v = [14.5, -5.2, -3]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [14.5, 5.2, -3]) {
							cylinder(h = 4, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
