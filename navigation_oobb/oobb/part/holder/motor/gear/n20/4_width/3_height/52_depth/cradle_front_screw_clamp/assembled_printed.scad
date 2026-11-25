$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 30]) {
							rotate(a = [0, 90, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -3]) {
											hull() {
												translate(v = [-17.0, 17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [17.0, 17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [-17.0, -17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
												translate(v = [17.0, -17.0, 0]) {
													cylinder(h = 6, r = 5);
												}
											}
										}
									}
									union() {
										translate(v = [-4.5, 0, 3]) {
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
										translate(v = [4.5, 0, 3]) {
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
										translate(v = [-10.75, 0, 3]) {
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
										translate(v = [10.75, 0, 3]) {
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
										translate(v = [-6.25, -5.25, -3.2]) {
											cube(size = [12.5, 10.5, 3.2]);
										}
										translate(v = [0, 0, -0.1]) {
											cylinder(h = 3.2, r = 2.25);
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
									}
								}
							}
						}
						translate(v = [-15, 0, 0]) {
							hull() {
								translate(v = [-24.5, 17.0, 0]) {
									cylinder(h = 6, r = 5);
								}
								translate(v = [24.5, 17.0, 0]) {
									cylinder(h = 6, r = 5);
								}
								translate(v = [-24.5, -17.0, 0]) {
									cylinder(h = 6, r = 5);
								}
								translate(v = [24.5, -17.0, 0]) {
									cylinder(h = 6, r = 5);
								}
							}
						}
						translate(v = [-3.0, -22.0, 6]) {
							cube(size = [6, 44, 4]);
						}
					}
					union() {
						translate(v = [-37.5, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-37.5, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-37.5, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-37.5, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-37.5, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-30.0, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-30.0, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-30.0, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-30.0, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-30.0, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-22.5, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-22.5, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-22.5, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-22.5, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-15.0, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-15.0, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-15.0, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-15.0, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-15.0, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-7.5, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-7.5, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [-7.5, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [0.0, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [0.0, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [0.0, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [0.0, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [0.0, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [7.5, -15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [7.5, -7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [7.5, 0.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
						translate(v = [7.5, 7.5, -0.1]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [7.5, 15.0, -0.1]) {
							cylinder(h = 6.2, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30]) {
			rotate(a = [0, 90, 0]) {
				difference() {
					union() {
						translate(v = [-15.5, -6.0, -31.6]) {
							cube(size = [31, 12, 6]);
						}
					}
					union() {
						translate(v = [-10.75, 0, -31.700000000000003]) {
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
						translate(v = [10.75, 0, -31.700000000000003]) {
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
						translate(v = [-4.6, -3.2, -31.700000000000003]) {
							cube(size = [9.2, 6.4, 6.2]);
						}
						translate(v = [-10.75, 0, -31.700000000000003]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [10.75, 0, -31.700000000000003]) {
							cylinder(h = 6.2, r = 1.8);
						}
						translate(v = [0, 4.6, -31.150000000000002]) {
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
