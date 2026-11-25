$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -2.0]) {
							cylinder(h = 4, r = 13.5);
						}
					}
					union() {
						translate(v = [0, 0, -3]) {
							cylinder(h = 6, r = 10);
						}
					}
				}
			}
		}
	}
	union();
}
