$fn = 50;

difference() {
	union() {
		translate(v = [-10.024999999999999, 0, -29.550000000000004]) {
			hull() {
				translate(v = [-19.075, 9.075, 0]) {
					cylinder(h = 37.2, r = 1);
				}
				translate(v = [19.075, 9.075, 0]) {
					cylinder(h = 37.2, r = 1);
				}
				translate(v = [-19.075, -9.075, 0]) {
					cylinder(h = 37.2, r = 1);
				}
				translate(v = [19.075, -9.075, 0]) {
					cylinder(h = 37.2, r = 1);
				}
			}
		}
		translate(v = [-37.025, -10.075, -3.65]) {
			cube(size = [54.0, 20.15, 2.65]);
		}
		translate(v = [0, 0, 7.65]) {
			cylinder(h = 1.6500000000000004, r = 3.7);
		}
		translate(v = [-35.099999999999994, -2.0, -26.550000000000004]) {
			cube(size = [6, 4, 3]);
		}
	}
	union() {
		translate(v = [-34.775, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [-34.775, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.725000000000001, -5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
		translate(v = [14.725000000000001, 5.0, -5]) {
			cylinder(h = 5, r = 2.25);
		}
	}
}
