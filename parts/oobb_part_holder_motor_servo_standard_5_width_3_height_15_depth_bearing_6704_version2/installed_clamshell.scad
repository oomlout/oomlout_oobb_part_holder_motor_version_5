$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, -38.0]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 45.4, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 45.4, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 45.4, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 45.4, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-15, 0, -35.0]) {
							hull() {
								translate(v = [-32.0, 17.8, 0]) {
									cylinder(h = 50, r = 2);
								}
								translate(v = [32.0, 17.8, 0]) {
									cylinder(h = 50, r = 2);
								}
								translate(v = [-32.0, -17.8, 0]) {
									cylinder(h = 50, r = 2);
								}
								translate(v = [32.0, -17.8, 0]) {
									cylinder(h = 50, r = 2);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-37.5, -15, -35.0]) {
			cylinder(h = 34.7, r = 4.5);
		}
		translate(v = [-41.0, -20.5, -35.0]) {
			cube(size = [7, 6, 34.7]);
		}
		translate(v = [-37.5, 15, -35.0]) {
			cylinder(h = 34.7, r = 4.5);
		}
		translate(v = [-41.0, 14.5, -35.0]) {
			cube(size = [7, 6, 34.7]);
		}
		translate(v = [7.5, -15, -35.0]) {
			cylinder(h = 34.7, r = 4.2);
		}
		translate(v = [4.0, -20.5, -35.0]) {
			cube(size = [7, 6, 34.7]);
		}
		translate(v = [7.5, 15, -35.0]) {
			cylinder(h = 34.7, r = 4.2);
		}
		translate(v = [4.0, 14.5, -35.0]) {
			cube(size = [7, 6, 34.7]);
		}
	}
	union() {
		translate(v = [-37.5, -15, -9.6]) {
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
		translate(v = [-37.5, 15, -9.6]) {
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
		translate(v = [7.5, -15, -9.6]) {
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
		translate(v = [7.5, 15, -9.6]) {
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
		translate(v = [-45.0, -15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-45.0, 15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-30.0, -15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-22.5, -15.0, -39.0]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [-22.5, 15.0, -39.0]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [-15.0, -15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-7.5, -15.0, -39.0]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -39.0]) {
			cylinder(h = 5, r = 1.8);
		}
		translate(v = [15.0, -15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [15.0, 15.0, -39.0]) {
			cylinder(h = 5, r = 3.25);
		}
		translate(v = [-54.0, -6.0, -33]) {
			cube(size = [8, 12, 13]);
		}
	}
}
