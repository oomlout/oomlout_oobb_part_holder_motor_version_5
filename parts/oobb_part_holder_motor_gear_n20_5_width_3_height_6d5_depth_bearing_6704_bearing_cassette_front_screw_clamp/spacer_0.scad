$fn = 50;

difference() {
	union() {
		translate(v = [22.5, 7.5, -3]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-22.5, -7.5, 3.0]) {
							cylinder(h = 5.8, r = 4.5);
						}
					}
					union() {
						translate(v = [-22.5, -7.5, 2.9]) {
							cylinder(h = 6, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
