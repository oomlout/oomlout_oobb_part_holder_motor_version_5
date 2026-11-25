intersection(){
union(){
$fn = 50;

difference() {
	union() {
		translate(v = [18, 0, 20]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.75]) {
							cylinder(h = 0.75, r1 = 1.25, r2 = 2.25);
						}
						translate(v = [0, 0, -20.0]) {
							cylinder(h = 20, r = 1.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [-18, 0, 20]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.75]) {
							cylinder(h = 0.75, r1 = 1.25, r2 = 2.25);
						}
						translate(v = [0, 0, -16.0]) {
							cylinder(h = 16, r = 1.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 18, 20]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.75]) {
							cylinder(h = 0.75, r1 = 1.25, r2 = 2.25);
						}
						translate(v = [0, 0, -20.0]) {
							cylinder(h = 20, r = 1.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, -18, 20]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -0.75]) {
							cylinder(h = 0.75, r1 = 1.25, r2 = 2.25);
						}
						translate(v = [0, 0, -20.0]) {
							cylinder(h = 20, r = 1.25);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, 25]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 3, r = 2.9);
						translate(v = [0, 0, -10.0]) {
							cylinder(h = 10, r = 1.5);
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
						cylinder(h = 3, r = 2.9);
						translate(v = [0, 0, -12.0]) {
							cylinder(h = 12, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-5.5, -5.6, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				difference() {
					union() {
						linear_extrude(height = 2.4) {
							polygon(points = [[3.1734999999999998, 0.0], [1.5867500000000003, 2.7483316189099156], [-1.5867499999999992, 2.748331618909916], [-3.1734999999999998, 3.886416617094125e-16], [-1.5867500000000012, -2.748331618909915], [1.5867499999999977, -2.748331618909917]]);
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
						cylinder(h = 3, r = 2.9);
						translate(v = [0, 0, -12.0]) {
							cylinder(h = 12, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [5.5, -5.6, 10.3]) {
			rotate(a = [-90, 0, 0]) {
				difference() {
					union() {
						linear_extrude(height = 2.4) {
							polygon(points = [[3.1734999999999998, 0.0], [1.5867500000000003, 2.7483316189099156], [-1.5867499999999992, 2.748331618909916], [-3.1734999999999998, 3.886416617094125e-16], [-1.5867500000000012, -2.748331618909915], [1.5867499999999977, -2.748331618909917]]);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, 15]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						linear_extrude(height = 2.4) {
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
