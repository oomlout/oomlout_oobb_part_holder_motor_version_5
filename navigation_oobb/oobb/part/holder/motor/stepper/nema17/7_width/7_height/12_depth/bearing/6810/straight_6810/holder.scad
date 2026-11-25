$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-47.0, 47.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [47.0, 47.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [-47.0, -47.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [47.0, -47.0, 0]) {
								cylinder(h = 3, r = 5);
							}
						}
					}
					union() {
						translate(v = [-15.5, -15.5, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.8);
										}
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15.5, 15.5, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.8);
										}
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [15.5, -15.5, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.8);
										}
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [15.5, 15.5, 3]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.8);
										}
										translate(v = [0, 0, -6.0]) {
											cylinder(h = 6, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -7.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [-37.5, 7.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [37.5, -7.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [37.5, 7.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [-7.5, -37.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [-7.5, 37.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [7.5, -37.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [7.5, 37.5, 0]) {
							rotate(a = [180, 0, 0]) {
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
						translate(v = [-45.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, -15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, 0.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, 15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-45.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-45.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-37.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 0.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-37.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, 0.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-30.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-30.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-22.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-22.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-15.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-15.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-15.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-15.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [-7.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [-7.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [0.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [0.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [0.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [0.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [7.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [7.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [15.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [15.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [15.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [15.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [22.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 0.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [22.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, -15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, 0.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, 15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [30.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [30.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [37.5, -45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, -30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, -15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 0.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 15.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 30.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [37.5, 45.0, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, -45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, -37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, -30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, -22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, -15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, -7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, 0.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, 7.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, 15.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, 22.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, 30.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
						translate(v = [45.0, 37.5, -1]) {
							cylinder(h = 5, r = 1.8);
						}
						translate(v = [45.0, 45.0, -1]) {
							cylinder(h = 5, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
