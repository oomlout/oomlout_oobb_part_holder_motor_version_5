$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 15.4]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 12.1]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 3.3000000000000007, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 3.3000000000000007, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 3.3000000000000007, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 3.3000000000000007, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-22.5, -7.5, 15.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, 7.5, 15.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, -7.5, 15.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, 7.5, 15.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.8);
										}
										translate(v = [0, 0, -25.0]) {
											cylinder(h = 25, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 12.5);
						}
						translate(v = [0, 0, 12.099]) {
							cylinder(h = 2.002, r = 13.65);
						}
						translate(v = [-30.0, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-30.0, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-30.0, 0.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-30.0, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-30.0, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-22.5, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-22.5, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-22.5, 0.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-22.5, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-22.5, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-15.0, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [7.5, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [7.5, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [15.0, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [15.0, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [15.0, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [15.0, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [22.5, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [22.5, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [22.5, 0.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [22.5, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [22.5, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [30.0, -15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [30.0, -7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [30.0, 0.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [30.0, 7.5, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.8);
						}
						translate(v = [30.0, 15.0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 3.25);
						}
						translate(v = [-16, 0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.45);
						}
						translate(v = [16, 0, 12.0]) {
							cylinder(h = 3.500000000000001, r = 1.45);
						}
					}
				}
			}
		}
	}
	union();
}
