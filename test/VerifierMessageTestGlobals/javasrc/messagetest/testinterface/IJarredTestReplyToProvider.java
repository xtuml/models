package messagetest.testinterface;

import org.xtuml.bp.core.ComponentInstance_c;

public interface IJarredTestReplyToProvider {
	public void replyToRequirer(ComponentInstance_c senderReceiver, String senderName);
}
