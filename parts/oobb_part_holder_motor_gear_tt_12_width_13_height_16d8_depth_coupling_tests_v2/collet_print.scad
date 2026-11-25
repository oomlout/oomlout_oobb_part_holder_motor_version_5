$fn = 50;

difference() {
	union() {
		translate(v = [0, 65, 0]) {
			rotate(a = [0, 0, 0]) {
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
			}
		}
		translate(v = [30, 65, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 11.5]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 3.7]) {
											cylinder(h = 6.8, r1 = 4.45, r2 = 5.45);
										}
										translate(v = [0, 0, 10.49]) {
											cylinder(h = 1.01, r = 6.5);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 3.6]) {
															cylinder(h = 8.0, r = 2.8000000000000003);
														}
													}
													union() {
														translate(v = [-20.0, -21.95, 2.6]) {
															cube(size = [40, 20, 10.0]);
														}
														translate(v = [-20.0, 1.9499999999999993, 2.6]) {
															cube(size = [40, 20, 10.0]);
														}
													}
												}
											}
										}
										translate(v = [-0.3, -10.0, 3.6]) {
											cube(size = [0.6, 20, 6.1]);
										}
										translate(v = [-10.0, -0.3, 3.6]) {
											cube(size = [20, 0.6, 6.1]);
										}
										translate(v = [0, 5.4, 11.1]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.5, text = "T2", valign = "center");
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
		translate(v = [60, 65, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -11.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 13.79]) {
															cylinder(h = 6.51, r = 6.0);
														}
													}
													union() {
														translate(v = [-25.0, -20.0, 12.790000000000001]) {
															cube(size = [20, 40, 8.51]);
														}
														translate(v = [5.0, -20.0, 12.790000000000001]) {
															cube(size = [20, 40, 8.51]);
														}
													}
												}
											}
										}
										translate(v = [0, 0, 11.5]) {
											cylinder(h = 2.3000000000000007, r = 11.3);
										}
									}
									union() {
										translate(v = [0, 0, 15]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 3.3) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-8, 0, 13.8]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.25);
														}
														translate(v = [0, 0, -1.0]) {
															cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
														}
														cylinder(h = 250, r = 3.45);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.55);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.25);
														}
													}
													union();
												}
											}
										}
										translate(v = [8, 0, 13.8]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.25);
														}
														translate(v = [0, 0, -1.0]) {
															cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
														}
														cylinder(h = 250, r = 3.45);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.55);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.25);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 11.4]) {
											cylinder(h = 1, r = 3.1);
										}
										translate(v = [-8.0, -2.9, 15]) {
											cube(size = [8, 5.8, 3.3]);
										}
										translate(v = [0, 0, 15]) {
											cylinder(h = 6, r = 1.8);
										}
										translate(v = [0, 3, 19.900000000000002]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "T3", valign = "center");
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
