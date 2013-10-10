package test;

import interfaces.ITestFromProvider;
import interfaces.ITestToProvider;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.mentor.nucleus.bp.core.ComponentInstance_c;

public class Realized  implements ITestToProvider {

	private HelloJNI hj = null;
	
	public Realized(ITestFromProvider fp) {
		hj = new HelloJNI();
		System.out.println("Realized created: " + this.toString());
	}

	@Override
	public void doIt(ComponentInstance_c senderReceiver) {
		hj.displayMessage();
	}
	
	public void finalize() {
		System.out.println("Realized garbage collected: " + this.toString());
	}
}
