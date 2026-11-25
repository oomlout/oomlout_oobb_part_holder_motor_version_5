$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-7.5, 0, -28]) {
							hull() {
								translate(v = [-24.5, 17.0, 0]) {
									cylinder(h = 35, r = 5);
								}
								translate(v = [24.5, 17.0, 0]) {
									cylinder(h = 35, r = 5);
								}
								translate(v = [-24.5, -17.0, 0]) {
									cylinder(h = 35, r = 5);
								}
								translate(v = [24.5, -17.0, 0]) {
									cylinder(h = 35, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-7.5, 0, -25]) {
							hull() {
								translate(v = [-24.5, 17.8, 0]) {
									cylinder(h = 60, r = 2);
								}
								translate(v = [24.5, 17.8, 0]) {
									cylinder(h = 60, r = 2);
								}
								translate(v = [-24.5, -17.8, 0]) {
									cylinder(h = 60, r = 2);
								}
								translate(v = [24.5, -17.8, 0]) {
									cylinder(h = 60, r = 2);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-22.5, -15, -25.0]) {
			cylinder(h = 18.5, r = 4.5);
		}
		translate(v = [-26.0, -20.5, -25]) {
			cube(size = [7, 6, 18.5]);
		}
		translate(v = [-22.5, 15, -25.0]) {
			cylinder(h = 18.5, r = 4.5);
		}
		translate(v = [-26.0, 14.5, -25]) {
			cube(size = [7, 6, 18.5]);
		}
		translate(v = [7.5, -15, -25.0]) {
			cylinder(h = 18.5, r = 4.5);
		}
		translate(v = [4.0, -20.5, -25]) {
			cube(size = [7, 6, 18.5]);
		}
		translate(v = [7.5, 15, -25.0]) {
			cylinder(h = 18.5, r = 4.5);
		}
		translate(v = [4.0, 14.5, -25]) {
			cube(size = [7, 6, 18.5]);
		}
	}
	union() {
		translate(v = [-22.5, -15, -9.8]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						cylinder(h = 253.2, r = 3.0);
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-22.5, 15, -9.8]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						cylinder(h = 253.2, r = 3.0);
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [7.5, -15, -9.8]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						cylinder(h = 253.2, r = 3.0);
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [7.5, 15, -9.8]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
						cylinder(h = 253.2, r = 3.0);
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.8);
						}
						translate(v = [-1.75, -3.25, -0.3]) {
							cube(size = [3.5, 6.5, 0.3]);
						}
						translate(v = [-1.75, -1.75, -0.6]) {
							cube(size = [3.5, 3.5, 0.3]);
						}
						translate(v = [0, 0, -25.0]) {
							cylinder(h = 25, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-30.0, -15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-15.0, -15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-7.5, -15.0, -29]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -29]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [15.0, -15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [15.0, 15.0, -29]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-41.0, -6.0, -23]) {
			cube(size = [8, 12, 9]);
		}
	}
}
