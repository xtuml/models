package rcomm.shared;

import org.xtuml.bp.core.ComponentInstance_c;

public interface ILocationDataToProvider {

    public void leaderX( ComponentInstance_c senderReceiver, float x );
    public void leaderZ( ComponentInstance_c senderReceiver, float z );
    public void roverX( ComponentInstance_c senderReceiver, float x );
    public void roverY( ComponentInstance_c senderReceiver, float y );
    public void roverZ( ComponentInstance_c senderReceiver, float z );
    public void roverCompass( ComponentInstance_c senderReceiver, float degrees );
    public void distance( ComponentInstance_c senderReceiver, float dist );

}
