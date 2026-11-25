$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 10.6]) {
			rotate(a = [180, 0, 0]) {
				difference() {
					union() {
						translate(v = [-15, 0, 7.6]) {
							hull() {
								translate(v = [-32.0, 17.0, 0]) {
									cylinder(h = 3.0, r = 5);
								}
								translate(v = [32.0, 17.0, 0]) {
									cylinder(h = 3.0, r = 5);
								}
								translate(v = [-32.0, -17.0, 0]) {
									cylinder(h = 3.0, r = 5);
								}
								translate(v = [32.0, -17.0, 0]) {
									cylinder(h = 3.0, r = 5);
								}
							}
						}
						translate(v = [-37.75, 0, 0]) {
							hull() {
								translate(v = [-4.75, 10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [4.75, 10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [-4.75, -10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [4.75, -10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
							}
						}
						translate(v = [-44.0, -11.5, 3.4]) {
							cube(size = [12.5, 3, 6.199999999999999]);
						}
						translate(v = [-44.0, 8.5, 3.4]) {
							cube(size = [12.5, 3, 6.199999999999999]);
						}
						translate(v = [15.05, 0, 0]) {
							hull() {
								translate(v = [-2.05, 10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [2.05, 10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [-2.05, -10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
								translate(v = [2.05, -10.0, 0]) {
									cylinder(h = 8.8, r = 1.5);
								}
							}
						}
						translate(v = [11.5, -11.5, 3.4]) {
							cube(size = [7.1, 3, 6.199999999999999]);
						}
						translate(v = [11.5, 8.5, 3.4]) {
							cube(size = [7.1, 3, 6.199999999999999]);
						}
						translate(v = [-37.5, -15, 0.0]) {
							cylinder(h = 9.799999999999999, r = 4.5);
						}
						translate(v = [-37.5, 15, 0.0]) {
							cylinder(h = 9.799999999999999, r = 4.5);
						}
						translate(v = [7.5, -15, 0.0]) {
							cylinder(h = 9.799999999999999, r = 3.8);
						}
						translate(v = [7.5, 15, 0.0]) {
							cylinder(h = 9.799999999999999, r = 3.8);
						}
					}
					union() {
						translate(v = [0, 0, 8.6]) {
							cylinder(h = 8, r = 12.7);
						}
						translate(v = [-37.5, -15, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-37.5, 15, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [7.5, -15, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [7.5, 15, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-34.5, -5.2, -1]) {
							cylinder(h = 12.6, r = 1.8);
						}
						translate(v = [-34.5, 5.2, -1]) {
							cylinder(h = 12.6, r = 1.8);
						}
						translate(v = [14.5, -5.2, -1]) {
							cylinder(h = 12.6, r = 1.8);
						}
						translate(v = [14.5, 5.2, -1]) {
							cylinder(h = 12.6, r = 1.8);
						}
						translate(v = [0, 0, 6.5]) {
							cylinder(h = 12, r = 10.3);
						}
						translate(v = [-32.0, -10.9, -0.2]) {
							cube(size = [43.5, 21.8, 9.799999999999999]);
						}
						translate(v = [-45.0, -15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-45.0, 15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-37.5, -15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-37.5, 15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-30.0, -15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-30.0, 15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-22.5, -15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-22.5, -7.5, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-22.5, 15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-15.0, -15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-15.0, -7.5, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-15.0, 7.5, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-15.0, 15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-7.5, -15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [7.5, -15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [7.5, 15.0, -1]) {
							cylinder(h = 17, r = 1.8);
						}
						translate(v = [15.0, -15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [15.0, 15.0, -1]) {
							cylinder(h = 17, r = 3.25);
						}
						translate(v = [-45.0, -15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-45.0, -7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-45.0, 7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-45.0, 15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-37.5, 0.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-30.0, -15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-30.0, 15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-22.5, -15.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-22.5, -7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-22.5, 0.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-22.5, 7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-22.5, 15.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-15.0, -15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-15.0, -7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-15.0, 7.5, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-15.0, 15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [-7.5, -15.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [-7.5, 15.0, 8.9]) {
							cylinder(h = 7, r = 1.8);
						}
						translate(v = [15.0, -15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
						translate(v = [15.0, 15.0, 9.5]) {
							cylinder(h = 7, r = 3.25);
						}
					}
				}
			}
		}
	}
	union();
}
