package rcomm.shared;

import org.xtuml.bp.core.ComponentInstance_c;

public interface ILocationDataToProvider {

    public void leaderGPS( ComponentInstance_c senderReceiver, float x, float z );
    public void leaderDistance( ComponentInstance_c senderReceiver, float dist );
    public void roverGPS( ComponentInstance_c senderReceiver, float x, float z );
    public void roverCompass( ComponentInstance_c senderReceiver, float degrees );

}
