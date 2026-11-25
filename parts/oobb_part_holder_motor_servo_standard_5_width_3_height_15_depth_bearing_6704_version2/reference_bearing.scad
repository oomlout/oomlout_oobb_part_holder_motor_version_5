$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 12.6]) {
			translate(v = [0, 0, -2.0]) {
				union() {
					difference() {
						cylinder(h = 4.0, r = 13.5);
						cylinder(h = 4.0, r = 10.0);
					}
					difference() {
						translate(v = [0, 0, -50]) {
							cylinder(h = 100, r = 11.75);
						}
						translate(v = [0, 0, -50]) {
							cylinder(h = 100, r = 11.75);
						}
					}
				}
			}
		}
	}
	union();
}
