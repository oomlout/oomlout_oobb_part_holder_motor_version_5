$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 3]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-16.0, -9.0, -3]) {
							cube(size = [32, 18, 6]);
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
						translate(v = [-6.15, -5.15, -3.2]) {
							cube(size = [12.3, 10.3, 3.2]);
						}
						translate(v = [-6.45, -5.45, -3.1]) {
							cube(size = [12.9, 10.9, 0.7]);
						}
						translate(v = [0, 0, -0.1]) {
							cylinder(h = 3.2, r = 2.25);
						}
						translate(v = [0, 7, -2.6]) {
							rotate(a = [180, 0, 0]) {
								linear_extrude(height = 0.5) {
									text(font = "Candara:Light", halign = "center", size = 1.8, text = "0.15", valign = "center");
								}
							}
						}
					}
				}
			}
		}
		translate(v = [36, 0, 3]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-16.0, -9.0, -3]) {
							cube(size = [32, 18, 6]);
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
						translate(v = [0, 7, -2.6]) {
							rotate(a = [180, 0, 0]) {
								linear_extrude(height = 0.5) {
									text(font = "Candara:Light", halign = "center", size = 1.8, text = "0.25", valign = "center");
								}
							}
						}
					}
				}
			}
		}
		translate(v = [72, 0, 3]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-16.0, -9.0, -3]) {
							cube(size = [32, 18, 6]);
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
						translate(v = [-6.35, -5.35, -3.2]) {
							cube(size = [12.7, 10.7, 3.2]);
						}
						translate(v = [-6.6499999999999995, -5.6499999999999995, -3.1]) {
							cube(size = [13.299999999999999, 11.299999999999999, 0.7]);
						}
						translate(v = [0, 0, -0.1]) {
							cylinder(h = 3.2, r = 2.25);
						}
						translate(v = [0, 7, -2.6]) {
							rotate(a = [180, 0, 0]) {
								linear_extrude(height = 0.5) {
									text(font = "Candara:Light", halign = "center", size = 1.8, text = "0.35", valign = "center");
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 23, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -24.400000000000002]) {
							rotate(a = [180, 0, 0]) {
								difference() {
									union() {
										translate(v = [-15.5, -6.0, -30.400000000000002]) {
											cube(size = [31, 12, 6]);
										}
									}
									union() {
										translate(v = [-10.75, 0, -30.500000000000004]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3000000000000003) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [10.75, 0, -30.500000000000004]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														linear_extrude(height = 3.3000000000000003) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														translate(v = [-1.75, -3.25, 3.3000000000000003]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														translate(v = [-1.75, -1.75, 3.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-4.6, -3.2, -30.500000000000004]) {
											cube(size = [9.2, 6.4, 6.2]);
										}
										translate(v = [-10.75, 0, -30.500000000000004]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [10.75, 0, -30.500000000000004]) {
											cylinder(h = 6.2, r = 1.8);
										}
										translate(v = [0, 4.6, -29.950000000000003]) {
											rotate(a = [180, 0, 0]) {
												linear_extrude(height = 0.55) {
													text(font = "Liberation Sans", halign = "center", size = 1.8, text = "25-30", valign = "center");
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
	}
	union();
}
