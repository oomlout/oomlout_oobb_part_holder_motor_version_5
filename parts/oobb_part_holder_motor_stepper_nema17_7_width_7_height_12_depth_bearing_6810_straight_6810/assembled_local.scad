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
		translate(v = [0, 0, 6.600000000000001]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 6.0]) {
											cylinder(h = 16.41, r = 29.9);
										}
									}
									union() {
										translate(v = [0, 0, 5]) {
											cylinder(h = 24.4, r = 25.075);
										}
									}
								}
							}
						}
						cylinder(h = 22.41, r = 24.925);
						translate(v = [0, 0, 22.4]) {
							hull() {
								translate(v = [-32.0, 32.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [32.0, 32.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [-32.0, -32.0, 0]) {
									cylinder(h = 4, r = 5);
								}
								translate(v = [32.0, -32.0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
					union() {
						translate(v = [-30, -7.5, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, 7.5, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, -7.5, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, 7.5, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, -30, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, 30, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -30, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 30, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, -15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 0, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, -15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, -15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 0, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 15, 26.4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, -22.5, -1]) {
							cylinder(h = 23.4, r = 4.5);
						}
						translate(v = [-22.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 22.5, -1]) {
							cylinder(h = 23.4, r = 4.5);
						}
						translate(v = [-22.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, -22.5, -1]) {
							cylinder(h = 23.4, r = 4.5);
						}
						translate(v = [22.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 22.5, -1]) {
							cylinder(h = 23.4, r = 4.5);
						}
						translate(v = [22.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, -30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, -15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, -7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 0.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, 7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-22.5, -30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, -7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-15.0, -30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, -15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 0.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-7.5, -30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, 30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [0.0, -30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, -15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 0.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [7.5, -30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, 30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [15.0, -30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, -15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 0.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [22.5, -30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, -7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 30.0, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, -30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, -22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, -15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, -7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 0.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, 7.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 15.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, 22.5, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 30.0, 21.4]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 23.4, r = 19.3);
						}
						translate(v = [0.0, -3.0, 13.399999999999999]) {
							cube(size = [30, 6, 4]);
						}
						translate(v = [5.656854249492381, 5.656854249492381, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-5.65685424949238, 5.656854249492381, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-5.6568542494923815, -5.65685424949238, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [5.656854249492379, -5.6568542494923815, 21.4]) {
							cylinder(h = 6, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 3]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-47.0, 47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [47.0, 47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [-47.0, -47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [47.0, -47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
						}
					}
					union() {
						translate(v = [-45, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, -30, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, -15, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 15, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 30, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -30, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -15, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 15, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 30, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 45, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, -7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, 7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -22.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 22.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, -22.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, 22.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [37.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, -37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, 37.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 8, r = 31.4);
						}
						translate(v = [0, 0, 2.4]) {
							cylinder(h = 4.6, r = 32.65);
						}
						translate(v = [-45.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-37.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-22.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, -30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-15.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-7.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [0.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [7.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [15.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [22.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, -30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [37.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [45.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 9]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-47.0, 47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [47.0, 47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [-47.0, -47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
							translate(v = [47.0, -47.0, 0]) {
								cylinder(h = 6, r = 5);
							}
						}
					}
					union() {
						translate(v = [-45, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, -30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, -15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-45, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, -15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [45, 45, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-37.5, -37.5, 6]) {
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
						translate(v = [-37.5, -22.5, 6]) {
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
						translate(v = [-37.5, 22.5, 6]) {
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
						translate(v = [-37.5, 37.5, 6]) {
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
						translate(v = [37.5, -37.5, 6]) {
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
						translate(v = [37.5, -22.5, 6]) {
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
						translate(v = [37.5, 22.5, 6]) {
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
						translate(v = [37.5, 37.5, 6]) {
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
						translate(v = [-22.5, -37.5, 6]) {
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
						translate(v = [-22.5, 37.5, 6]) {
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
						translate(v = [22.5, -37.5, 6]) {
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
						translate(v = [22.5, 37.5, 6]) {
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
							cylinder(h = 8, r = 31.4);
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 4.6, r = 32.65);
						}
						translate(v = [-45.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-45.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-37.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-37.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-30.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-30.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-22.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, -30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-15.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-7.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [0.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [7.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [15.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [22.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, -30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 30.0, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [30.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [30.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [37.5, -37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, -22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, -7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 7.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 22.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [37.5, 37.5, -1]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [45.0, -45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, -30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, -15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 0.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 15.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 30.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [45.0, 45.0, -1]) {
							cylinder(h = 8, r = 3.25);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 23]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						cylinder(h = 4, r = 19);
					}
					union() {
						translate(v = [5.656854249492381, 5.656854249492381, 2.5]) {
							rotate(a = [0, 0, 75]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 45]) {
								difference() {
									union() {
										translate(v = [4.5, -1.25, -1]) {
											cube(size = [1, 2.5, 6]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.65685424949238, 5.656854249492381, 2.5]) {
							rotate(a = [0, 0, 165]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 135]) {
								difference() {
									union() {
										translate(v = [4.5, -1.25, -1]) {
											cube(size = [1, 2.5, 6]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.6568542494923815, -5.65685424949238, 2.5]) {
							rotate(a = [0, 0, 255]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 225]) {
								difference() {
									union() {
										translate(v = [4.5, -1.25, -1]) {
											cube(size = [1, 2.5, 6]);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.656854249492379, -5.6568542494923815, 2.5]) {
							rotate(a = [0, 0, 345]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 315]) {
								difference() {
									union() {
										translate(v = [4.5, -1.25, -1]) {
											cube(size = [1, 2.5, 6]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -1]) {
							cylinder(h = 6, r = 4.95);
						}
						translate(v = [5.656854249492381, 5.656854249492381, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
							cylinder(h = 6, r = 1.8);
						}
					}
				}
			}
		}
		translate(v = [0, 0, 33]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						hull() {
							translate(v = [-32.0, 32.0, 0]) {
								cylinder(h = 4, r = 5);
							}
							translate(v = [32.0, 32.0, 0]) {
								cylinder(h = 4, r = 5);
							}
							translate(v = [-32.0, -32.0, 0]) {
								cylinder(h = 4, r = 5);
							}
							translate(v = [32.0, -32.0, 0]) {
								cylinder(h = 4, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30, -7.5, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30, 7.5, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, -7.5, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [30, 7.5, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, -30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, 30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, -30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [7.5, 30, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [0, 0, -1.5]) {
											linear_extrude(height = 3) {
												polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
											}
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, -1.8]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, -2.1]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										translate(v = [-1.75, -3.25, 1.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										translate(v = [-1.75, -1.75, 1.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, -15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, -15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, -15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [0, 0, -2.75]) {
											linear_extrude(height = 5.5) {
												polygon(points = [[5.914249999999999, 0.0], [2.957125, 5.1218907443321156], [-2.9571249999999982, 5.1218907443321156], [-5.914249999999999, 7.242867331857232e-16], [-2.9571250000000022, -5.121890744332115], [2.9571249999999956, -5.121890744332118]]);
											}
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, -3.05]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, -3.3499999999999996]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
										translate(v = [-2.875, -5.0, 2.75]) {
											cube(size = [5.75, 10, 0.3]);
										}
										translate(v = [-2.875, -2.875, 3.05]) {
											cube(size = [5.75, 5.75, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, -22.5, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.8);
										}
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-22.5, 22.5, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.8);
										}
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, -22.5, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.8);
										}
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [22.5, 22.5, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.8);
										}
										translate(v = [0, 0, -12.0]) {
											cylinder(h = 12, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.656854249492381, 5.656854249492381, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.8);
										}
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.65685424949238, 5.656854249492381, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.8);
										}
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-5.6568542494923815, -5.65685424949238, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.8);
										}
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [5.656854249492379, -5.6568542494923815, 4]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
										translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										cylinder(h = 250, r = 3.6);
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.8);
										}
										translate(v = [0, 0, -15.0]) {
											cylinder(h = 15, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-30.0, -30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, -7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 0.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, 7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-30.0, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-30.0, 30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-22.5, -30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, -7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-22.5, 30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-15.0, -30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, -15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 0.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-15.0, 30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [-7.5, -30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [-7.5, 30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [0.0, -30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, -15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 0.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [0.0, 30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [7.5, -30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [7.5, 30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [15.0, -30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, -15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 0.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [15.0, 30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [22.5, -30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, -7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [22.5, 30.0, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, -30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, -22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, -15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, -7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 0.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, 7.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 15.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
						translate(v = [30.0, 22.5, -1]) {
							cylinder(h = 6, r = 1.8);
						}
						translate(v = [30.0, 30.0, -1]) {
							cylinder(h = 6, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
