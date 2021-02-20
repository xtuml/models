package rcomm.shared;

import org.xtuml.bp.core.ComponentInstance_c;

public interface IRCommToProvider {

    public void setForwardPower( ComponentInstance_c senderReceiver, int power );
    public void incrementPower( ComponentInstance_c senderReceiver, int power );
    public void setLRPower( ComponentInstance_c senderReceiver, int lpower, int rpower );
    public void brake( ComponentInstance_c senderReceiver, int power );
    public void pollLeaderGPS( ComponentInstance_c senderReceiver );
    public void pollLeaderDistance( ComponentInstance_c senderReceiver );
    public void pollRoverGPS( ComponentInstance_c senderReceiver );
    public void pollRoverCompass( ComponentInstance_c senderReceiver );
    public void ready( ComponentInstance_c senderReceiver );

}
