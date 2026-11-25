$fn = 50;

difference() {
	union() {
		translate(v = [34.5, 0, 3]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-34.5, 0, -3]) {
							hull() {
								translate(v = [-2.65, 9.15, 0]) {
									cylinder(h = 3, r = 0.6);
								}
								translate(v = [2.65, 9.15, 0]) {
									cylinder(h = 3, r = 0.6);
								}
								translate(v = [-2.65, -9.15, 0]) {
									cylinder(h = 3, r = 0.6);
								}
								translate(v = [2.65, -9.15, 0]) {
									cylinder(h = 3, r = 0.6);
								}
							}
						}
					}
					union() {
						translate(v = [-34.5, -5.2, -4]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-34.5, 5.2, -4]) {
							cylinder(h = 5, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
