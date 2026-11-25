$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.5]) {
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
										translate(v = [0, 0, 3.5]) {
											cylinder(h = 10.3, r = 11.3);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 3.4]) {
															cylinder(h = 8.799999999999999, r = 2.8000000000000003);
														}
													}
													union() {
														translate(v = [-20.0, -21.95, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
														translate(v = [-20.0, 1.9499999999999993, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
													}
												}
											}
										}
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
										translate(v = [0, 0, 15]) {
											cylinder(h = 6.300000000000001, r = 1.8);
										}
										translate(v = [-8.0, -2.9, 15]) {
											cube(size = [8, 5.8, 3.3]);
										}
										translate(v = [0, 3, 19.900000000000002]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "P", valign = "center");
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
		translate(v = [38, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -3.5]) {
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
										translate(v = [0, 0, 3.5]) {
											cylinder(h = 10.3, r = 11.3);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 3.4]) {
															cylinder(h = 8.799999999999999, r = 2.8000000000000003);
														}
													}
													union() {
														translate(v = [-20.0, -21.95, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
														translate(v = [-20.0, 1.9499999999999993, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
													}
												}
											}
										}
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
										translate(v = [5.5, 5.5, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.8);
														}
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.5, -13.2, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 10) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 15]) {
											cylinder(h = 6.300000000000001, r = 1.8);
										}
										translate(v = [-8.0, -2.9, 15]) {
											cube(size = [8, 5.8, 3.3]);
										}
										translate(v = [0.0, -0.25, 3.4]) {
											cube(size = [20, 0.5, 11.3]);
										}
										translate(v = [0, 3, 19.900000000000002]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "C", valign = "center");
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
		translate(v = [80, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 3.5, -0.25]) {
							rotate(a = [90, 0, 0]) {
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
										translate(v = [0, 0, 3.5]) {
											cylinder(h = 10.3, r = 11.3);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 3.4]) {
															cylinder(h = 8.799999999999999, r = 2.8000000000000003);
														}
													}
													union() {
														translate(v = [-20.0, -21.95, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
														translate(v = [-20.0, 1.9499999999999993, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
													}
												}
											}
										}
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
										translate(v = [-5.5, 5.5, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.8);
														}
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.5, -13.2, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 10) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.5, 5.5, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.8);
														}
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.5, -13.2, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 10) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 15]) {
											cylinder(h = 6.300000000000001, r = 1.8);
										}
										translate(v = [-8.0, -2.9, 15]) {
											cube(size = [8, 5.8, 3.3]);
										}
										translate(v = [-25.0, -29.75, 2.5]) {
											cube(size = [50, 30, 40]);
										}
										translate(v = [0, 3, 19.900000000000002]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "JA", valign = "center");
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
		translate(v = [108, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, -3.5, -0.25]) {
							rotate(a = [-90, 0, 0]) {
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
										translate(v = [0, 0, 3.5]) {
											cylinder(h = 10.3, r = 11.3);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 3.4]) {
															cylinder(h = 8.799999999999999, r = 2.8000000000000003);
														}
													}
													union() {
														translate(v = [-20.0, -21.95, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
														translate(v = [-20.0, 1.9499999999999993, 2.4]) {
															cube(size = [40, 20, 10.799999999999999]);
														}
													}
												}
											}
										}
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
										translate(v = [-5.5, 5.5, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.8);
														}
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [-5.5, -13.2, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 10) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.5, 5.5, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.8);
														}
														translate(v = [0, 0, -12.0]) {
															cylinder(h = 12, r = 1.5);
														}
													}
													union();
												}
											}
										}
										translate(v = [5.5, -13.2, 10.3]) {
											rotate(a = [-90, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 10) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 15]) {
											cylinder(h = 6.300000000000001, r = 1.8);
										}
										translate(v = [-8.0, -2.9, 15]) {
											cube(size = [8, 5.8, 3.3]);
										}
										translate(v = [-25.0, -0.25, 2.5]) {
											cube(size = [50, 30, 40]);
										}
										translate(v = [0, -3, 19.900000000000002]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "JB", valign = "center");
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
		translate(v = [105, 65, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 6]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
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
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 45]) {
												difference() {
													union() {
														translate(v = [-17.2, -7.7, -0.1]) {
															cube(size = [34.4, 15.4, 2.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, 0, 2.7]) {
											rotate(a = [0, 0, 30]) {
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
										translate(v = [7.5, 0, 2.7]) {
											rotate(a = [0, 0, 30]) {
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
										translate(v = [0, -7.5, 2.7]) {
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
										translate(v = [0, 7.5, 2.7]) {
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
										translate(v = [-9.192388155425117, -9.192388155425117, -1]) {
											cylinder(h = 8, r = 2.25);
										}
										translate(v = [9.192388155425117, 9.192388155425117, -1]) {
											cylinder(h = 8, r = 2.25);
										}
										translate(v = [-7.5, 0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, 0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0, -18, 5.6]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 2.3, text = "STOCK 26", valign = "center");
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
		translate(v = [0, 155, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 25]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 14.0]) {
											cylinder(h = 4.210000000000001, r = 9.925);
										}
										translate(v = [0, 0, 18.2]) {
											cylinder(h = 2.3100000000000023, r = 11.3);
										}
										translate(v = [0, 0, 20.5]) {
											cylinder(h = 4.5, r = 15.0);
										}
									}
									union() {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, 13.899999999999999]) {
															cylinder(h = 6.4, r = 6.125);
														}
													}
													union() {
														translate(v = [-25.125, -20.0, 12.9]) {
															cube(size = [20, 40, 8.4]);
														}
														translate(v = [5.125, -20.0, 12.9]) {
															cube(size = [20, 40, 8.4]);
														}
													}
												}
											}
										}
										translate(v = [-7.5, 0, 21.6]) {
											rotate(a = [0, 0, 30]) {
												difference() {
													union() {
														linear_extrude(height = 3.4) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, 0, 21.6]) {
											rotate(a = [0, 0, 30]) {
												difference() {
													union() {
														linear_extrude(height = 3.4) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, -7.5, 21.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 3.4) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 7.5, 21.6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 3.4) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, 20.3]) {
											cylinder(h = 5.699999999999999, r = 1.8);
										}
										translate(v = [-7.5, 0, 19.5]) {
											cylinder(h = 6.5, r = 1.8);
										}
										translate(v = [7.5, 0, 19.5]) {
											cylinder(h = 6.5, r = 1.8);
										}
										translate(v = [0, -7.5, 19.5]) {
											cylinder(h = 6.5, r = 1.8);
										}
										translate(v = [0, 7.5, 19.5]) {
											cylinder(h = 6.5, r = 1.8);
										}
										translate(v = [0, 12, 24.6]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 1.8, text = "HUB", valign = "center");
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
		translate(v = [42, 155, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 25.0]) {
											cylinder(h = 3, r = 15.0);
										}
									}
									union() {
										translate(v = [0, 0, 25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [0, 0, -10.0]) {
															cylinder(h = 10, r = 1.5);
														}
														cylinder(h = 253.2, r = 3.0);
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
										translate(v = [-7.5, 0, 24]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 0, 24]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0, -7.5, 24]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0, 7.5, 24]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0, 11, 27.6]) {
											linear_extrude(height = 0.45) {
												text(font = "Liberation Sans", halign = "center", size = 2.5, text = "CAP", valign = "center");
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
		translate(v = [-15.0, 102.0, 0]) {
			cube(size = [140, 16, 2]);
		}
	}
	union() {
		translate(v = [55, 111.5, 1.55]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 2.7, text = "P PLAIN   C PINCH   JA/JB JAWS   T1/T2/T3 COLLET", valign = "center");
			}
		}
		translate(v = [55, 106.5, 1.55]) {
			linear_extrude(height = 0.45) {
				text(font = "Liberation Sans", halign = "center", size = 2.7, text = "STOCK 26 STOCK HUB    HUB/CAP SHARED PARTS", valign = "center");
			}
		}
	}
}
