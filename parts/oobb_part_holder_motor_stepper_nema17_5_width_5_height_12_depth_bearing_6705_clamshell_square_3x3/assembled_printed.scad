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
											translate(v = [-32.0, 32.0, 0]) {
												cylinder(h = 6, r = 5);
											}
											translate(v = [32.0, 32.0, 0]) {
												cylinder(h = 6, r = 5);
											}
											translate(v = [-32.0, -32.0, 0]) {
												cylinder(h = 6, r = 5);
											}
											translate(v = [32.0, -32.0, 0]) {
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
										translate(v = [-30.0, -30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-30.0, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
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
										translate(v = [-30.0, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-30.0, 30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-22.5, -30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
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
										translate(v = [-22.5, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-22.5, 30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, -30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-15.0, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-15.0, 30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [-7.5, -30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [-7.5, 30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0.0, -30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [0.0, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0.0, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [0.0, 30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [7.5, -30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, -15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, 15.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [7.5, 30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, -30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [15.0, -22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, -7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, 7.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [15.0, 30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [22.5, -30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, -22.5, -1]) {
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
										translate(v = [22.5, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [22.5, 30.0, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [30.0, -30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
										translate(v = [30.0, -22.5, -1]) {
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
										translate(v = [30.0, 22.5, -1]) {
											cylinder(h = 8, r = 1.8);
										}
										translate(v = [30.0, 30.0, -1]) {
											cylinder(h = 8, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 28.2]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										hull() {
											translate(v = [-17.0, 17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [17.0, 17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [-17.0, -17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [17.0, -17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
										}
									}
									union() {
										translate(v = [-15, -7.5, 3]) {
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
										translate(v = [-15, 7.5, 3]) {
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
										translate(v = [15, -7.5, 3]) {
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
										translate(v = [15, 7.5, 3]) {
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
										translate(v = [-7.5, -15, 3]) {
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
										translate(v = [-7.5, 15, 3]) {
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
										translate(v = [7.5, -15, 3]) {
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
										translate(v = [7.5, 15, 3]) {
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
										translate(v = [5.656854249492381, 5.656854249492381, 3]) {
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
										translate(v = [-5.65685424949238, 5.656854249492381, 3]) {
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
										translate(v = [-5.6568542494923815, -5.65685424949238, 3]) {
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
										translate(v = [5.656854249492379, -5.6568542494923815, 3]) {
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
										translate(v = [5.656854249492381, 5.656854249492381, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-15.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-15.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-7.5, -15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [0.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [0.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [7.5, -15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [15.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [15.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
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
											translate(v = [-32.0, 32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [32.0, 32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [-32.0, -32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [32.0, -32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
										}
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 6.1, r = 15.1);
										}
										translate(v = [0, 0, 1.9999999999999996]) {
											cylinder(h = 3.1, r = 16.15);
										}
										translate(v = [-30.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-22.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-7.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [0.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [7.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [22.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 0.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 0.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 22.1]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										hull() {
											translate(v = [-32.0, 32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [32.0, 32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [-32.0, -32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
											translate(v = [32.0, -32.0, 0]) {
												cylinder(h = 4.1, r = 5);
											}
										}
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 6.1, r = 15.1);
										}
										translate(v = [0, 0, -1]) {
											cylinder(h = 3.1, r = 16.15);
										}
										translate(v = [-30.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 0.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-30.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-30.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-22.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 0.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-22.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-15.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-15.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [-7.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [-7.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [0.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [0.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [7.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [7.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [15.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [15.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [22.5, -30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 0.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 15.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [22.5, 30.0, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, -30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, -22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, -15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, -7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 0.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, 7.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 15.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
										translate(v = [30.0, 22.5, -1]) {
											cylinder(h = 6.1, r = 1.8);
										}
										translate(v = [30.0, 30.0, -1]) {
											cylinder(h = 6.1, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 18]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 2, r = 13.4);
										translate(v = [0, 0, 2.0]) {
											cylinder(h = 4.2, r = 12.425);
										}
										translate(v = [0, 0, 6.2]) {
											cylinder(h = 4, r = 14.5);
										}
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 3.2, r = 11.2);
										}
										translate(v = [0, 0, -1]) {
											cylinder(h = 12.2, r = 3.25);
										}
										translate(v = [5.656854249492381, 5.656854249492381, -1]) {
											cylinder(h = 12.2, r = 1.8);
										}
										translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
											cylinder(h = 12.2, r = 1.8);
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
											cylinder(h = 12.2, r = 1.8);
										}
										translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
											cylinder(h = 12.2, r = 1.8);
										}
									}
								}
							}
						}
						translate(v = [0, 0, 31.2]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										hull() {
											translate(v = [-17.0, 17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [17.0, 17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [-17.0, -17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
											translate(v = [17.0, -17.0, 0]) {
												cylinder(h = 3, r = 5);
											}
										}
									}
									union() {
										translate(v = [-15, -7.5, 0]) {
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
										translate(v = [-15, 7.5, 0]) {
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
										translate(v = [15, -7.5, 0]) {
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
										translate(v = [15, 7.5, 0]) {
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
										translate(v = [-7.5, -15, 0]) {
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
										translate(v = [-7.5, 15, 0]) {
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
										translate(v = [7.5, -15, 0]) {
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
										translate(v = [7.5, 15, 0]) {
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
										translate(v = [5.656854249492381, 5.656854249492381, 0]) {
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
										translate(v = [-5.65685424949238, 5.656854249492381, 0]) {
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
										translate(v = [-5.6568542494923815, -5.65685424949238, 0]) {
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
										translate(v = [5.656854249492379, -5.6568542494923815, 0]) {
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
										translate(v = [5.656854249492381, 5.656854249492381, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-5.65685424949238, 5.656854249492381, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-5.6568542494923815, -5.65685424949238, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [5.656854249492379, -5.6568542494923815, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-15.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-15.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-15.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [-7.5, -15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [-7.5, 15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [0.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [0.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [0.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [7.5, -15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 0.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [7.5, 15.0, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, -15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [15.0, -7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, 0.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
										translate(v = [15.0, 7.5, -1]) {
											cylinder(h = 5, r = 1.8);
										}
										translate(v = [15.0, 15.0, -1]) {
											cylinder(h = 5, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [-30.0, -30.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [-30.0, 30.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [30.0, -30.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
										}
									}
								}
							}
						}
						translate(v = [30.0, 30.0, 6]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										cylinder(h = 12, r = 6);
									}
									union() {
										translate(v = [0, 0, -1]) {
											cylinder(h = 14, r = 3.25);
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
