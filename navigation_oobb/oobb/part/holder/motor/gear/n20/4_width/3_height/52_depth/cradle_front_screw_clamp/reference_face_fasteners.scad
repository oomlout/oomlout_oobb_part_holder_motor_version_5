$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 30]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [-4.5, 0, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4.0]) {
											cylinder(h = 4, r = 0.8);
										}
										translate(v = [0, 0, -0.96]) {
											cylinder(h = 0.96, r1 = 0.8, r2 = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [4.5, 0, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4.0]) {
											cylinder(h = 4, r = 0.8);
										}
										translate(v = [0, 0, -0.96]) {
											cylinder(h = 0.96, r1 = 0.8, r2 = 1.5);
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
