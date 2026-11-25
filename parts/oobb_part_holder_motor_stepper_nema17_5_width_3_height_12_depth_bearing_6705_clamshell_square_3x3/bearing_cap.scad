$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 4.1]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-32.0, 17.0, 0]) {
								cylinder(h = 4.1, r = 5);
							}
							translate(v = [32.0, 17.0, 0]) {
								cylinder(h = 4.1, r = 5);
							}
							translate(v = [-32.0, -17.0, 0]) {
								cylinder(h = 4.1, r = 5);
							}
							translate(v = [32.0, -17.0, 0]) {
								cylinder(h = 4.1, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30, -15, 4.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -5.5]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, 15, 4.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -5.5]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, -15, 4.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -5.5]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, 15, 4.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -5.5]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -5.8]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -6.1]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 0.0]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 0.3]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 6.1, r = 15.1);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 3.1, r = 16.15);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [-30.0, 0.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [-22.5, -7.5, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [-15.0, -15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [-15.0, 15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [15.0, -15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [15.0, 15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [22.5, -7.5, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [22.5, 0.0, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [22.5, 7.5, -1]) {
							cylinder(h = 6.1, r = 1.8);
						}
						translate(v = [30.0, -15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [30.0, 0.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
						translate(v = [30.0, 15.0, -1]) {
							cylinder(h = 6.1, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
