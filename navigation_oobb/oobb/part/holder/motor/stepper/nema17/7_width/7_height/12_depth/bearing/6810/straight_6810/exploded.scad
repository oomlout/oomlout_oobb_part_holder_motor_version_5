$fn = 50;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
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
						translate(v = [0, 0, 61.6]) {
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
						translate(v = [0, 0, 18]) {
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
						translate(v = [0, 0, 39]) {
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
						translate(v = [0, 0, 53]) {
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
						translate(v = [0, 0, 103]) {
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
						translate(v = [0, 0, -15]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-21.15, -21.15, -38]) {
											cube(size = [42.3, 42.3, 38]);
										}
										cylinder(h = 2, r = 11.0);
										cylinder(h = 24, r = 2.5);
									}
									union() {
										translate(v = [-15.5, -15.5, -4.5]) {
											cylinder(h = 5, r = 1.5);
										}
										translate(v = [-15.5, 15.5, -4.5]) {
											cylinder(h = 5, r = 1.5);
										}
										translate(v = [15.5, -15.5, -4.5]) {
											cylinder(h = 5, r = 1.5);
										}
										translate(v = [15.5, 15.5, -4.5]) {
											cylinder(h = 5, r = 1.5);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 15]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 17.0]) {
											cylinder(h = 10, r = 5.0);
										}
										translate(v = [0, 0, 27.0]) {
											cylinder(h = 2, r = 11.0);
										}
									}
									union() {
										translate(v = [0, 0, 16]) {
											cylinder(h = 14, r = 2.5);
										}
										translate(v = [5.656854249492381, 5.656854249492381, 26]) {
											cylinder(h = 4, r = 1.5);
										}
										translate(v = [-5.65685424949238, 5.656854249492381, 26]) {
											cylinder(h = 4, r = 1.5);
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, 26]) {
											cylinder(h = 4, r = 1.5);
										}
										translate(v = [5.656854249492379, -5.6568542494923815, 26]) {
											cylinder(h = 4, r = 1.5);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 22]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, 5.5]) {
											cylinder(h = 7, r = 32.5);
										}
									}
									union() {
										translate(v = [0, 0, 4.5]) {
											cylinder(h = 9, r = 25.0);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [-37.5, -7.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-37.5, 7.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [37.5, -7.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [37.5, 7.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, -37.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-7.5, 37.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, -37.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [7.5, 37.5, 6]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
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
														linear_extrude(height = 2.4) {
															polygon(points = [[3.1754264805429417, 0.0], [1.5877132402714713, 2.75], [-1.5877132402714702, 2.7500000000000004], [-3.1754264805429417, 3.888775875324659e-16], [-1.5877132402714722, -2.7499999999999996], [1.5877132402714687, -2.7500000000000013]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, -30, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, -15, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, 0, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, 15, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, 30, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-45, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-30, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-30, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-15, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-15, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [15, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [15, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [30, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [30, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, -45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, -30, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, -15, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, 0, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, 15, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, 30, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [45, 45, 6.25]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														linear_extrude(height = 5) {
															polygon(points = [[5.773502691896258, 0.0], [2.8867513459481295, 5.0], [-2.8867513459481278, 5.000000000000001], [-5.773502691896258, 7.07050159149938e-16], [-2.8867513459481318, -4.999999999999999], [2.886751345948125, -5.000000000000003]]);
														}
													}
													union();
												}
											}
										}
										translate(v = [-37.5, -7.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, -7.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [-37.5, 7.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, 7.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [37.5, -7.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, -7.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [37.5, 7.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, 7.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [-7.5, -37.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-7.5, -37.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [-7.5, 37.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-7.5, 37.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [7.5, -37.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [7.5, -37.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [7.5, 37.5, 0.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [7.5, 37.5, 0]) {
											cylinder(h = 1.5, r1 = 3, r2 = 1.5);
										}
										translate(v = [-37.5, -37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, -37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [-37.5, -22.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, -22.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [-37.5, 22.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, 22.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [-37.5, 37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-37.5, 37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [37.5, -37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, -37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [37.5, -22.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, -22.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [37.5, 22.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, 22.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [37.5, 37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [37.5, 37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [-22.5, -37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-22.5, -37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [-22.5, 37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [-22.5, 37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [22.5, -37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [22.5, -37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
										translate(v = [22.5, 37.5, 5.0]) {
											cylinder(h = 10, r = 1.5);
										}
										translate(v = [22.5, 37.5, 13.5]) {
											cylinder(h = 1.5, r1 = 1.5, r2 = 3);
										}
									}
									union();
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
