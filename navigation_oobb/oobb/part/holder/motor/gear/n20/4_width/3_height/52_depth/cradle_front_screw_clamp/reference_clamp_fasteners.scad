$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 30]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [-10.75, 0, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -35.0]) {
											cylinder(h = 35, r = 1.5);
										}
										translate(v = [0, 0, -1.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
									}
									union();
								}
							}
						}
						translate(v = [-10.75, 0, -31.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.4) {
											polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [10.75, 0, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -35.0]) {
											cylinder(h = 35, r = 1.5);
										}
										translate(v = [0, 0, -1.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
									}
									union();
								}
							}
						}
						translate(v = [10.75, 0, -31.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.4) {
											polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
										}
									}
									union();
								}
							}
						}
					}
					union();
				}
			}
		}
	}
	union();
}
