package messagetest.testdeployment.referencedtoreferenced.declaredtodeclared;

import java.util.ArrayList;

import lib.BPInteger;
import lib.LOG;
import messagetest.testinterface.IJarredTestInterfaceFromProvider;
import messagetest.testinterface.IJarredTestInterfaceToProvider;
import messagetest.testinterface.IJarredTestReplyFromProvider;
import messagetest.testinterface.IJarredTestReplyToProvider;
import testdatatypes.Jarred_Sdt_t;
import testdatatypes.Jarred_Simple_sdt_t;

import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.CorePlugin;

public class JarredTestProvider implements IJarredTestInterfaceToProvider,
		IJarredTestReplyFromProvider {
	// Ports
	private IJarredTestReplyToProvider different = null;
	private IJarredTestInterfaceFromProvider same = null;

	public JarredTestProvider(IJarredTestInterfaceFromProvider same,
			IJarredTestReplyToProvider different) {
		this.different = different;
		this.same = same;
	}

	class PTST {
		public Jarred_Sdt_t test_sdt_a = new Jarred_Sdt_t();
		public ComponentInstance_c test_sender;
	}

	PTST testClass = null;

	// Test Interface
	@Override
	public void pingProvider(ComponentInstance_c sender, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name) {
		LOG.LogInfo(name + ": pingProvider entered");
		Jarred_Sdt_t test_Jarred_Sdt_temp = sdtBV_p;
		test_Jarred_Sdt_temp.simple_m = test_Jarred_Sdt_temp.simple_m + 1;
		test_Jarred_Sdt_temp.array_m.add(0, test_Jarred_Sdt_temp.array_m.get(0) + 1);
		test_Jarred_Sdt_temp.sdt_m.simple_m = test_Jarred_Sdt_temp.sdt_m.simple_m + 1;
		if (!test_Jarred_Sdt_temp.sdt_m.string_m.equals("pingRequirer")) {
			LOG.LogInfo(String.class.toString());
			LOG.LogInfo(test_Jarred_Sdt_temp.sdt_m.string_m.getClass().toString());
			LOG.LogFailure("Unexpected value in pingProvider: >"
					+ test_Jarred_Sdt_temp.sdt_m.string_m + "<");
		}
		test_Jarred_Sdt_temp.sdt_m.string_m = "pingProvider";
		ArrayList<Integer> test_array_temp = new ArrayList<Integer>(
				arrayBV_p);
		test_array_temp.add(0, test_array_temp.get(0) + 1);
		same.pingRequirerS(null, simpleBV_p + 1, test_array_temp, test_Jarred_Sdt_temp,
				simpleBR_p, arrayBR_p, sdtBR_p, name);
		different.replyToRequirer(null, "pingProvider");
		simpleBR_p.setValue(simpleBR_p.getValue() + 1);
		arrayBR_p.set(0, arrayBR_p.get(0) + 1);
		sdtBR_p.simple_m = sdtBR_p.simple_m + 1;
		sdtBR_p.array_m.set(0, sdtBR_p.array_m.get(0) + 1);
		sdtBR_p.sdt_m.simple_m = sdtBR_p.sdt_m.simple_m + 1;
		sdtBR_p.sdt_m.string_m = sdtBR_p.sdt_m.string_m + ", pingProvider";
	}

	public void pingProviderS(ComponentInstance_c sender, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name) {
		LOG.LogInfo(name + ": pingProviderS entered");
		String result = "";
		if (simpleBV_p == 3 && arrayBV_p.get(0) == 4
				&& sdtBV_p.simple_m == 5
				&& sdtBV_p.array_m.get(0) == 6
				&& sdtBV_p.sdt_m.simple_m == 7
				&& sdtBV_p.sdt_m.string_m.equals("pingRequirerS")) {
			result = "Passed.";
		} else {
			result = "Unexpected value(s) found.";
			LOG.LogInteger(simpleBV_p);
			LOG.LogInteger(arrayBV_p.get(0));
			LOG.LogInteger(sdtBV_p.simple_m);
			LOG.LogInteger(sdtBV_p.array_m.get(0));
			LOG.LogInteger(sdtBV_p.sdt_m.simple_m);
			LOG.LogInfo(sdtBV_p.sdt_m.string_m);
		}
		different.replyToRequirer(sender, "pingProviderS");
		if (testClass != null) {
		  same.complete(testClass.test_sender, result, name);
		}
		else {
		  same.complete(sender,
				 "Expected instance not found in pingProviderS", name);
		}
	}

	@Override
	public void pingProviderC(ComponentInstance_c sender, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name) {
		LOG.LogInfo(name + ": pingProviderC entered");
		Jarred_Sdt_t test_Jarred_Sdt_temp = sdtBV_p;
		test_Jarred_Sdt_temp.simple_m = test_Jarred_Sdt_temp.simple_m + 1;
		test_Jarred_Sdt_temp.array_m.add(0, test_Jarred_Sdt_temp.array_m.get(0) + 1);
		test_Jarred_Sdt_temp.sdt_m.simple_m = test_Jarred_Sdt_temp.sdt_m.simple_m + 1;
		if (test_Jarred_Sdt_temp.sdt_m.string_m != "pingRequirer") {
			LOG.LogFailure("Unexpected value in pingProviderC: >"
					+ test_Jarred_Sdt_temp.sdt_m.string_m + "<");
		}
		test_Jarred_Sdt_temp.sdt_m.string_m = "pingProviderC";
		ArrayList<Integer> test_array_temp = new ArrayList<Integer>(
				arrayBV_p);
		test_array_temp.add(0, test_array_temp.get(0) + 1);
		PTST ptest = testClass;
		if (ptest != null) {
			same.pingRequirerC(ptest.test_sender, simpleBV_p + 1,
					test_array_temp, test_Jarred_Sdt_temp, simpleBR_p,
					test_array_temp, test_Jarred_Sdt_temp, name);
			different.replyToRequirer(ptest.test_sender, "pingProviderC");
		} else {
			LOG.LogFailure("Cached sender not found in pingProviderC.");
		}
	}

	@Override
	public void pingProviderSig(ComponentInstance_c sender, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name) {
		LOG.LogInfo(name + ": pingProviderSig entered");
		Jarred_Sdt_t test_Jarred_Sdt_temp = sdt_p;
		test_Jarred_Sdt_temp.simple_m = test_Jarred_Sdt_temp.simple_m + 1;
		test_Jarred_Sdt_temp.array_m.add(0, test_Jarred_Sdt_temp.array_m.get(0) + 1);
		test_Jarred_Sdt_temp.sdt_m.simple_m = test_Jarred_Sdt_temp.sdt_m.simple_m + 1;
		if (!test_Jarred_Sdt_temp.sdt_m.string_m.equals("pingRequirerSig")) {
			LOG.LogFailure("Unexpected value in pingProviderSig: >"
					+ test_Jarred_Sdt_temp.sdt_m.string_m + "<");
		}
		test_Jarred_Sdt_temp.sdt_m.string_m = "pingProviderSig";
		ArrayList<Integer> test_array_temp = new ArrayList<Integer>(array_p);
		test_array_temp.add(0, test_array_temp.get(0) + 1);
		same.pingRequirerSigS(null, simple_p + 1, test_array_temp,
				test_Jarred_Sdt_temp, name);
		different.replyToRequirer(null, "pingProviderSig");
	}

	public void pingProviderSigS(ComponentInstance_c sender, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name) {
		LOG.LogInfo(name + ": pingProviderSigS entered");
		Jarred_Sdt_t test_Jarred_Sdt_temp = sdt_p;
		test_Jarred_Sdt_temp.simple_m = test_Jarred_Sdt_temp.simple_m + 1;
		test_Jarred_Sdt_temp.array_m.add(0, test_Jarred_Sdt_temp.array_m.get(0) + 1);
		test_Jarred_Sdt_temp.sdt_m.simple_m = test_Jarred_Sdt_temp.sdt_m.simple_m + 1;
		test_Jarred_Sdt_temp.sdt_m.string_m = "pingProviderSigS";
		ArrayList<Integer> test_array_temp = array_p;
		test_array_temp.set(0, test_array_temp.get(0) + 1);
		same.pingRequirerSigC(null, simple_p + 1,
				                          test_array_temp, test_Jarred_Sdt_temp, name);
		PTST ptest = testClass;
		if (ptest != null) {
			different.replyToRequirer(ptest.test_sender, "pingProviderSigS");
		} else {
			LOG.LogFailure("Cached sender not found in pingProviderSigS.");
		}
	
	}

	public void pingProviderSigC(ComponentInstance_c sender, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name) {
		// Simulate Verifier transition output
		CorePlugin.out.println("Test Class dequeueing. Event: same::pingProviderSigC (simple_p:integer, array_p:integer, sdt_p:Jarred_Sdt_t, name:string)");
		CorePlugin.out.println("Test Class transition. New State: Provider Test State Previous State: Provider Test State");
		// State OAL follows
		LOG.LogInfo(name + ": Provider Test State (pingProviderSigC) entered");
		String result = "";
		if (simple_p == 5 && array_p.get(0) == 6
				&& sdt_p.simple_m == 7 && sdt_p.array_m.get(0) == 8
				&& sdt_p.sdt_m.simple_m == 9
				&& sdt_p.sdt_m.string_m.equals("Requirer Test Txn (pingRequirerSigC)")) {
			result = "Passed.";
		} else {
			result = "Unexpected value(s) found.";
			LOG.LogInteger(simple_p);
			LOG.LogInteger(array_p.get(0));
			LOG.LogInteger(sdt_p.simple_m);
			LOG.LogInteger(sdt_p.array_m.get(0));
			LOG.LogInteger(sdt_p.sdt_m.simple_m);
			LOG.LogInfo(sdt_p.sdt_m.string_m);
		}
		PTST ptest = testClass;
		if (ptest != null) {
			same.complete(ptest.test_sender, result, name);
		} else {
			same.complete(sender, "Expected instance not found in Provider" +
					                         " Test State (pingProviderSigC).",
                                                                          name);
		}
	}

	@Override
	public void executeOpTest(ComponentInstance_c sender, String name) {
		// Main test entry point
		LOG.LogInfo("Test Provider::executeOpTest() entered");
		ArrayList<Integer> testArray = new ArrayList<Integer>();
		testArray.add(0, 1);
		if (testClass == null) {
			testClass = new PTST();
		}
		testClass.test_sdt_a.array_m = new ArrayList<Integer>();
		testClass.test_sdt_a.simple_m = 2;
		testClass.test_sdt_a.array_m.add(0, 3);
		testClass.test_sdt_a.sdt_m = new Jarred_Simple_sdt_t();
		testClass.test_sdt_a.sdt_m.simple_m = 4;
		testClass.test_sdt_a.sdt_m.string_m = "execute";
		testClass.test_sender = sender;
		BPInteger testI = new BPInteger(0);
		same.pingRequirer(null, 0, testArray, testClass.test_sdt_a, testI,
				testArray, testClass.test_sdt_a, name);
		different.replyToRequirer(null, "execute");
		if (testI.getValue() != 1) {
		  LOG.LogFailure("By reference argument not updated");
		  LOG.LogInteger(testI.getValue());
		}
		if (testArray.get(0) != 2) {
		  LOG.LogFailure("By reference array argument not updated");
		  LOG.LogInteger(testArray.get(0));
		}
		if (testClass.test_sdt_a.simple_m != 3) {
		  LOG.LogFailure("By reference SDT member integer argument not updated");
		  LOG.LogInteger(testClass.test_sdt_a.simple_m);
	    }
		if (testClass.test_sdt_a.array_m.get(0) != 4) {
		  LOG.LogFailure("By reference SDT member array argument not updated");
		  LOG.LogInteger(testClass.test_sdt_a.array_m.get(0));
		}
		if (testClass.test_sdt_a.sdt_m.simple_m != 5) {
		  LOG.LogFailure("By reference SDT member SDT member integer argument not updated");
		  LOG.LogInteger(testClass.test_sdt_a.sdt_m.simple_m);
		}
		if (!testClass.test_sdt_a.sdt_m.string_m.equals("execute, pingRequirer")) {
		  LOG.LogFailure("By reference SDT member SDT member string argument not updated");
		  LOG.LogInfo(testClass.test_sdt_a.sdt_m.string_m);
		}
		int result = same.getResultFromRequirer(null, "execute");
		if (result != 2) {
		  LOG.LogFailure("Unexpected return value from Requirer, expected 2 got:");
		  LOG.LogInteger(result);
		}
		ArrayList<Integer>arrayResult = same.getArrayFromRequirer(null, "execute");
		if (arrayResult.get(0) != 2) {
		  LOG.LogFailure("Unexpected return array value from Requirer, expected 2 got:");
		  LOG.LogInteger(arrayResult.get(0));
		}
		Jarred_Sdt_t sdtResult = same.getSDTFromRequirer(null, "execute");
		if (sdtResult.simple_m != 4) {
		  LOG.LogFailure("Unexpected return SDT member integer value, expected 4, got:");
		  LOG.LogInteger(sdtResult.simple_m);
		}
		if (sdtResult.array_m.get(0) != 5) {
		  LOG.LogFailure("Unexpected return SDT member array value, expected 5, got:");
		  LOG.LogInteger(sdtResult.array_m.get(0));
		}
		if (sdtResult.sdt_m.simple_m != 6) {
		  LOG.LogFailure("Unexpected return SDT member SDT member integer value, expected 6, got:");
		  LOG.LogInteger(sdtResult.sdt_m.simple_m);
		}
		if (!sdtResult.sdt_m.string_m.equals("execute, pingRequirer, getSDTFromRequirer")) {
		  LOG.LogFailure("Unexpected return SDT member SDT member string value, expected ->execute, pingRequirer, getSDTFromRequirer<-, got:");
		  LOG.LogInfo(sdtResult.sdt_m.string_m);
		}
	}

	public void executeSignalTest(ComponentInstance_c sender, String name) {
		// Main test entry point
		LOG.LogInfo("Test Provider::executeSignalTest() entered");
		ArrayList<Integer> testArray = new ArrayList<Integer>();
		testArray.add(0, 1);
		if (testClass == null) {
			testClass = new PTST();
		}
		testClass.test_sdt_a.simple_m = 2;
		testClass.test_sdt_a.array_m.add(0, 3);
		testClass.test_sdt_a.sdt_m.simple_m = 4;
		testClass.test_sdt_a.sdt_m.string_m = "execute";
		testClass.test_sender = sender;
		same.pingRequirerSig(null, 0, testArray, testClass.test_sdt_a, name);
		different.replyToRequirer(null, "execute");
	}

	// Test Reply
	@Override
	public void replyToProvider(ComponentInstance_c sender, String senderName) {
		LOG.LogInfo("Test Provider::replyToProvider() entered from "
						+ senderName);
	}

	@Override
	public ArrayList<Integer> getArrayFromProvider(ComponentInstance_c senderReceiver, String name) {
		LOG.LogInfo(name + ": getArrayFromProvider entered");
		different.replyToRequirer(senderReceiver, "getArrayFromProvider");
		ArrayList<Integer>result = new ArrayList<Integer>();
		result.add(1);
		return result;
	}

	@Override
	public int getResultFromProvider(ComponentInstance_c senderReceiver, String name) {
		LOG.LogInfo(name + ": getResultFromProvider entered");
		different.replyToRequirer(senderReceiver, "getResultFromProvider");
		return 1;
	}

	@Override
	public Jarred_Sdt_t getSDTFromProvider(ComponentInstance_c senderReceiver, String name) {
		LOG.LogInfo(name + ": getSDTFromProvider entered");
		different.replyToRequirer(senderReceiver, "getSDTFromProvider");
		if (testClass == null) {
			LOG.LogFailure("Expected test class instance not found.");
			testClass = new PTST();
			testClass.test_sdt_a.simple_m = 2;
			testClass.test_sdt_a.array_m.add(0, 3);
			testClass.test_sdt_a.sdt_m.simple_m = 4;
			testClass.test_sdt_a.sdt_m.string_m = "execute";
			testClass.test_sender = senderReceiver;
		}
	    return testClass.test_sdt_a;
	}
	
	public void terminate() {
		LOG.LogInfo("terminate() entered");
	}

	@Override
	public void simpleOp(ComponentInstance_c senderReceiver) {
		LOG.LogInfo("simpleOp() entered");
	}

	@Override
	public void simpleSig(ComponentInstance_c senderReceiver) {
		LOG.LogInfo("simpleSig() entered");
	}

}
