$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 23.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, -23.5]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 23.5, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 23.5, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 23.5, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 23.5, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-20.6, -8.8, -23.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 3) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-20.6, 8.8, -23.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 3) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -15, -18]) {
							rotate(a = [0, 180, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 15, -18]) {
							rotate(a = [0, 180, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -15, -18]) {
							rotate(a = [0, 180, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 15, -18]) {
							rotate(a = [0, 180, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.0, -11.399999999999999, -15.8]) {
							cube(size = [48.4, 22.799999999999997, 16.8]);
						}
						translate(v = [-58.0, -10.395, -17.7]) {
							cube(size = [34.0, 20.79, 18.7]);
						}
						translate(v = [10.0, -2.7, -7.900000000000001]) {
							cube(size = [6.199999999999999, 5.4, 8.900000000000002]);
						}
						translate(v = [-11.25, 0, -17.8]) {
							cylinder(h = 4, r = 2.2);
						}
						translate(v = [-20.6, -8.8, -24]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-20.6, 8.8, -24]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-45, -15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-45, 15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-30, -15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-30, 15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-15, -15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-15, 15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [15, -15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [15, 15, -24.5]) {
							cylinder(h = 25.5, r = 3.25);
						}
						translate(v = [-22.5, -15, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [-22.5, 15, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [-7.5, -15, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [-7.5, 15, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [-45, -7.5, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [-45, 7.5, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [15, -7.5, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [15, 7.5, -24.5]) {
							cylinder(h = 25.5, r = 1.8);
						}
						translate(v = [0, 0, -24.5]) {
							cylinder(h = 25.5, r = 5.2);
						}
						translate(v = [18, 0, -2]) {
							cylinder(h = 3, r = 1.8);
						}
						translate(v = [0, -18, -2]) {
							cylinder(h = 3, r = 1.8);
						}
						translate(v = [0, 18, -2]) {
							cylinder(h = 3, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
