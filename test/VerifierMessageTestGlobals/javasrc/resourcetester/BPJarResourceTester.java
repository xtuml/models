package resourcetester;

import java.io.InputStream;

import lib.LOG;

public class BPJarResourceTester {
	public static void performTest() {
		LOG.LogInfo("BPResourceTester.performTest() entered");
        String iconPath = "icons/";
        InputStream result = BPJarResourceTester.class.getResourceAsStream(iconPath + "test-bp.gif");
        if (result == null) {
    		LOG.LogFailure("Failed to open resource.");
        }
	}

}
