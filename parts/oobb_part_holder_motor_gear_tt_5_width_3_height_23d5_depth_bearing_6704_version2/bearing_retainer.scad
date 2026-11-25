$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, -16]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 16]) {
							hull() {
								translate(v = [-17.0, 17.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [17.0, 17.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [-17.0, -17.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [17.0, -17.0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [18, 0, 20]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.8);
										}
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-18, 0, 19.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.8);
										}
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.5);
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
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.8);
										}
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
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
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.8);
										}
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 15]) {
							cylinder(h = 6, r = 12.25);
						}
						translate(v = [0, 0, 15.9]) {
							cylinder(h = 2.2999999999999994, r = 13.65);
						}
						translate(v = [-20.6, -8.8, 15]) {
							cylinder(h = 9, r = 3.4);
						}
						translate(v = [-20.6, 8.8, 15]) {
							cylinder(h = 9, r = 3.4);
						}
						translate(v = [-15.0, -15.0, 15]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 15]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, -15.0, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, 15.0, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [15.0, -15.0, 15]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, -7.5, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [15.0, 7.5, 15]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [15.0, 15.0, 15]) {
							cylinder(h = 6, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
