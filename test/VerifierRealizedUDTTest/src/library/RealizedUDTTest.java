package library;

import lib.LOG;

import org.xtuml.bp.core.ComponentInstance_c;

public class RealizedUDTTest implements IUDTTestInterfaceToProvider {
	IUDTTestInterfaceToProvider testPort = null;

	public RealizedUDTTest(IUDTTestInterfaceFromProvider testPort1,
			IUDTTestInterfaceToProvider testPort2) {
		this.testPort = testPort2;
	}

	@Override
	public RealizedTestUDTNoAccessors returnNestedRealizedUDTNoAccessors(
			ComponentInstance_c sender) {
		LOG
				.LogInfo("RealizedUDTTest.returnNestedRealizedUDTNoAccessors executed.");
		RealizedTestUDTNoAccessors result = new RealizedTestUDTNoAccessors();
		result.value = 800.0f;
		return result;
	}

	@Override
	public RealizedTestUDTWithAccessors returnNestedRealizedUDTWithAccessors(
			ComponentInstance_c sender) {
		LOG
				.LogInfo("RealizedUDTTest.returnNestedRealizedUDTWithAccessors executed.");
		RealizedTestUDTWithAccessors result = new RealizedTestUDTWithAccessors();
		result.setValue(true);
		return result;
	}

	@Override
	public int returnNestedTestUDT(ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnNestedTestUDT executed.");
		return 600;
	}

	@Override
	public RealizedTestUDTNoAccessors returnRealizedUDTNoAccessors(
			ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnRealizedUDTNoAccessors executed.");
		RealizedTestUDTNoAccessors result = new RealizedTestUDTNoAccessors();
		result.value = 600;
		return result;
	}

	@Override
	public RealizedTestUDTWithAccessors returnRealizedUDTWithAccessors(
			ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnRealizedUDTWithAccessors executed.");
		RealizedTestUDTWithAccessors result = new RealizedTestUDTWithAccessors();
		result.setValue(true);
		return result;
	}

	@Override
	public int returnTestUDT(ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnTestUDT executed.");
		return 500;
	}

	@Override
	public void testNestedRealizedUDTNoAccessors(ComponentInstance_c sender,
			RealizedTestUDTNoAccessors testValue) {
		if (testValue.value == 700) {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTNoAccessors PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testNestedRealizedUDTNoAccessors unexpected testValue: "
							+ testValue);
		}
	}

	@Override
	public void testNestedRealizedUDTNoAccessorsSig(ComponentInstance_c sender,
			RealizedTestUDTNoAccessors testValue) {
		if (testValue.value == 700.0) {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTNoAccessorsSig PASSED");
		} else {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTNoAccessorsSig unexpected testValue"
							+ testValue.value);
		}
	}

	@Override
	public void testNestedRealizedUDTWithAccessors(ComponentInstance_c sender,
			RealizedTestUDTWithAccessors testValue) {
		if (testValue.getValue() == false) {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTWithAccessors PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testNestedRealizedUDTWithAccessors unexpected testValue: true");
		}
	}

	@Override
	public void testNestedRealizedUDTWithAccessorsSig(
			ComponentInstance_c sender, RealizedTestUDTWithAccessors testValue) {
		if (testValue.getValue() == false) {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTWithAccessorsSig PASSED");
		} else {
			LOG
					.LogInfo("RealizedUDTTest.testNestedRealizedUDTWithAccessorsSig unexpected testValue: true");
		}
	}

	@Override
	public void testNestedUDT(ComponentInstance_c sender, int testValue) {
		if (testValue == 500) {
			LOG.LogInfo("RealizedUDTTest.testUDT PASSED");
		} else {
			LOG.LogFailure("RealizedUDTTest.testUDT unexpected testValue: "
					+ testValue);
		}
	}

	@Override
	public void testNestedUDTSig(ComponentInstance_c sender, int testValue) {
		if (testValue == 500) {
			LOG.LogInfo("RealizedUDTTest.testNestedUDTSig PASSED");
		} else {
			LOG.LogInfo("RealizedUDTTest.testNestedUDTSig unexpected testValue"
					+ testValue);
		}
	}

	@Override
	public void testRealizedUDTNoAccessors(ComponentInstance_c sender,
			RealizedTestUDTNoAccessors testValue) {
		if (testValue.value == 600.0) {
			LOG.LogInfo("RealizedUDTTest.testRealizedUDTNoAccessors PASSED");
		} else {
			LOG.LogFailure("RealizedUDTTest.testUDT unexpected testValue: "
					+ testValue.value);
		}
	}

	@Override
	public void testRealizedUDTNoAccessorsSig(ComponentInstance_c sender,
			RealizedTestUDTNoAccessors testValue) {
		if (testValue.value == 600.0) {
			LOG.LogInfo("RealizedUDTTest.testRealizedUDTNoAccessorsSig PASSED");
		} else {
			LOG
					.LogInfo("RealizedUDTTest.testRealizedUDTNoAccessorsSig unexpected testValue"
							+ testValue.value);
		}
	}

	@Override
	public void testRealizedUDTWithAccessors(ComponentInstance_c sender,
			RealizedTestUDTWithAccessors testValue) {
		if (testValue.getValue() == false) {
			LOG.LogInfo("RealizedUDTTest.testRealizedUDTWithAccessors PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testRealizedUDTWithAccessors unexpected testValue: true");
		}
	}

	@Override
	public void testRealizedUDTWithAccessorsSig(ComponentInstance_c sender,
			RealizedTestUDTWithAccessors testValue) {
		if (testValue.getValue() == false) {
			LOG
					.LogInfo("RealizedUDTTest.testRealizedUDTWithAccessorsSig PASSED");
		} else {
			LOG
					.LogInfo("RealizedUDTTest.testRealizedUDTWithAccessorsSig unexpected testValue: true");
		}
	}

	@Override
	public void testUDT(ComponentInstance_c sender, int testValue) {
		if (testValue == 400) {
			LOG.LogInfo("RealizedUDTTest.testUDT PASSED");
		} else {
			LOG.LogFailure("RealizedUDTTest.testUDT unexpected testValue: "
					+ testValue);
		}
	}

	@Override
	public void testUDTSig(ComponentInstance_c sender, int testValue) {
		if (testValue == 400) {
			LOG.LogInfo("RealizedUDTTest.testUDTSig PASSED");
		} else {
			LOG.LogInfo("RealizedUDTTest.testUDTSig unexpected testValue"
					+ testValue);
		}
	}

	@Override
	public TestEnumeration returnNestedEnumeration(ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnNestedEnumeration executed.");
		return TestEnumeration.Red;
	}

	@Override
	public RealizedUDTTestSDT returnNestedSDTWithRealizedUDTs(
			ComponentInstance_c sender) {
		LOG
				.LogInfo("RealizedUDTTest.returnNestedSDTWithRealizedUDTs executed.");
		RealizedUDTTestSDT result = getNewSDT(7);
		return result;
	}

	private RealizedUDTTestSDT getNewSDT(int startValue) {
		RealizedUDTTestSDT result = new RealizedUDTTestSDT();
		result.testUDT = startValue;
		result.testNestedUDT = startValue + 1;
		result.testRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		result.testRealizedUDTNoAccessors.value = startValue + 2;
		result.testNestedRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		result.testNestedRealizedUDTNoAccessors.value = startValue + 3;
		result.testRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		result.testRealizedUDTWithAccessors.setValue(true);
		result.testNestedRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		result.testNestedRealizedUDTWithAccessors.setValue(false);
		result.testEnumeration = TestEnumeration.Green;
		result.testNestedEnumeration = TestEnumeration.Blue;
		return result;
	}

	@Override
	public RealizedUDTTestSDT returnSDTWithRealizedUDTs(
			ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnSDTWithRealizedUDTs executed.");
		return getNewSDT(11);
	}

	@Override
	public TestEnumeration returnTestEnumeration(ComponentInstance_c sender) {
		LOG.LogInfo("RealizedUDTTest.returnTestEnumeration executed.");
		return TestEnumeration.Yellow;
	}

	@Override
	public void testEnumeration(ComponentInstance_c sender,
			TestEnumeration testValue) {
		if (testValue == TestEnumeration.Cyan) {
			LOG.LogInfo("RealizedUDTTest.testEnumeration PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testEnumeration unexpected testValue: "
							+ testValue.name());
		}
	}

	@Override
	public void testEnumerationSig(ComponentInstance_c sender,
			TestEnumeration testValue) {
		if (testValue == TestEnumeration.Cyan) {
			LOG.LogInfo("RealizedUDTTest.testEnumerationSig PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testEnumerationSig unexpected testValue: "
							+ testValue.name());
		}
	}

	@Override
	public void testNestedEnumeration(ComponentInstance_c sender,
			TestEnumeration testValue) {
		if (testValue == TestEnumeration.Red) {
			LOG.LogInfo("RealizedUDTTest.testNestedEnumeration PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testNestedEnumeration unexpected testValue: "
							+ testValue.name());
		}
	}

	@Override
	public void testNestedEnumerationSig(ComponentInstance_c sender,
			TestEnumeration testValue) {
		if (testValue == TestEnumeration.Red) {
			LOG.LogInfo("RealizedUDTTest.testEnumeration PASSED");
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testEnumeration unexpected testValue: "
							+ testValue.name());
		}
	}

	@Override
	public void testNestedSDTWithRealizedUDTs(ComponentInstance_c sender,
			RealizedUDTTestSDT testValue) {
		if (testValue.testUDT == 1300) {
			if (testValue.testNestedUDT == 1400) {
				if (testValue.testRealizedUDTNoAccessors.value == 1500.0) {
					if (testValue.testRealizedUDTWithAccessors.getValue() == true) {
						if (testValue.testEnumeration == TestEnumeration.Green) {
							if (testValue.testNestedEnumeration == TestEnumeration.Blue) {
								LOG
										.LogSuccess("RealizedUDTTest.testNestedSDTWithRealizedUDTs PASSED");
							} else {
								LOG
										.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testNestedEnumeration: "
												+ testValue.testNestedEnumeration
														.name());
							}
						} else {
							LOG
									.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testEnumeration: "
											+ testValue.testEnumeration.name());
						}
					} else {
						LOG
								.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testRealizedUDTWithAccessors: "
										+ testValue.testRealizedUDTWithAccessors
												.getValue());
					}
				} else {
					LOG
							.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testRealizedUDTNoAccessors: "
									+ testValue.testRealizedUDTNoAccessors);
				}
			} else {
				LOG
						.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testNestedUDT: "
								+ testValue.testNestedUDT);
			}
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTs Unexpected value in testUDT: "
							+ testValue.testUDT);
		}
	}

	@Override
	public void testNestedSDTWithRealizedUDTsSig(ComponentInstance_c sender,
			RealizedUDTTestSDT testValue) {
		if (testValue.testUDT == 1300) {
			if (testValue.testNestedUDT == 1400) {
				if (testValue.testRealizedUDTNoAccessors.value == 1500.0) {
					if (testValue.testRealizedUDTWithAccessors.getValue() == true) {
						if (testValue.testEnumeration == TestEnumeration.Green) {
							if (testValue.testNestedEnumeration == TestEnumeration.Blue) {
								LOG
										.LogSuccess("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig PASSED");
							} else {
								LOG
										.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testNestedEnumeration: "
												+ testValue.testNestedEnumeration
														.name());
							}
						} else {
							LOG
									.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testEnumeration: "
											+ testValue.testEnumeration.name());
						}
					} else {
						LOG
								.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testRealizedUDTWithAccessors: "
										+ testValue.testRealizedUDTWithAccessors
												.getValue());
					}
				} else {
					LOG
							.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testRealizedUDTNoAccessors: "
									+ testValue.testRealizedUDTNoAccessors);
				}
			} else {
				LOG
						.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testNestedUDT: "
								+ testValue.testNestedUDT);
			}
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testNestedSDTWithRealizedUDTsSig Unexpected value in testUDT: "
							+ testValue.testUDT);
		}
	}

	@Override
	public void testSDTWithRealizedUDTs(ComponentInstance_c sender,
			RealizedUDTTestSDT testValue) {
		if (testValue.testUDT == 100) {
			if (testValue.testNestedUDT == 200) {
				if (testValue.testRealizedUDTNoAccessors.value == 300.0) {
					if (testValue.testRealizedUDTWithAccessors.getValue() == false) {
						if (testValue.testEnumeration == TestEnumeration.Blue) {
							if (testValue.testNestedEnumeration == TestEnumeration.Yellow) {
								LOG
										.LogSuccess("RealizedUDTTest.testSDTWithRealizedUDTs PASSED");
							} else {
								LOG
										.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testNestedEnumeration: "
												+ testValue.testNestedEnumeration
														.name());
							}
						} else {
							LOG
									.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testEnumeration: "
											+ testValue.testEnumeration.name());
						}
					} else {
						LOG
								.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testRealizedUDTWithAccessors: "
										+ testValue.testRealizedUDTWithAccessors
												.getValue());
					}
				} else {
					LOG
							.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testRealizedUDTNoAccessors: "
									+ testValue.testRealizedUDTNoAccessors);
				}
			} else {
				LOG
						.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testNestedUDT: "
								+ testValue.testNestedUDT);
			}
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTs Unexpected value in testUDT: "
							+ testValue.testUDT);
		}
	}

	@Override
	public void testSDTWithRealizedUDTsSig(ComponentInstance_c sender,
			RealizedUDTTestSDT testValue) {
		if (testValue.testUDT == 50) {
			if (testValue.testNestedUDT == 70) {
				if (testValue.testRealizedUDTNoAccessors.value == 80.0) {
					if (testValue.testRealizedUDTWithAccessors.getValue() == false) {
						if (testValue.testEnumeration == TestEnumeration.Blue) {
							if (testValue.testNestedEnumeration == TestEnumeration.Red) {
								LOG
										.LogSuccess("RealizedUDTTest.testSDTWithRealizedUDTsSig PASSED");
							} else {
								LOG
										.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testNestedEnumeration: "
												+ testValue.testNestedEnumeration
														.name());
							}
						} else {
							LOG
									.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testEnumeration: "
											+ testValue.testEnumeration.name());
						}
					} else {
						LOG
								.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testRealizedUDTWithAccessors: "
										+ testValue.testRealizedUDTWithAccessors
												.getValue());
					}
				} else {
					LOG
							.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testRealizedUDTNoAccessors: "
									+ testValue.testRealizedUDTNoAccessors);
				}
			} else {
				LOG
						.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testNestedUDT: "
								+ testValue.testNestedUDT);
			}
		} else {
			LOG
					.LogFailure("RealizedUDTTest.testSDTWithRealizedUDTsSig Unexpected value in testUDT: "
							+ testValue.testUDT);
		}
	}

	public void executeTest(ComponentInstance_c sender) {
		LOG.LogInfo("Beginning incoming calls test execution.");
		RealizedUDTTestSDT testValue = new RealizedUDTTestSDT();
		testValue.testUDT = 100;
		testValue.testNestedUDT = 200;
		testValue.testRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		testValue.testRealizedUDTNoAccessors.value = 250; // Note: this is a
															// real
		testValue.testNestedRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		testValue.testNestedRealizedUDTNoAccessors.value = 300; // Note: this is
																// a real
		testValue.testRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		testValue.testRealizedUDTWithAccessors.setValue(false);
		testValue.testNestedRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		testValue.testNestedRealizedUDTWithAccessors.setValue(true);
		testValue.testEnumeration = TestEnumeration.Blue;
		testValue.testNestedEnumeration = TestEnumeration.Yellow;

		testPort.testUDT(null, 400);

		int udtResult = testPort.returnTestUDT(null);
		if (udtResult == 50)
			LOG.LogSuccess("returnTestUDT: PASSED");
		else
			LOG.LogFailure("returnTestUDT: Unexpected Value: " + udtResult);

		testPort.testNestedUDT(null, 500);

		udtResult = testPort.returnNestedTestUDT(null);
		if (udtResult == 30)
			LOG.LogSuccess("returnNestedTestUDT: PASSED");
		else
			LOG.LogFailure("returnNestedTestUDT: Unexpected Value: "
					+ udtResult);

		RealizedTestUDTNoAccessors tUDT = new RealizedTestUDTNoAccessors();
		tUDT.value = 600;
		testPort.testRealizedUDTNoAccessors(null, tUDT);

		RealizedTestUDTNoAccessors udtRealResult = testPort
				.returnRealizedUDTNoAccessors(null);
		if (udtRealResult.value == 40)
			LOG.LogSuccess("returnRealizedUDTNoAccessors: PASSED");
		else
			LOG.LogReal("returnRealizedUDTNoAccessors: Unexpected Value: ",
					udtRealResult.value);

		tUDT.value = 700;
		testPort.testNestedRealizedUDTNoAccessors(null, tUDT);

		udtRealResult = testPort.returnNestedRealizedUDTNoAccessors(null);
		if (udtRealResult.value == 20)
			LOG.LogSuccess("returnNestedRealizedUDTNoAccessors: PASSED");
		else
			LOG.LogReal(
					"returnNestedRealizedUDTNoAccessors: Unexpected Value: ",
					udtRealResult.value);

		RealizedTestUDTWithAccessors tUDTWA = new RealizedTestUDTWithAccessors();
		tUDTWA.setValue(false);
		testPort.testRealizedUDTWithAccessors(null, tUDTWA);

		RealizedTestUDTWithAccessors udtBooleanResult = testPort
				.returnRealizedUDTWithAccessors(null);
		if (udtBooleanResult.getValue() == true)
			LOG.LogSuccess("returnRealizedUDTWithAccessors: PASSED");
		else
			LOG
					.LogFailure("returnRealizedUDTWithAccessors: Unexpected Value: false");

		tUDTWA.setValue(false);
		testPort.testNestedRealizedUDTWithAccessors(null, tUDTWA);

		udtBooleanResult = testPort.returnNestedRealizedUDTWithAccessors(null);
		if (udtBooleanResult.getValue() == false)
			LOG.LogSuccess("returnNestedRealizedUDTWithAccessors: PASSED");
		else
			LOG
					.LogFailure("returnNestedRealizedUDTWithAccessors: Unexpected Value: false");

		testPort.testSDTWithRealizedUDTs(null, testValue);

		RealizedUDTTestSDT sdtResult = testPort.returnSDTWithRealizedUDTs(null);
		if (sdtResult.testUDT == 50)
			if (sdtResult.testNestedUDT == 70)
				if (sdtResult.testRealizedUDTNoAccessors.value == 80)
					if (sdtResult.testNestedRealizedUDTNoAccessors.value == 90)
						if (sdtResult.testRealizedUDTWithAccessors.getValue() == false)
							if (sdtResult.testNestedRealizedUDTWithAccessors
									.getValue() == true)
								if (sdtResult.testEnumeration == TestEnumeration.Blue)
									if (sdtResult.testNestedEnumeration == TestEnumeration.Red)
										LOG
												.LogSuccess("returnSDTWithRealizedUDTs: PASSED");
									else
										LOG
												.LogFailure("returnSDTWithRealizedUDTs: "
														+ "Unexpected testNestedEnumeration Value: "
														+ sdtResult.testNestedEnumeration
																.name());
								else
									LOG
											.LogFailure("returnSDTWithRealizedUDTs: "
													+ "Unexpected testEnumeration Value: "
													+ sdtResult.testEnumeration
															.name());
							else
								LOG
										.LogFailure("returnSDTWithRealizedUDTs: Unexpected testNestedRealizedUDTWithAccessors Value: false");
						else
							LOG
									.LogFailure("returnSDTWithRealizedUDTs: Unexpected testRealizedUDTWithAccessors Value: true");
					else
						LOG
								.LogReal(
										"returnSDTWithRealizedUDTs: Unexpected testNestedRealizedUDTNoAccessors Value: ",
										sdtResult.testNestedRealizedUDTNoAccessors.value);
				else
					LOG
							.LogReal(
									"returnSDTWithRealizedUDTs: Unexpected testRealizedUDTNoAccessors Value: ",
									sdtResult.testRealizedUDTNoAccessors.value);
			else
				LOG
						.LogFailure("returnSDTWithRealizedUDTs: Unexpected testNestedUDT Value: "
								+ sdtResult.testNestedUDT);
		else
			LOG
					.LogFailure("returnSDTWithRealizedUDTs: Unexpected testUDT Value: "
							+ sdtResult.testUDT);

		testValue.testUDT = 1300;
		testValue.testNestedUDT = 1400;
		testValue.testRealizedUDTNoAccessors.value = 1500;
		testValue.testNestedRealizedUDTNoAccessors.value = 1600;
		testValue.testRealizedUDTWithAccessors.setValue(true);
		testValue.testNestedRealizedUDTWithAccessors.setValue(false);
		testValue.testEnumeration = TestEnumeration.Green;
		testValue.testNestedEnumeration = TestEnumeration.Blue;

		testPort.testNestedSDTWithRealizedUDTs(null, testValue);

		sdtResult = testPort.returnNestedSDTWithRealizedUDTs(null);
		if (sdtResult.testUDT == 110)
			if (sdtResult.testNestedUDT == 120)
				if (sdtResult.testRealizedUDTNoAccessors.value == 130)
					if (sdtResult.testNestedRealizedUDTNoAccessors.value == 140)
						if (sdtResult.testRealizedUDTWithAccessors.getValue() == true)
							if (sdtResult.testNestedRealizedUDTWithAccessors
									.getValue() == false)
								if (sdtResult.testEnumeration == TestEnumeration.Green)
									if (sdtResult.testNestedEnumeration == TestEnumeration.Blue)
										LOG
												.LogSuccess("returnNestedSDTWithRealizedUDTs: PASSED");
									else
										LOG
												.LogFailure("returnNestedSDTWithRealizedUDTs: "
														+ "Unexpected testNestedEnumeration Value: "
														+ sdtResult.testNestedEnumeration
																.name());
								else
									LOG
											.LogFailure("returnNestedSDTWithRealizedUDTs: "
													+ "Unexpected testEnumeration Value: "
													+ sdtResult.testEnumeration
															.name());
							else
								LOG
										.LogFailure("returnNestedSDTWithRealizedUDTs: Unexpected testNestedRealizedUDTWithAccessors Value: false");
						else
							LOG
									.LogFailure("returnNestedSDTWithRealizedUDTs: Unexpected testRealizedUDTWithAccessors Value: true");
					else
						LOG
								.LogReal(
										"returnNestedSDTWithRealizedUDTs: Unexpected testNestedRealizedUDTNoAccessors Value: ",
										sdtResult.testNestedRealizedUDTNoAccessors.value);
				else
					LOG
							.LogReal(
									"returnNestedSDTWithRealizedUDTs: Unexpected testRealizedUDTNoAccessors Value: ",
									sdtResult.testRealizedUDTNoAccessors.value);
			else
				LOG
						.LogFailure("returnNestedSDTWithRealizedUDTs: Unexpected testNestedUDT Value: "
								+ sdtResult.testNestedUDT);
		else
			LOG
					.LogFailure("returnNestedSDTWithRealizedUDTs: Unexpected testUDT Value: "
							+ sdtResult.testUDT);

		testPort.testEnumeration(null, TestEnumeration.Cyan);

		TestEnumeration enumResult = testPort.returnTestEnumeration(null);
		if (enumResult == TestEnumeration.Green)
			LOG.LogSuccess("returnTestEnumeration: PASSED");
		else
			LOG.LogFailure("returnTestEnumeration: Unexpected Value: "
					+ enumResult.name());

		testPort.testNestedEnumeration(null, TestEnumeration.Red);

		enumResult = testPort.returnNestedEnumeration(null);
		if (enumResult == TestEnumeration.Red)
			LOG.LogSuccess("returnNestedEnumeration: PASSED");
		else
			LOG.LogFailure("returnNestedEnumeration: Unexpected Value: "
					+ enumResult.name());
	}

	@Override
	public void executeSignalTest(ComponentInstance_c sender) {
		LOG.LogInfo("Beginning incoming signals test execution.");
		RealizedUDTTestSDT testValue = new RealizedUDTTestSDT();
		testValue.testUDT = 1000;
		testValue.testNestedUDT = 2000;
		testValue.testRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		testValue.testRealizedUDTNoAccessors.value = 3000; // Note: this is a
															// real
		testValue.testNestedRealizedUDTNoAccessors = new RealizedTestUDTNoAccessors();
		testValue.testNestedRealizedUDTNoAccessors.value = 4000; // Note: this is
																// a real
		testValue.testRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		testValue.testRealizedUDTWithAccessors.setValue(true);
		testValue.testNestedRealizedUDTWithAccessors = new RealizedTestUDTWithAccessors();
		testValue.testNestedRealizedUDTWithAccessors.setValue(false);
		testValue.testEnumeration = TestEnumeration.Magenta;
		testValue.testNestedEnumeration = TestEnumeration.Green;

		testPort.testUDTSig(null, 400);

		testPort.testNestedUDTSig(null, 500);

		RealizedTestUDTNoAccessors tUDT = new RealizedTestUDTNoAccessors();
		tUDT.value = 600;
		testPort.testRealizedUDTNoAccessorsSig(null, tUDT);

		tUDT.value = 700;
		testPort.testNestedRealizedUDTNoAccessorsSig(null, tUDT);

		RealizedTestUDTWithAccessors tUDTWA = new RealizedTestUDTWithAccessors();
		tUDTWA.setValue(false);
		testPort.testRealizedUDTWithAccessorsSig(null, tUDTWA);

		tUDTWA.setValue(true);
		testPort.testNestedRealizedUDTWithAccessorsSig(null, tUDTWA);

		testPort.testSDTWithRealizedUDTsSig(null, testValue);

		testValue.testUDT = 10000;
		testValue.testNestedUDT = 11000;
		testValue.testRealizedUDTNoAccessors.value = 12000;
		testValue.testNestedRealizedUDTNoAccessors.value = 13000;
		testValue.testRealizedUDTWithAccessors.setValue(false);
		testValue.testNestedRealizedUDTWithAccessors.setValue(true);
		testValue.testEnumeration = TestEnumeration.Yellow;
		testValue.testNestedEnumeration = TestEnumeration.Red;

		testPort.testNestedSDTWithRealizedUDTsSig(null, testValue);

		testPort.testEnumerationSig(null, TestEnumeration.Cyan);

		testPort.testNestedEnumerationSig(null, TestEnumeration.Red);

	}
}
