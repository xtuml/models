package interfaces;
import org.xtuml.bp.core.ComponentInstance_c;

import lib.BPString;

public interface ISyncronizationToProvider {
	public boolean SyncPhoneBook(ComponentInstance_c senderReceiver);
	public int RequestContactUpdate(ComponentInstance_c senderReceiver, String name, BPString  newName );
}
