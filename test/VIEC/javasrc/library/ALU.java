package library;

import org.xtuml.bp.core.ComponentInstance_c;
import lib.LOG;
import interfaces.*;

public class ALU  implements IDataBusToProvider, IControlBusFromProvider{
	
	private IDataBusFromProvider Processor1 = null;
	private IControlBusToProvider Processor2 = null;
	private int num = 4;
	
	
	public ALU(IDataBusFromProvider port, IControlBusToProvider port2 ) {
		this.Processor1 = port;
		this.Processor2 = port2;
	}

	@Override
	public int Factorial(ComponentInstance_c senderReceiver, int number) {
		LOG.LogInfo("Calculate factorial for number " +number);
		if (number == 1){
			return 1;
		}
		else {
			return number * Processor1.NextFac(null, number - 1);
		}
	}
	public void terminate() {
		LOG.LogInfo("ALU Terminating!!!");
	}

	@Override
	public void setFact(ComponentInstance_c senderReceiver) {
		int fac = Processor1.NextFac(null, num);
		LOG.LogInfo("Final result" + fac);
		
	}
}

