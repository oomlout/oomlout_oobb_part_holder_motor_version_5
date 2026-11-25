$fn = 50;

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
		translate(v = [-6.55, -5.55, -3.1]) {
			cube(size = [13.1, 11.1, 0.7]);
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
