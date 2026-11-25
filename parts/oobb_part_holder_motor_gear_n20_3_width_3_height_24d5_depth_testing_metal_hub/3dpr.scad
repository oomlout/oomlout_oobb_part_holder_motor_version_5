$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 26]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 1.5]) {
											cylinder(h = 16.51, r = 9.9);
										}
										translate(v = [0, 0, 14.2]) {
											cylinder(h = 3.8100000000000005, r = 11);
										}
										translate(v = [0, 0, 18]) {
											hull() {
												translate(v = [-17.0, 17.0, 0]) {
													cylinder(h = 8, r = 5);
												}
												translate(v = [17.0, 17.0, 0]) {
													cylinder(h = 8, r = 5);
												}
												translate(v = [-17.0, -17.0, 0]) {
													cylinder(h = 8, r = 5);
												}
												translate(v = [17.0, -17.0, 0]) {
													cylinder(h = 8, r = 5);
												}
											}
										}
									}
									union() {
										translate(v = [-15.0, -15.0, 18]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														linear_extrude(height = 5.5) {
															polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [15.0, -15.0, 18]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														linear_extrude(height = 5.5) {
															polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [15.0, 15.0, 18]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														linear_extrude(height = 5.5) {
															polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-15.0, 15.0, 18]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														linear_extrude(height = 5.5) {
															polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, -0.3]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, -0.6]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
														translate(v = [-2.875, -5.0, 5.5]) {
															cube(size = [5.75, 10, 0.3]);
														}
														translate(v = [-2.875, -2.875, 5.8]) {
															cube(size = [5.75, 5.75, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-4.490128060534576, -4.490128060534576, 12]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.8);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-4.490128060534576, 4.490128060534576, 12]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.8);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [4.490128060534576, -4.490128060534576, 12]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.8);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [4.490128060534576, 4.490128060534576, 12]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.8);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -8.0]) {
															cylinder(h = 8, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-15.0, -15.0, 17.9]) {
											cylinder(h = 8.2, r = 3.25);
										}
										translate(v = [-15.0, 15.0, 17.9]) {
											cylinder(h = 8.2, r = 3.25);
										}
										translate(v = [15.0, -15.0, 17.9]) {
											cylinder(h = 8.2, r = 3.25);
										}
										translate(v = [15.0, 15.0, 17.9]) {
											cylinder(h = 8.2, r = 3.25);
										}
										translate(v = [0, 0, 10.8]) {
											cylinder(h = 15.3, r = 3.25);
										}
										translate(v = [0, 0, 1.4]) {
											cylinder(h = 5.2, r = 8.95);
										}
										translate(v = [0, 0, 6.4]) {
											cylinder(h = 4.5, r = 1.75);
										}
										translate(v = [0, 7.5, 4]) {
											rotate(a = [-90, 0, 0]) {
												cylinder(h = 10, r = 2);
											}
										}
									}
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
