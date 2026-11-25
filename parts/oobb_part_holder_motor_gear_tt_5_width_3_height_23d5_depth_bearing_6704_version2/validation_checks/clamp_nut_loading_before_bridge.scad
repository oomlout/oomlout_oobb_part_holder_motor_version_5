intersection(){
union(){
$fn = 50;

difference() {
	union() {
		translate(v = [-5.5, -30, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				difference() {
					union() {
						linear_extrude(height = 25) {
							polygon(points = [[3.1734999999999998, 0.0], [1.5867500000000003, 2.7483316189099156], [-1.5867499999999992, 2.748331618909916], [-3.1734999999999998, 3.886416617094125e-16], [-1.5867500000000012, -2.748331618909915], [1.5867499999999977, -2.748331618909917]]);
						}
					}
					union();
				}
			}
		}
		translate(v = [5.5, -30, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				difference() {
					union() {
						linear_extrude(height = 25) {
							polygon(points = [[3.1734999999999998, 0.0], [1.5867500000000003, 2.7483316189099156], [-1.5867499999999992, 2.748331618909916], [-3.1734999999999998, 3.886416617094125e-16], [-1.5867500000000012, -2.748331618909915], [1.5867499999999977, -2.748331618909917]]);
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
union(){
union(){
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
		translate(v = [0, 0, 0]) {
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

translate([0,0,8]) rotate([180,0,0]){
union(){
$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 8]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, 0]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 8, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-20.6, -8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
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
						translate(v = [-20.6, 8.8, 7]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -30.0]) {
											cylinder(h = 30, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
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
						translate(v = [-37.5, -15, 8]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4]) {
											linear_extrude(height = 4) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 15, 8]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4]) {
											linear_extrude(height = 4) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -15, 8]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4]) {
											linear_extrude(height = 4) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 15, 8]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -4]) {
											linear_extrude(height = 4) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
									}
									union();
								}
							}
						}
						translate(v = [-18, 0, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										linear_extrude(height = 2.9000000000000004) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
									}
									union();
								}
							}
						}
						translate(v = [18, 0, 0]) {
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
						translate(v = [0, -18, 0]) {
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
						translate(v = [0, 18, 0]) {
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
						translate(v = [-37.0, -11.399999999999999, -1]) {
							cube(size = [48.4, 22.799999999999997, 4]);
						}
						translate(v = [-58.0, -10.395, -1]) {
							cube(size = [34.0, 20.79, 6.099999999999999]);
						}
						translate(v = [-9.2, -25.0, 7]) {
							cube(size = [7.4, 24, 1.2]);
						}
						translate(v = [1.7999999999999998, -25.0, 7]) {
							cube(size = [7.4, 24, 1.2]);
						}
						translate(v = [-45, -15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-45, 15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-30, -15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-30, 15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15, -15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-15, 15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [15, -15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [15, 15, -1]) {
							cylinder(h = 10, r = 3.25);
						}
						translate(v = [-22.5, -15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-22.5, 15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-7.5, -15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-7.5, 15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-45, -7.5, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-45, 7.5, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15, -7.5, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [15, 7.5, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-37.5, -15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [-37.5, 15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, -15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [7.5, 15, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 10, r = 12);
						}
						translate(v = [-18, 0, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [18, 0, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, -18, -1]) {
							cylinder(h = 10, r = 1.8);
						}
						translate(v = [0, 18, -1]) {
							cylinder(h = 10, r = 1.8);
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

}
