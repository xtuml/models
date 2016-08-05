package interfaces;
import org.xtuml.bp.core.ComponentInstance_c;

public interface IUserComputerInteractionToProvider {
	public void StartProgram(ComponentInstance_c senderReceiver);
	public void SendMail(ComponentInstance_c senderReceiver, String body);
	public void StartSync(ComponentInstance_c senderReceiver);
}
