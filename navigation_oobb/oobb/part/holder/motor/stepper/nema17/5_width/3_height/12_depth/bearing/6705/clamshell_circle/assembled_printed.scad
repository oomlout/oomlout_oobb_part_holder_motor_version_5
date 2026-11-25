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
									union() {
										translate(v = [-15.5, -15.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.8);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-15.5, 15.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.8);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [15.5, -15.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.8);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [15.5, 15.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
														translate(v = [0, 0, -1.9]) {
															cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
														}
														cylinder(h = 250, r = 3.6);
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.8);
														}
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -1]) {
											cylinder(h = 8, r = 11.2);
										}
										translate(v = [-30.0, -15.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-22.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, 0.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [30.0, -15.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [30.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [30.0, 0.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [30.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [30.0, 15.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 28.2]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 3, r = 14.5);
									}
									union() {
										translate(v = [-7.5, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, -7.5, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 7.5, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.424621202458749, -7.424621202458749, 2.5]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.25);
														}
														translate(v = [0, 0, -1.0]) {
															cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
														}
														cylinder(h = 250, r = 3.45);
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.55);
														}
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.25);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.424621202458749, 7.424621202458749, 2.5]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.25);
														}
														translate(v = [0, 0, -1.0]) {
															cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
														}
														cylinder(h = 250, r = 3.45);
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.55);
														}
														translate(v = [0, 0, -5.0]) {
															cylinder(h = 5, r = 1.25);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-7.5, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [0.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 18]) {
							rotate(a = [0, 0, 0]) {
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
										translate(v = [-30, -15, 8.2]) {
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
										translate(v = [-30, 15, 8.2]) {
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
										translate(v = [30, -15, 8.2]) {
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
										translate(v = [30, 15, 8.2]) {
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
										translate(v = [0, 0, 1.9999999999999996]) {
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
						translate(v = [0, 0, 22.1]) {
							rotate(a = [0, 0, 0]) {
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
						translate(v = [0, 0, 18]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 2, r = 13.4);
										translate(v = [0, 0, 2.0]) {
											cylinder(h = 4.2, r = 12.425);
										}
										translate(v = [0, 0, 6.2]) {
											cylinder(h = 4, r = 14.5);
										}
									}
									union() {
										translate(v = [5.656854249492381, 5.656854249492381, 3.7]) {
											rotate(a = [0, 0, 75]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.65685424949238, 5.656854249492381, 3.7]) {
											rotate(a = [0, 0, 165]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, 3.7]) {
											rotate(a = [0, 0, 255]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.656854249492379, -5.6568542494923815, 3.7]) {
											rotate(a = [0, 0, 345]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, 0, 10.2]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, 0, 10.2]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, -7.5, 10.2]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 7.5, 10.2]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.5]) {
															linear_extrude(height = 3) {
																polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.8]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -2.1]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.424621202458749, -7.424621202458749, 9.149999999999999]) {
											rotate(a = [0, 0, 30]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.05]) {
															linear_extrude(height = 2.1) {
																polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.424621202458749, 7.424621202458749, 9.149999999999999]) {
											rotate(a = [0, 0, 30]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [0, 0, -1.05]) {
															linear_extrude(height = 2.1) {
																polygon(points = [[3.1158, 0.0], [1.5579000000000005, 2.698361953111554], [-1.5578999999999994, 2.6983619531115544], [-3.1158, 3.815754496783323e-16], [-1.5579000000000014, -2.6983619531115535], [1.557899999999998, -2.6983619531115552]]);
															}
														}
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -1.35]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -1.6500000000000001]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 1.05]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 1.35]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -1]) {
											cylinder(h = 3.2, r = 11.2);
										}
										translate(v = [0, 0, -1]) {
											cylinder(h = 12.2, r = 3.25);
										}
										translate(v = [5.656854249492381, 5.656854249492381, -1]) {
											cylinder(h = 6.7, r = 1.8);
										}
										translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
											cylinder(h = 6.7, r = 1.8);
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
											cylinder(h = 6.7, r = 1.8);
										}
										translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
											cylinder(h = 6.7, r = 1.8);
										}
										translate(v = [-7.424621202458749, -7.424621202458749, 7.3]) {
											cylinder(h = 3.9, r = 1.55);
										}
										translate(v = [7.424621202458749, 7.424621202458749, 7.3]) {
											cylinder(h = 3.9, r = 1.55);
										}
										translate(v = [-7.5, 0.0, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
										translate(v = [-7.5, 7.5, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
										translate(v = [0.0, -7.5, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
										translate(v = [0.0, 0.0, 7]) {
											cylinder(h = 4.2, r = 3.25);
										}
										translate(v = [0.0, 7.5, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
										translate(v = [7.5, -7.5, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
										translate(v = [7.5, 0.0, 7]) {
											cylinder(h = 4.2, r = 1.8);
										}
									}
								}
							}
						}
						translate(v = [-30.0, -15.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [-30.0, 15.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [30.0, -15.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [30.0, 15.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
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
