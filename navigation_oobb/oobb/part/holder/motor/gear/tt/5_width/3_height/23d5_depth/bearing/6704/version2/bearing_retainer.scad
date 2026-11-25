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
											cylinder(h = 20, r = 1.25);
										}
										translate(v = [0, 0, -1.0]) {
											cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
										}
										cylinder(h = 250, r = 3.45);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.55);
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
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.25);
										}
										translate(v = [0, 0, -1.0]) {
											cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
										}
										cylinder(h = 250, r = 3.45);
										translate(v = [0, 0, -16.0]) {
											cylinder(h = 16, r = 1.55);
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
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.25);
										}
										translate(v = [0, 0, -1.0]) {
											cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
										}
										cylinder(h = 250, r = 3.45);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.55);
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
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.25);
										}
										translate(v = [0, 0, -1.0]) {
											cylinder(h = 1.0, r1 = 1.55, r2 = 3.45);
										}
										cylinder(h = 250, r = 3.45);
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.55);
										}
										translate(v = [0, 0, -20.0]) {
											cylinder(h = 20, r = 1.25);
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
