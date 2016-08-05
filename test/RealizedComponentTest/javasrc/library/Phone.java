package library;

import org.xtuml.bp.core.ComponentInstance_c;

import interfaces.IHandShakeFromProvider;
import interfaces.IHandShakeToProvider;
import interfaces.INotificationFromProvider;
import interfaces.INotificationToProvider;
import interfaces.ISyncronizationFromProvider;
import interfaces.ISyncronizationToProvider;
import interfaces.IUserPhoneInteractionFromProvider;
import interfaces.IUserPhoneInteractionToProvider;
import lib.BPBoolean;
import lib.BPString;
import lib.LOG;

public class Phone implements  IUserPhoneInteractionToProvider, INotificationFromProvider, IHandShakeToProvider, ISyncronizationToProvider, ISyncronizationFromProvider{

	private IUserPhoneInteractionFromProvider Port2= null;
	private INotificationToProvider Port4 = null;
	private IHandShakeFromProvider Port5 = null;
	private ISyncronizationFromProvider Port1 = null;
	private ISyncronizationToProvider Port3 = null;
	
	boolean onCall = false;
	
	
	public  Phone(ISyncronizationFromProvider port1, IUserPhoneInteractionFromProvider port2, ISyncronizationToProvider port3, INotificationToProvider port4, IHandShakeFromProvider port5) {
		Port1 = port1;
		Port2 = port2;
		Port3 = port3;
		Port4 = port4;
		Port5 = port5;
	}
	
	@Override
	public boolean SyncPhoneBook(ComponentInstance_c senderReceiver) {
		LOG.LogInfo("SyncPhoneBook");		
		return true;
	}

	@Override
	public int RequestContactUpdate(ComponentInstance_c senderReceiver, String name, BPString newName) {
		return 0;
	}

	@Override
	public void Ping(ComponentInstance_c senderReceiver) {
		Port5.Ack(null);
	}

	@Override
	public void MakeCall(ComponentInstance_c senderReceiver, int number) {
		onCall = true;
		LOG.LogInfo("Calling " + number + " ...");
	}

	@Override
	public void StartSync(ComponentInstance_c senderReceiver) {
		LOG.LogInfo("Sync started...");
		BPString newName = new BPString("");
		int updated = 0;
//		updated = Port3.RequestContactUpdate(null, "Tom", newName);
		if (newName.getValue().equalsIgnoreCase("John")){
			LOG.LogSuccess("Sync completed.");
		}
		else {
			LOG.LogFailure("Sync Failed.");
		}
		if (updated == 1){
			LOG.LogSuccess("Contact is updated.");
		}else{
			LOG.LogFailure("Could not update contact.");
		}
	}

	@Override
	public void SendSms(ComponentInstance_c senderReceiver, String text) {
		LOG.LogInfo("Sending:  "+ text);
		Port4.SendNotification(null, "Message is Sent");
	}

	@Override
	public void EndCall(ComponentInstance_c senderReceiver) {
			if(onCall){
				LOG.LogSuccess("Call Ended...");
			}else{
				LOG.LogFailure("No call found to end");
			}
			
			onCall = false;
	}

	@Override
	public void AddNewContact(ComponentInstance_c senderReceiver, BPBoolean status) {
		BPString contractName = new BPString("");
		int done = Port2.RequestContactName(null, contractName );
		if ( contractName.getValue().equalsIgnoreCase("John")){
			
			LOG.LogSuccess("New Contact Added");
		}else{
			LOG.LogFailure("Adding Contact Failed");
			
		}
		if (done == 1){
			LOG.LogSuccess("Process Completed");
			status.setValue(true);
			
		}else{
			LOG.LogFailure("Process Interrupted");
		}
		
		
	}

}
