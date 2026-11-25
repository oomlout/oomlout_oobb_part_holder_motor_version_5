$fn = 50;

difference() {
	union() {
		translate(v = [-5.5, 8.5, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				cylinder(h = 30, r = 1.45);
			}
		}
		translate(v = [5.5, 8.5, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				cylinder(h = 30, r = 1.45);
			}
		}
	}
	union();
}
