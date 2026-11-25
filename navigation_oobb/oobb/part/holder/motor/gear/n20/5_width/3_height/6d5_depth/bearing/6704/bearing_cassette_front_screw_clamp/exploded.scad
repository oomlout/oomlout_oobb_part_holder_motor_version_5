$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -3]) {
											hull() {
												translate(v = [-32.0, 17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [32.0, 17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [-32.0, -17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [32.0, -17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
											}
										}
									}
									union() {
										translate(v = [-4.5, 0, 3.4]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 0.85);
														}
														translate(v = [0, 0, -1.2]) {
															cylinder(h = 1.2, r1 = 1.1, r2 = 1.75);
														}
														cylinder(h = 250, r = 1.75);
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 1.1);
														}
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 0.85);
														}
													}
													union();
												}
											}
										}
										translate(v = [4.5, 0, 3.4]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 0.85);
														}
														translate(v = [0, 0, -1.2]) {
															cylinder(h = 1.2, r1 = 1.1, r2 = 1.75);
														}
														cylinder(h = 250, r = 1.75);
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 1.1);
														}
														translate(v = [0, 0, -4.0]) {
															cylinder(h = 4, r = 0.85);
														}
													}
													union();
												}
											}
										}
										translate(v = [-16, 0, 3]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.8);
														}
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [16, 0, 3]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.8);
														}
														translate(v = [0, 0, -35.0]) {
															cylinder(h = 35, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, 15, -3.1]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, 15, -3.1]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5999999999999996]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-6.25, -5.25, -3.2]) {
											cube(size = [12.5, 10.5, 3.2]);
										}
										translate(v = [-6.55, -5.55, -3.1]) {
											cube(size = [13.1, 11.1, 0.7]);
										}
										translate(v = [0, 0, -0.1]) {
											cylinder(h = 3.2, r = 2.25);
										}
										translate(v = [-30.0, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [-22.5, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [-15.0, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-15.0, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-15.0, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [-7.5, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-7.5, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-7.5, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [0.0, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [0.0, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [7.5, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [7.5, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [7.5, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [7.5, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [15.0, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [15.0, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [15.0, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [15.0, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [22.5, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [22.5, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [22.5, 0.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [22.5, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [22.5, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [30.0, -15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [30.0, -7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [30.0, 0.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
										}
										translate(v = [30.0, 7.5, -3.1]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [30.0, 15.0, -3.1]) {
											cylinder(h = 6.2, r = 3.25);
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
		translate(v = [0, 0, 12]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-20.5, -6.0, -30.400000000000002]) {
											cube(size = [41, 12, 6]);
										}
									}
									union() {
										translate(v = [-16, 0, -30.500000000000004]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3000000000000003) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [16, 0, -30.500000000000004]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3000000000000003) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-4.6, -3.2, -30.500000000000004]) {
											cube(size = [9.2, 6.4, 6.2]);
										}
										translate(v = [-16, 0, -30.500000000000004]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [16, 0, -30.500000000000004]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [0, 4.6, -29.950000000000003]) {
											rotate(a = [180, 0, 0]) {
												linear_extrude(height = 0.55) {
													text(font = "Liberation Sans", halign = "center", size = 1.8, text = "25-30", valign = "center");
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
			}
		}
		translate(v = [0, 0, 24]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 8.8]) {
											hull() {
												translate(v = [-32.0, 17.0, 0]) {
													cylinder(h = 3.299999999999999, r = 5);
												}
												translate(v = [32.0, 17.0, 0]) {
													cylinder(h = 3.299999999999999, r = 5);
												}
												translate(v = [-32.0, -17.0, 0]) {
													cylinder(h = 3.299999999999999, r = 5);
												}
												translate(v = [32.0, -17.0, 0]) {
													cylinder(h = 3.299999999999999, r = 5);
												}
											}
										}
									}
									union() {
										translate(v = [0, 0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 12.5);
										}
										translate(v = [0, 0, 9.899000000000001]) {
											cylinder(h = 2.201999999999999, r = 13.65);
										}
										translate(v = [-30.0, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-30.0, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-30.0, 0.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-30.0, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-30.0, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-22.5, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-22.5, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-22.5, 0.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-22.5, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-22.5, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-15.0, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-15.0, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-15.0, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-15.0, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-7.5, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [-7.5, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [7.5, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [7.5, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [15.0, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [15.0, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [15.0, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [15.0, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [22.5, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [22.5, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [22.5, 0.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [22.5, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [22.5, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [30.0, -15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [30.0, -7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [30.0, 0.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [30.0, 7.5, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.8);
										}
										translate(v = [30.0, 15.0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 3.25);
										}
										translate(v = [-22.5, -7.5, 8.7]) {
											cylinder(h = 3.6, r = 1.8);
										}
										translate(v = [-22.5, 7.5, 8.7]) {
											cylinder(h = 3.6, r = 1.8);
										}
										translate(v = [22.5, -7.5, 8.7]) {
											cylinder(h = 3.6, r = 1.8);
										}
										translate(v = [22.5, 7.5, 8.7]) {
											cylinder(h = 3.6, r = 1.8);
										}
										translate(v = [-16, 0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.45);
										}
										translate(v = [16, 0, 8.700000000000001]) {
											cylinder(h = 3.499999999999999, r = 1.45);
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
		translate(v = [0, 0, 36]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 12.1]) {
											hull() {
												translate(v = [-32.0, 17.0, 0]) {
													cylinder(h = 3.3000000000000007, r = 5);
												}
												translate(v = [32.0, 17.0, 0]) {
													cylinder(h = 3.3000000000000007, r = 5);
												}
												translate(v = [-32.0, -17.0, 0]) {
													cylinder(h = 3.3000000000000007, r = 5);
												}
												translate(v = [32.0, -17.0, 0]) {
													cylinder(h = 3.3000000000000007, r = 5);
												}
											}
										}
									}
									union() {
										translate(v = [-22.5, -7.5, 15.4]) {
											rotate(a = [0, 0, 0]) {
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
										translate(v = [-22.5, 7.5, 15.4]) {
											rotate(a = [0, 0, 0]) {
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
										translate(v = [22.5, -7.5, 15.4]) {
											rotate(a = [0, 0, 0]) {
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
										translate(v = [22.5, 7.5, 15.4]) {
											rotate(a = [0, 0, 0]) {
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
										translate(v = [0, 0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 12.5);
										}
										translate(v = [0, 0, 12.099]) {
											cylinder(h = 2.002, r = 13.65);
										}
										translate(v = [-30.0, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-30.0, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-30.0, 0.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-30.0, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-30.0, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-22.5, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-22.5, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-22.5, 0.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-22.5, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-22.5, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-15.0, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-15.0, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-15.0, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-15.0, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-7.5, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [-7.5, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [7.5, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [7.5, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [15.0, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [15.0, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [15.0, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [15.0, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [22.5, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [22.5, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [22.5, 0.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [22.5, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [22.5, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [30.0, -15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [30.0, -7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [30.0, 0.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [30.0, 7.5, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.8);
										}
										translate(v = [30.0, 15.0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 3.25);
										}
										translate(v = [-16, 0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.45);
										}
										translate(v = [16, 0, 12.0]) {
											cylinder(h = 3.500000000000001, r = 1.45);
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
		translate(v = [0, 0, 48]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-22.5, -7.5, 3.0]) {
											cylinder(h = 5.8, r = 4.5);
										}
									}
									union() {
										translate(v = [-22.5, -7.5, 2.9]) {
											cylinder(h = 6, r = 1.8);
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
		translate(v = [0, 0, 60]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-26.5, -11.5, -9.5]) {
											cube(size = [8, 8, 6.5]);
										}
									}
									union() {
										translate(v = [-22.5, -7.5, -9.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.2) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-22.5, -7.5, -9.6]) {
											cylinder(h = 6.7, r = 1.8);
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
		translate(v = [0, 0, 72]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-22.5, 7.5, 3.0]) {
											cylinder(h = 5.8, r = 4.5);
										}
									}
									union() {
										translate(v = [-22.5, 7.5, 2.9]) {
											cylinder(h = 6, r = 1.8);
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
		translate(v = [0, 0, 84]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-26.5, 3.5, -9.5]) {
											cube(size = [8, 8, 6.5]);
										}
									}
									union() {
										translate(v = [-22.5, 7.5, -9.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.2) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-22.5, 7.5, -9.6]) {
											cylinder(h = 6.7, r = 1.8);
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
		translate(v = [0, 0, 96]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [22.5, -7.5, 3.0]) {
											cylinder(h = 5.8, r = 4.5);
										}
									}
									union() {
										translate(v = [22.5, -7.5, 2.9]) {
											cylinder(h = 6, r = 1.8);
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
		translate(v = [0, 0, 108]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [18.5, -11.5, -9.5]) {
											cube(size = [8, 8, 6.5]);
										}
									}
									union() {
										translate(v = [22.5, -7.5, -9.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.2) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [22.5, -7.5, -9.6]) {
											cylinder(h = 6.7, r = 1.8);
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
		translate(v = [0, 0, 120]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [22.5, 7.5, 3.0]) {
											cylinder(h = 5.8, r = 4.5);
										}
									}
									union() {
										translate(v = [22.5, 7.5, 2.9]) {
											cylinder(h = 6, r = 1.8);
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
		translate(v = [0, 0, 132]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [18.5, 3.5, -9.5]) {
											cube(size = [8, 8, 6.5]);
										}
									}
									union() {
										translate(v = [22.5, 7.5, -9.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.2) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.2]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.5]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [22.5, 7.5, -9.6]) {
											cylinder(h = 6.7, r = 1.8);
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
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -24.4]) {
											cylinder(h = 15.420000000000002, r = 6);
										}
									}
									union() {
										translate(v = [-7.0, -15.0, -24.500000000000004]) {
											cube(size = [14, 10, 15.600000000000001]);
										}
										translate(v = [-7.0, 5.0, -24.500000000000004]) {
											cube(size = [14, 10, 15.600000000000001]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0.7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 9.3, r = 1.5);
									}
									union() {
										translate(v = [-6.0, 1.0, -1]) {
											cube(size = [12, 12, 11.3]);
										}
									}
								}
							}
						}
						translate(v = [-6.0, -5.0, -9]) {
							cube(size = [12, 10, 1.3]);
						}
						translate(v = [-6.0, -5.0, -4.95]) {
							cube(size = [12, 10, 1.3]);
						}
						translate(v = [-6.0, -5.0, -1.3]) {
							cube(size = [12, 10, 1.3]);
						}
						translate(v = [-3.5, -2.5, -9.0]) {
							cylinder(h = 9, r = 1.35);
						}
						translate(v = [3.5, 2.5, -9.0]) {
							cylinder(h = 9, r = 1.35);
						}
						translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 3.6);
						}
						translate(v = [0, 0, -25.6]) {
							cylinder(h = 1.21, r = 2.5);
						}
						translate(v = [0, 0, -30.600000000000005]) {
							cylinder(h = 5.01, r = 0.5);
						}
						translate(v = [-3.7, -0.75, -26.200000000000003]) {
							cube(size = [0.5, 1.5, 1.81]);
						}
						translate(v = [3.2, -0.75, -26.200000000000003]) {
							cube(size = [0.5, 1.5, 1.81]);
						}
						cylinder(h = 0.7, r = 2);
					}
					union() {
						translate(v = [-4.5, 0, -1.3]) {
							cylinder(h = 1.31, r = 0.8);
						}
						translate(v = [4.5, 0, -1.3]) {
							cylinder(h = 1.31, r = 0.8);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
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
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-16, 0, 3]) {
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
						translate(v = [-16, 0, -29.900000000000002]) {
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
						translate(v = [16, 0, 3]) {
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
						translate(v = [16, 0, -29.900000000000002]) {
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
		translate(v = [-22.5, -7.5, 15.4]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						translate(v = [0, 0, -1.5]) {
							cylinder(h = 1.5, r1 = 1.5, r2 = 3);
						}
					}
					union();
				}
			}
		}
		translate(v = [-22.5, -7.5, -9.25]) {
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
		translate(v = [-22.5, 7.5, 15.4]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						translate(v = [0, 0, -1.5]) {
							cylinder(h = 1.5, r1 = 1.5, r2 = 3);
						}
					}
					union();
				}
			}
		}
		translate(v = [-22.5, 7.5, -9.25]) {
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
		translate(v = [22.5, -7.5, 15.4]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						translate(v = [0, 0, -1.5]) {
							cylinder(h = 1.5, r1 = 1.5, r2 = 3);
						}
					}
					union();
				}
			}
		}
		translate(v = [22.5, -7.5, -9.25]) {
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
		translate(v = [22.5, 7.5, 15.4]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						translate(v = [0, 0, -1.5]) {
							cylinder(h = 1.5, r1 = 1.5, r2 = 3);
						}
					}
					union();
				}
			}
		}
		translate(v = [22.5, 7.5, -9.25]) {
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
		translate(v = [0, 0, 10.0]) {
			cylinder(h = 4, r = 13.5);
		}
	}
	union() {
		translate(v = [0, 0, 9.9]) {
			cylinder(h = 4.2, r = 10.0);
		}
	}
}
