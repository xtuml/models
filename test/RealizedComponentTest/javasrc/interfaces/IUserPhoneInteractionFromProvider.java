package interfaces;
import org.xtuml.bp.core.ComponentInstance_c;

import lib.BPString;

public interface IUserPhoneInteractionFromProvider {
	public int RequestContactName(ComponentInstance_c senderReceiver, BPString name );
	
}	
