$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-7.5, 0, 7]) {
							hull() {
								translate(v = [-24.5, 17.0, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [24.5, 17.0, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [-24.5, -17.0, 0]) {
									cylinder(h = 2, r = 5);
								}
								translate(v = [24.5, -17.0, 0]) {
									cylinder(h = 2, r = 5);
								}
							}
						}
						translate(v = [-23.65, 0, 0]) {
							hull() {
								translate(v = [-4.35, 12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [4.35, 12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [-4.35, -12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [4.35, -12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
							}
						}
						translate(v = [12.45, 0, 0]) {
							hull() {
								translate(v = [-4.55, 12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [4.55, 12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [-4.55, -12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
								translate(v = [4.55, -12.5, 0]) {
									cylinder(h = 7, r = 1);
								}
							}
						}
						translate(v = [-22.5, -15, 0.0]) {
							cylinder(h = 7.8, r = 4.5);
						}
						translate(v = [-22.5, 15, 0.0]) {
							cylinder(h = 7.8, r = 4.5);
						}
						translate(v = [7.5, -15, 0.0]) {
							cylinder(h = 7.8, r = 4.5);
						}
						translate(v = [7.5, 15, 0.0]) {
							cylinder(h = 7.8, r = 4.5);
						}
					}
					union() {
						translate(v = [-22.5, -15, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-22.5, 15, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [7.5, -15, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [7.5, 15, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-24, -5.2, -1]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [-24, 5.2, -1]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [14.5, -5.2, -1]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [14.5, 5.2, -1]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [-18.3, -6.8, -0.2]) {
							cube(size = [25.2, 13.6, 7.8]);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 11, r = 10.3);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [-22.5, -15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-22.5, 15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-15.0, -15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [-15.0, -7.5, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-15.0, 7.5, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-15.0, 15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [-7.5, -15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [7.5, -15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [7.5, 15.0, -1]) {
							cylinder(h = 20, r = 1.8);
						}
						translate(v = [15.0, -15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [15.0, 15.0, -1]) {
							cylinder(h = 20, r = 3.25);
						}
						translate(v = [-30.0, -15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-30.0, 15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15.0, -15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 6.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 6.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 6.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 6.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15.0, -15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [15.0, 15.0, 7.5]) {
							cylinder(h = 10, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 4]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 9.0]) {
							cylinder(h = 1, r = 13.6);
						}
					}
					union() {
						translate(v = [0, 0, 8]) {
							cylinder(h = 3, r = 12.7);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 8]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 12]) {
							translate(v = [0, 0, -2.0]) {
								union() {
									difference() {
										cylinder(h = 4.0, r = 13.5);
										cylinder(h = 4.0, r = 10.0);
									}
									difference() {
										translate(v = [0, 0, -50]) {
											cylinder(h = 100, r = 11.75);
										}
										translate(v = [0, 0, -50]) {
											cylinder(h = 100, r = 11.75);
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
		translate(v = [0, 0, 20]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-7.5, 0, 9]) {
							hull() {
								translate(v = [-24.5, 17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [24.5, 17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [-24.5, -17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [24.5, -17.0, 0]) {
									cylinder(h = 7, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-22.5, -15, 11.799999999999999]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 53.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 53.699999999999996]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 103.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 103.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 103.7]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 153.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 153.70000000000002]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, 15, 11.799999999999999]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 53.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 53.699999999999996]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 103.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 103.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 103.7]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 153.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 153.70000000000002]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -15, 11.799999999999999]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 53.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 53.699999999999996]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 103.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 103.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 103.7]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 153.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 153.70000000000002]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 15, 11.799999999999999]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 53.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 53.699999999999996]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 103.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 103.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 103.7]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 153.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 153.70000000000002]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15.0, -7.5, 9]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 3.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15.0, 7.5, 9]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 3.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, -15.0, 9]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 3.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, 15.0, 9]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 3.4) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3.4]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.6999999999999997]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-24, -5.2, 16]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.7]) {
											cylinder(h = 1.7, r1 = 1.8, r2 = 2.9);
										}
										cylinder(h = 250, r = 2.9);
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
						translate(v = [-24, 5.2, 16]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.7]) {
											cylinder(h = 1.7, r1 = 1.8, r2 = 2.9);
										}
										cylinder(h = 250, r = 2.9);
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
						translate(v = [14.5, -5.2, 16]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.7]) {
											cylinder(h = 1.7, r1 = 1.8, r2 = 2.9);
										}
										cylinder(h = 250, r = 2.9);
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
						translate(v = [14.5, 5.2, 16]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.7]) {
											cylinder(h = 1.7, r1 = 1.8, r2 = 2.9);
										}
										cylinder(h = 250, r = 2.9);
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
						translate(v = [0, 0, 8]) {
							cylinder(h = 10, r = 12.5);
						}
						translate(v = [0, 0, 8.9]) {
							cylinder(h = 5.2, r = 13.7);
						}
						translate(v = [0, 0, 8.99]) {
							cylinder(h = 0.3, r1 = 14.0, r2 = 13.7);
						}
						translate(v = [-22.5, -15, 8.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-22.5, 15, 8.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, -15, 8.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, 15, 8.9]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-30.0, -15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-30.0, 15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-22.5, -15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-22.5, 15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, -15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, -15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, 15.0, 8]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15.0, -15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [15.0, 15.0, 8]) {
							cylinder(h = 10, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
