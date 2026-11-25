$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, 0]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-20.6, -8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.8);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-20.6, 8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.8);
										}
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -15, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -2.5]) {
											linear_extrude(height = 2.5) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 15, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -2.5]) {
											linear_extrude(height = 2.5) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -15, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -2.5]) {
											linear_extrude(height = 2.5) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 15, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -2.5]) {
											linear_extrude(height = 2.5) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [-18, 0, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 1.9) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [18, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 1.9) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, -18, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 1.9) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 18, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 1.9) {
											polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.0, -11.399999999999999, -1]) {
							cube(size = [48.4, 22.799999999999997, 4]);
						}
						translate(v = [-58.0, -10.395, -1]) {
							cube(size = [34.0, 20.79, 6.099999999999999]);
						}
						translate(v = [-45, -15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-45, 15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-30, -15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-30, 15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-15, -15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-15, 15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [15, -15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [15, 15, -1]) {
							cylinder(h = 9, r = 3.25);
						}
						translate(v = [-22.5, -15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-22.5, 15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-7.5, -15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-7.5, 15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-45, -7.5, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-45, 7.5, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [15, -7.5, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [15, 7.5, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-37.5, -15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [-37.5, 15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [7.5, -15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [7.5, 15, -1]) {
							cylinder(h = 9, r = 1.8);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 9, r = 12);
						}
						translate(v = [-18, 0, -1]) {
							cylinder(h = 9, r = 1.55);
						}
						translate(v = [18, 0, -1]) {
							cylinder(h = 9, r = 1.55);
						}
						translate(v = [0, -18, -1]) {
							cylinder(h = 9, r = 1.55);
						}
						translate(v = [0, 18, -1]) {
							cylinder(h = 9, r = 1.55);
						}
					}
				}
			}
		}
	}
	union();
}
