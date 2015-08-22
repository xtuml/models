
#include "GPSWatch.hh"

#include "HeartRateMonitorProtocol.hh"
#include "umlrtcommsportrole.hh"
#include "umlrtinmessage.hh"
#include "umlrtobjectclass.hh"
#include "umlrtslot.hh"
#include <cstddef>
#include "umlrtcapsuleclass.hh"
#include "umlrtcommsportrole.hh"
#include "umlrtframeservice.hh"
#include "umlrtinmessage.hh"
#include <cstddef>
#include <stdint.h>
class UMLRTRtsInterface;
struct UMLRTCommsPort;

#include <iostream>

Capsule_GPSWatch::Capsule_GPSWatch( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * * internal, bool isStat )
: UMLRTCapsule( NULL, cd, st, border, internal, isStat )
, currentState( SPECIAL_INTERNAL_STATE_UNVISITED )
{
    stateNames[top__Updating] = "top__Updating";
    stateNames[top__Initializing] = "top__Initializing";
}


HeartRateMonitorProtocol_baserole Capsule_GPSWatch::GPSPort() const
{
    return HeartRateMonitorProtocol_baserole( borderPorts[borderport_GPSPort] );
}



void Capsule_GPSWatch::bindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_GPSPort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_GPSPort, index, true );
            break;
        }
}

void Capsule_GPSWatch::unbindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_GPSPort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_GPSPort, index, false );
            UMLRTFrameService::disconnectPort( borderPorts[borderport_GPSPort], index );
            break;
        }
}

void Capsule_GPSWatch::inject( const UMLRTInMessage & message )
{
    msg = &message;
    switch( currentState )
    {
    case top__Initializing:
        currentState = state_____top__Initializing( message );
        break;
    case top__Updating:
        currentState = state_____top__Updating( message );
        break;
    default:
        break;
    }
}

void Capsule_GPSWatch::initialize( const UMLRTInMessage & message )
{
    msg = &message;
    actionchain_____top__initialize__ActionChain2( message );
    currentState = top__Initializing;
}

const char * Capsule_GPSWatch::getCurrentStateString() const
{
    return stateNames[currentState];
}




void Capsule_GPSWatch::entryaction_____top__initialize__ActionChain2__onEntry( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    GPSPort().registerListener().send();
    msg.destroy( (void *)buff0 );
}

void Capsule_GPSWatch::entryaction_____top__reupdate__ActionChain6__onEntry( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    int & rtdata = *(int *)buff0;
    msg.decode( &rtdata );
    std::cout << getName() << ": Heart rate update" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_GPSWatch::entryaction_____top__update__ActionChain4__onEntry( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    int & rtdata = *(int *)buff0;
    msg.decode( &rtdata );
    std::cout << getName() << ": Heart rate update" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_GPSWatch::transitionaction_____top__initialize__ActionChain2__onInit( const UMLRTInMessage & msg )
{
    // UMLRT-CODEGEN:platform:/resource/HeartRateMonitor/model.uml#_U4-PAEAbEeWuMdCV7Og4wQ
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << getName() << ": Initialized" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_GPSWatch::actionchain_____top__initialize__ActionChain2( const UMLRTInMessage & msg )
{
    transitionaction_____top__initialize__ActionChain2__onInit( msg );
    entryaction_____top__initialize__ActionChain2__onEntry( msg );
}

void Capsule_GPSWatch::actionchain_____top__reupdate__ActionChain6( const UMLRTInMessage & msg )
{
    entryaction_____top__reupdate__ActionChain6__onEntry( msg );
}

void Capsule_GPSWatch::actionchain_____top__update__ActionChain4( const UMLRTInMessage & msg )
{
    entryaction_____top__update__ActionChain4__onEntry( msg );
}

Capsule_GPSWatch::State Capsule_GPSWatch::state_____top__Updating( const UMLRTInMessage & msg )
{
    switch( msg.destPort->role()->id )
    {
    case port_GPSPort:
        switch( msg.getSignalId() )
        {
        case HeartRateMonitorProtocol::signal_updateHeartRate:
            msg.decodeInit( UMLRTType_int );
            actionchain_____top__reupdate__ActionChain6( msg );
            return top__Updating;
        default:
            this->unexpectedMessage();
            break;
        }
        return currentState;
    default:
        this->unexpectedMessage();
        break;
    }
    return currentState;
}

Capsule_GPSWatch::State Capsule_GPSWatch::state_____top__Initializing( const UMLRTInMessage & msg )
{
    switch( msg.destPort->role()->id )
    {
    case port_GPSPort:
        switch( msg.getSignalId() )
        {
        case HeartRateMonitorProtocol::signal_updateHeartRate:
            msg.decodeInit( UMLRTType_int );
            actionchain_____top__update__ActionChain4( msg );
            return top__Updating;
        default:
            this->unexpectedMessage();
            break;
        }
        return currentState;
    default:
        this->unexpectedMessage();
        break;
    }
    return currentState;
}


static const UMLRTCommsPortRole portroles_border[] = 
{
    {
        Capsule_GPSWatch::port_GPSPort,
        "HeartRateMonitorProtocol",
        "GPSPort",
        NULL,
        1,
        true,
        false,
        false,
        false,
        false,
        false,
        true
    }
};

static void instantiate_GPSWatch( const UMLRTRtsInterface * rts, UMLRTSlot * slot, const UMLRTCommsPort * * borderPorts )
{
    slot->capsule = new Capsule_GPSWatch( &GPSWatch, slot, borderPorts, NULL, false );
}

const UMLRTCapsuleClass GPSWatch = 
{
    "GPSWatch",
    NULL,
    instantiate_GPSWatch,
    0,
    NULL,
    1,
    portroles_border,
    0,
    NULL
};

