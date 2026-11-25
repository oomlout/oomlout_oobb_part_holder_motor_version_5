$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "sg90 D2.4", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.2);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
		translate(v = [23, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "mg90s D2.4", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.2);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
		translate(v = [46, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "fs90 D2.4", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.2);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
		translate(v = [0, 25, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "fs90r D2.4", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.2);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
		translate(v = [23, 25, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "hs55 D2.1", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.05);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
		translate(v = [46, 25, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [-9.0, -10.0, 0]) {
							cube(size = [18, 20, 5]);
						}
						translate(v = [0, -7, 5]) {
							linear_extrude(height = 0.5) {
								text(font = "Liberation Sans", halign = "center", size = 1.4, text = "hs65hb D3.0", valign = "center");
							}
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = 7, r = 1.5);
						}
						translate(v = [0, 0, 1.2]) {
							cylinder(h = 4, r = 2.7);
						}
					}
				}
			}
		}
	}
	union();
}
