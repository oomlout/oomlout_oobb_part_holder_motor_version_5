$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 7, r = 6);
						translate(v = [-6.0, -10.5, 0]) {
							cube(size = [12, 7, 1.2]);
						}
						translate(v = [0, -7.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "0.00", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -0.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 7.2, r = 1.5);
									}
									union() {
										translate(v = [-6.0, 1.0, -1]) {
											cube(size = [12, 12, 9.2]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [18, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 7, r = 6);
						translate(v = [-6.0, -10.5, 0]) {
							cube(size = [12, 7, 1.2]);
						}
						translate(v = [0, -7.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "0.05", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -0.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 7.2, r = 1.55);
									}
									union() {
										translate(v = [-6.0, 1.0499999999999998, -1]) {
											cube(size = [12, 12, 9.2]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [36, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 7, r = 6);
						translate(v = [-6.0, -10.5, 0]) {
							cube(size = [12, 7, 1.2]);
						}
						translate(v = [0, -7.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "0.10", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -0.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 7.2, r = 1.6);
									}
									union() {
										translate(v = [-6.0, 1.0999999999999996, -1]) {
											cube(size = [12, 12, 9.2]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [54, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 7, r = 6);
						translate(v = [-6.0, -10.5, 0]) {
							cube(size = [12, 7, 1.2]);
						}
						translate(v = [0, -7.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.2, text = "0.15", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -0.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 7.2, r = 1.65);
									}
									union() {
										translate(v = [-6.0, 1.1500000000000004, -1]) {
											cube(size = [12, 12, 9.2]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 27, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-10.0, -9.0, 0]) {
							cube(size = [20, 18, 7]);
						}
						translate(v = [-10.0, -13.0, 0]) {
							cube(size = [20, 6, 1.2]);
						}
						translate(v = [0, -10.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2, text = "0.15/side", valign = "center");
							}
						}
					}
					union() {
						translate(v = [-6.15, -5.15, -0.1]) {
							cube(size = [12.3, 10.3, 7.2]);
						}
					}
				}
			}
		}
		translate(v = [25, 27, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-10.0, -9.0, 0]) {
							cube(size = [20, 18, 7]);
						}
						translate(v = [-10.0, -13.0, 0]) {
							cube(size = [20, 6, 1.2]);
						}
						translate(v = [0, -10.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2, text = "0.25/side", valign = "center");
							}
						}
					}
					union() {
						translate(v = [-6.25, -5.25, -0.1]) {
							cube(size = [12.5, 10.5, 7.2]);
						}
					}
				}
			}
		}
		translate(v = [50, 27, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-10.0, -9.0, 0]) {
							cube(size = [20, 18, 7]);
						}
						translate(v = [-10.0, -13.0, 0]) {
							cube(size = [20, 6, 1.2]);
						}
						translate(v = [0, -10.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2, text = "0.35/side", valign = "center");
							}
						}
					}
					union() {
						translate(v = [-6.35, -5.35, -0.1]) {
							cube(size = [12.7, 10.7, 7.2]);
						}
					}
				}
			}
		}
		translate(v = [0, 55, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-10.0, -10.0, 0]) {
							cube(size = [20, 20, 10]);
						}
						translate(v = [-10.0, -14.0, 0]) {
							cube(size = [20, 6, 1.2]);
						}
						translate(v = [0, -11.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.5, text = "M3", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, 10]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.5);
										}
										cylinder(h = 253.2, r = 3.0);
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.8);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.3]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										linear_extrude(height = 3) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.3]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 3.3]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
					}
				}
			}
		}
		translate(v = [25, 55, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-10.0, -10.0, 0]) {
							cube(size = [20, 20, 10]);
						}
						translate(v = [-10.0, -14.0, 0]) {
							cube(size = [20, 6, 1.2]);
						}
						translate(v = [0, -11.5, 1.1]) {
							linear_extrude(height = 0.4) {
								text(font = "Liberation Sans", halign = "center", size = 2.5, text = "M6", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, 10]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 3.0);
										}
										cylinder(h = 256.2, r = 5.5);
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 3.25);
										}
										translate(v = [-2.875, -5.0, -0.3]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -0.6]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 3.0);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -0.3]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -0.6]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 5.5]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 5.8]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										linear_extrude(height = 5.5) {
											polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
										}
										translate(v = [-2.875, -5.0, -0.3]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -0.6]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 5.5]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 5.8]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -0.3]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -0.6]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 5.5]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 5.8]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
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
