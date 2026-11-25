$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 10.2]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 2, r = 13.4);
						translate(v = [0, 0, 2.0]) {
							cylinder(h = 4.2, r = 12.425);
						}
						translate(v = [0, 0, 6.2]) {
							cylinder(h = 4, r = 14.5);
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 3.2, r = 11.2);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 12.2, r = 3.25);
						}
						translate(v = [5.656854249492381, 5.656854249492381, -1]) {
							cylinder(h = 12.2, r = 1.8);
						}
						translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
							cylinder(h = 12.2, r = 1.8);
						}
						translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
							cylinder(h = 12.2, r = 1.8);
						}
						translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
							cylinder(h = 12.2, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
