$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, -3.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 3.5]) {
							cylinder(h = 8, r = 11.3);
						}
					}
					union() {
						translate(v = [-8, 0, 3.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.5) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [8, 0, 3.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.5) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 3.49]) {
							cylinder(h = 7.01, r1 = 4.270588235294118, r2 = 5.3);
						}
						translate(v = [0, 0, 10.5]) {
							cylinder(h = 1.1, r = 6.7);
						}
						translate(v = [-8, 0, 2.5]) {
							cylinder(h = 10, r = 1.55);
						}
						translate(v = [8, 0, 2.5]) {
							cylinder(h = 10, r = 1.55);
						}
						translate(v = [0, -9, 11.1]) {
							linear_extrude(height = 0.45) {
								text(font = "Liberation Sans", halign = "center", size = 1.8, text = "T1", valign = "center");
							}
						}
					}
				}
			}
		}
	}
	union();
}
