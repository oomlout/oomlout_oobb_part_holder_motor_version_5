$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, -1.7]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 1.7]) {
							cylinder(h = 2, r = 12);
						}
					}
					union() {
						translate(v = [0, -8.5, 1.7]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 8.5, 1.7]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0, 0, -8.0]) {
											cylinder(h = 8, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 1.6]) {
							cylinder(h = 2.2, r = 2.3);
						}
					}
				}
			}
		}
	}
	union();
}
