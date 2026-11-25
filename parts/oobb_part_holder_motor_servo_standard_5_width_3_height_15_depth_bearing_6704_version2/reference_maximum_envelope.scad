$fn = 50;

difference() {
	union() {
		translate(v = [-10.25, 0, -32]) {
			hull() {
				translate(v = [-20.25, 10.0, 0]) {
					cylinder(h = 40, r = 0.5);
				}
				translate(v = [20.25, 10.0, 0]) {
					cylinder(h = 40, r = 0.5);
				}
				translate(v = [-20.25, -10.0, 0]) {
					cylinder(h = 40, r = 0.5);
				}
				translate(v = [20.25, -10.0, 0]) {
					cylinder(h = 40, r = 0.5);
				}
			}
		}
		translate(v = [-37.25, -10.5, -3.65]) {
			cube(size = [54, 21, 2.65]);
		}
	}
	union();
}
