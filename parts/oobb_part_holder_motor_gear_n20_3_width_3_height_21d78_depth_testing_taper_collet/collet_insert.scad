$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, -3.7]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 3.7]) {
							cylinder(h = 1.5, r = 5.5);
						}
						translate(v = [0, 0, 5.2]) {
							cylinder(h = 5.5, r1 = 4.5, r2 = 3.5);
						}
					}
					union() {
						translate(v = [0, 0, 3.6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 7.2, r = 1.58);
									}
									union() {
										translate(v = [-6.0, 1.08, -1]) {
											cube(size = [12, 12, 9.2]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-0.35, 0.0, 5.1]) {
											cube(size = [0.7, 10, 5.7]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 120]) {
								difference() {
									union() {
										translate(v = [-0.35, 0.0, 5.1]) {
											cube(size = [0.7, 10, 5.7]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 240]) {
								difference() {
									union() {
										translate(v = [-0.35, 0.0, 5.1]) {
											cube(size = [0.7, 10, 5.7]);
										}
									}
									union();
								}
							}
						}
					}
				}
			}
		}
	}
	union();
}
