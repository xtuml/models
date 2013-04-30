package messagetest.testinterface;

import com.mentor.nucleus.bp.core.ComponentInstance_c;

public interface IJarredTestReplyToProvider {
	public void replyToRequirer(ComponentInstance_c senderReceiver, String senderName);
}
