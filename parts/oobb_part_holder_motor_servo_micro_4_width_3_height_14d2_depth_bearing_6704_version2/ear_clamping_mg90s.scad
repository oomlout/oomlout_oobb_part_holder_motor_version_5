$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-5.2, 0, -21.4]) {
							hull() {
								translate(v = [-10.700000000000001, 5.5, 0]) {
									cylinder(h = 28.4, r = 0.7);
								}
								translate(v = [10.700000000000001, 5.5, 0]) {
									cylinder(h = 28.4, r = 0.7);
								}
								translate(v = [-10.700000000000001, -5.5, 0]) {
									cylinder(h = 28.4, r = 0.7);
								}
								translate(v = [10.700000000000001, -5.5, 0]) {
									cylinder(h = 28.4, r = 0.7);
								}
							}
						}
						translate(v = [-21.45, -6.2, -2]) {
							cube(size = [32.5, 12.4, 2]);
						}
						translate(v = [0, 0, 7.0]) {
							cylinder(h = 1, r = 3.75);
						}
						translate(v = [-19.6, -2.0, -18.4]) {
							cube(size = [4, 4, 3]);
						}
					}
					union() {
						translate(v = [-18.95, 0, -4]) {
							cylinder(h = 5, r = 1.1);
						}
						translate(v = [8.55, 0, -4]) {
							cylinder(h = 5, r = 1.1);
						}
					}
				}
			}
		}
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
		translate(v = [0, 0, 0.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-23.2, 0, -4.5]) {
							hull() {
								translate(v = [-3.9000000000000004, 12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [3.9000000000000004, 12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [-3.9000000000000004, -12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [3.9000000000000004, -12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
							}
						}
					}
					union() {
						translate(v = [-24, -5.2, -5.5]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [-24, 5.2, -5.5]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [-30, -15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [-30, 15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [15, -15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [15, 15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [12, 0, -4.5]) {
							hull() {
								translate(v = [-4.0, 12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [4.0, 12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [-4.0, -12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
								translate(v = [4.0, -12.0, 0]) {
									cylinder(h = 2, r = 1);
								}
							}
						}
					}
					union() {
						translate(v = [14.5, -5.2, -5.5]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [14.5, 5.2, -5.5]) {
							cylinder(h = 4, r = 1.8);
						}
						translate(v = [-30, -15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [-30, 15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [15, -15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
						translate(v = [15, 15, -5.5]) {
							cylinder(h = 4, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-24, 0, -11.0]) {
							hull() {
								translate(v = [-2.65, 9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [2.65, 9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [-2.65, -9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [2.65, -9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
							}
						}
					}
					union() {
						translate(v = [-24, -5.2, -7.6]) {
							rotate(a = [180, 0, 30]) {
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
						translate(v = [-24, 5.2, -7.6]) {
							rotate(a = [180, 0, 30]) {
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
						translate(v = [-24, -5.2, -12.0]) {
							cylinder(h = 8.5, r = 1.8);
						}
						translate(v = [-24, 5.2, -12.0]) {
							cylinder(h = 8.5, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [14.5, 0, -11.0]) {
							hull() {
								translate(v = [-2.65, 9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [2.65, 9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [-2.65, -9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
								translate(v = [2.65, -9.15, 0]) {
									cylinder(h = 6.5, r = 0.6);
								}
							}
						}
					}
					union() {
						translate(v = [14.5, -5.2, -7.6]) {
							rotate(a = [180, 0, 30]) {
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
						translate(v = [14.5, 5.2, -7.6]) {
							rotate(a = [180, 0, 30]) {
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
						translate(v = [14.5, -5.2, -12.0]) {
							cylinder(h = 8.5, r = 1.8);
						}
						translate(v = [14.5, 5.2, -12.0]) {
							cylinder(h = 8.5, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
