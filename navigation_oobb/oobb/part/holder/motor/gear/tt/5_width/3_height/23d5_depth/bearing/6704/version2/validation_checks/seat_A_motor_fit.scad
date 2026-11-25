intersection(){
union(){translate([-20.6,0,-23.5])union(){
$fn = 50;

difference() {
	union() {
		translate(v = [20.6, 0, 23.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-25.6, -14.5, -23.5]) {
							cube(size = [10.0, 29, 23.5]);
						}
						translate(v = [-46.0, -4.0, -23.5]) {
							cube(size = [47, 8, 4.0]);
						}
						translate(v = [-46.0, -14.5, -23.5]) {
							cube(size = [4, 29, 23.5]);
						}
						translate(v = [-14.5, -4.5, -23.5]) {
							cube(size = [6.5, 9, 8.5]);
						}
						translate(v = [0, 0, -23.5]) {
							cylinder(h = 8.5, r = 8);
						}
					}
					union() {
						translate(v = [-20.6, -8.8, -23.5]) {
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
						translate(v = [-20.6, 8.8, -23.5]) {
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
						translate(v = [0, 0, -24]) {
							cylinder(h = 12, r = 5.2);
						}
						translate(v = [-37.0, -11.399999999999999, -15.8]) {
							cube(size = [48.4, 22.799999999999997, 16.8]);
						}
						translate(v = [-58.0, -10.395, -17.7]) {
							cube(size = [34.0, 20.79, 18.7]);
						}
						translate(v = [10.0, -2.7, -7.900000000000001]) {
							cube(size = [6.199999999999999, 5.4, 8.900000000000002]);
						}
						translate(v = [-11.25, 0, -17.8]) {
							cylinder(h = 4, r = 2.2);
						}
						translate(v = [-20.6, -8.8, -24]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-20.6, 8.8, -24]) {
							cylinder(h = 25, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}

}
translate([0,0,7]) rotate([180,0,0])union(){
$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 7]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, 0]) {
							hull() {
								translate(v = [-32.0, 9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, 9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [-32.0, -9.5, 0]) {
									cylinder(h = 7, r = 5);
								}
								translate(v = [32.0, -9.5, 0]) {
									cylinder(h = 7, r = 5);
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
						translate(v = [-36.9, -11.299999999999999, -1]) {
							cube(size = [48.199999999999996, 22.599999999999998, 4]);
						}
						translate(v = [-58.0, -10.295, -1]) {
							cube(size = [33.900000000000006, 20.59, 5.999999999999998]);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 9, r = 5.2);
						}
						translate(v = [16.7, 0, 0.45]) {
							rotate(a = [180, 0, 90]) {
								linear_extrude(height = 0.5) {
									text(font = "Liberation Sans", halign = "center", size = 2, text = "A 0.1", valign = "center");
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
union(){
$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-50.8, 0, -5.700000000000001]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 14.2, r = 9.95);
							}
						}
					}
					union() {
						translate(v = [-52.0, -12.0, -23.2]) {
							cube(size = [16, 24, 10.0]);
						}
						translate(v = [-52.0, -12.0, 1.799999999999999]) {
							cube(size = [16, 24, 10.0]);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -24.600000000000005]) {
							cylinder(h = 36.6, r = 2.7);
						}
					}
					union() {
						translate(v = [-20.0, -21.85, -25.6]) {
							cube(size = [40, 20, 38.6]);
						}
						translate(v = [-20.0, 1.8499999999999996, -25.6]) {
							cube(size = [40, 20, 38.6]);
						}
					}
				}
			}
		}
		translate(v = [-36.8, -11.2, -15.600000000000001]) {
			cube(size = [44.0, 22.4, 18.6]);
		}
		translate(v = [7.099999999999999, -7.199999999999999, -15.600000000000001]) {
			cube(size = [4.1, 14.399999999999999, 18.6]);
		}
		translate(v = [7.199999999999999, -7.199999999999999, -15.600000000000001]) {
			cylinder(h = 18.6, r = 4);
		}
		translate(v = [7.199999999999999, 7.199999999999999, -15.600000000000001]) {
			cylinder(h = 18.6, r = 4);
		}
		translate(v = [11.100000000000001, -2.5, -7.700000000000001]) {
			cube(size = [4.9, 5, 2.8000000000000007]);
		}
		translate(v = [-11.25, 0, -17.6]) {
			cylinder(h = 2.1, r = 2);
		}
		translate(v = [-52.6, 0, -6.300000000000001]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 2.1, r = 4.95);
			}
		}
		translate(v = [-54.6, 0, -6.300000000000001]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 2.1, r = 1);
			}
		}
		translate(v = [-49.0, -8.0, 1.6999999999999993]) {
			cube(size = [2, 6, 0.5]);
		}
		translate(v = [-49.0, 2.0, 1.6999999999999993]) {
			cube(size = [2, 6, 0.5]);
		}
	}
	union() {
		translate(v = [14, 0, -8.3]) {
			cylinder(h = 4, r = 1.5);
		}
		translate(v = [-20.6, -8.8, -16.6]) {
			cylinder(h = 20.6, r = 1.5);
		}
		translate(v = [-20.6, 8.8, -16.6]) {
			cylinder(h = 20.6, r = 1.5);
		}
	}
}

}

}
