package test;

import interfaces.ITestFromProvider;
import interfaces.ITestToProvider;

import org.xtuml.bp.core.ComponentInstance_c;

public class Realized  implements ITestToProvider {

	private HelloJNI hj = null;
	
	public Realized(ITestFromProvider fp) {
		hj = new HelloJNI();
		System.out.println("Realized created: " + this.toString());
	}

	@Override
	public String doIt(ComponentInstance_c senderReceiver) {
		return hj.getMessage();
	}
	
	public void finalize() {
		System.out.println("Realized garbage collected: " + this.toString());
	}
}
