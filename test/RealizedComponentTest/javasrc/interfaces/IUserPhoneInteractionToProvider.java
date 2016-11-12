package interfaces;
import org.xtuml.bp.core.ComponentInstance_c;

import lib.BPBoolean;

public interface IUserPhoneInteractionToProvider {
	public void MakeCall(ComponentInstance_c senderReceiver, int number);
	public void StartSync(ComponentInstance_c senderReceiver);
	public void AddNewContact(ComponentInstance_c senderReceiver, BPBoolean status);
	public void SendSms(ComponentInstance_c senderReceiver, String text);
	public void EndCall(ComponentInstance_c senderReceiver);

}
