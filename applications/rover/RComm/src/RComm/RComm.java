package rcomm;

import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.CorePlugin;

import rcomm.shared.ILocationDataFromProvider;
import rcomm.shared.ILocationDataToProvider;
import rcomm.shared.IRCommFromProvider;
import rcomm.shared.IRCommToProvider;

public class RComm implements IRCommToProvider, ILocationDataFromProvider {
    
    IRCommFromProvider rcomm_from_provider;
    ILocationDataToProvider location_data_to_provider;
    
    public RComm( IRCommFromProvider rcomm_from_provider, ILocationDataToProvider location_data_to_provider ) {
        this.rcomm_from_provider = rcomm_from_provider;
        this.location_data_to_provider = location_data_to_provider;
    }

    @Override
    public void setForwardPower( ComponentInstance_c senderReceiver, int power ) {
        CorePlugin.out.println( "Setting forward power." );
    }

    @Override
    public void incrementPower( ComponentInstance_c senderReceiver, int power ) {
    }

    @Override
    public void setLRPower( ComponentInstance_c senderReceiver, int lpower, int rpower ) {
    }

    @Override
    public void brake( ComponentInstance_c senderReceiver, int power ) {
    }

    @Override
    public void pollLeaderX( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollLeaderZ( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverX( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverY( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverZ( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverCompass( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverDistance( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void ready( ComponentInstance_c senderReceiver ) {
        CorePlugin.out.println( "Sending 'ready'" );
    }

}
