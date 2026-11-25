$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-32.0, 17.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [32.0, 17.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [-32.0, -17.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [32.0, -17.0, 0]) {
								cylinder(h = 6, r = 5);
							}
						}
					}
					union() {
						translate(v = [-15.5, -15.5, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.8);
										}
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15.5, 15.5, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.8);
										}
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [15.5, -15.5, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.8);
										}
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [15.5, 15.5, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.8);
										}
										translate(v = [0, 0, -10.0]) {
											cylinder(h = 10, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 8, r = 11.2);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-22.5, -15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, -15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, -15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 0.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 15.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
