package interfaces;
import org.xtuml.bp.core.ComponentInstance_c;

public interface INotificationToProvider {
	public void SendNotification(ComponentInstance_c senderReceiver, String message);
	public void Ack(ComponentInstance_c senderReceiver, String message);

}
