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
