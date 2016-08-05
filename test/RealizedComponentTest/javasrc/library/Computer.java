package library;

import org.xtuml.bp.core.ComponentInstance_c;

import interfaces.INotificationFromProvider;
import interfaces.INotificationToProvider;
import interfaces.ISyncronizationFromProvider;
import interfaces.ISyncronizationToProvider;
import interfaces.IUserComputerInteractionFromProvider;
import interfaces.IUserComputerInteractionToProvider;
import lib.BPString;
import lib.LOG;

public class Computer implements IUserComputerInteractionToProvider, INotificationFromProvider, ISyncronizationToProvider, ISyncronizationFromProvider{
	
	private IUserComputerInteractionFromProvider Port1 = null;
	private INotificationToProvider Port2= null;
	private ISyncronizationFromProvider Port3 = null;
	private ISyncronizationToProvider Port4 = null;
	
	
	public Computer(IUserComputerInteractionFromProvider port1, INotificationToProvider port2, ISyncronizationFromProvider port3, ISyncronizationToProvider port4) {
		Port1 = port1;
		Port2 = port2;
		Port3 = port3;
		Port4 = port4;
	}


	@Override
	public boolean SyncPhoneBook(ComponentInstance_c senderReceiver) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public int RequestContactUpdate(ComponentInstance_c senderReceiver, String name, BPString newName) {
		if (name.equals("Tom")){
			newName.setValue("John");
			return 1;
		}else{
			LOG.LogFailure("Could not find contact");
		}
		return 0;
	}


	@Override
	public void StartProgram(ComponentInstance_c senderReceiver) {
			Port2.SendNotification(null, "Program started.");
	}


	@Override
	public void SendMail(ComponentInstance_c senderReceiver, String body) {
		Port2.Ack(null, "Mail is sent.");
		
	}


	@Override
	public void StartSync(ComponentInstance_c senderReceiver) {
		// TODO Auto-generated method stub
		
	}

}
