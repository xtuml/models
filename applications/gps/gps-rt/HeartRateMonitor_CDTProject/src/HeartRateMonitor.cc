
#include "HeartRateMonitor.hh"

#include "HeartRateMonitorProtocol.hh"
#include "umlrtcommsportrole.hh"
#include "umlrtinmessage.hh"
#include "umlrtslot.hh"
#include "umlrttimerprotocol.hh"
#include <cstddef>
#include "umlrtcapsuleclass.hh"
#include "umlrtcommsportrole.hh"
#include "umlrtframeservice.hh"
#include "umlrtinmessage.hh"
#include <cstddef>
#include <stdint.h>
class UMLRTRtsInterface;
struct UMLRTCommsPort;

Capsule_HeartRateMonitor::Capsule_HeartRateMonitor( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * internal, bool isStat )
: UMLRTCapsule( NULL, cd, st, border, internal, isStat )
, currentState( SPECIAL_INTERNAL_STATE_UNVISITED )
{
    stateNames[top__monitoring] = "top__monitoring";
    stateNames[top__idle] = "top__idle";
}


HeartRateMonitorProtocol_baserole Capsule_HeartRateMonitor::HeartRatePort() const
{
    return HeartRateMonitorProtocol_baserole( borderPorts[borderport_HeartRatePort] );
}

UMLRTTimerProtocol_baserole Capsule_HeartRateMonitor::timer() const
{
    return UMLRTTimerProtocol_baserole( borderPorts[borderport_timer] );
}



void Capsule_HeartRateMonitor::bindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_HeartRatePort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_HeartRatePort, index, true );
            break;
        case borderport_timer:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_timer, index, true );
            break;
        }
}

void Capsule_HeartRateMonitor::unbindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_HeartRatePort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_HeartRatePort, index, false );
            UMLRTFrameService::disconnectPort( borderPorts[borderport_HeartRatePort], index );
            break;
        case borderport_timer:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_timer, index, false );
            UMLRTFrameService::disconnectPort( borderPorts[borderport_timer], index );
            break;
        }
}


void Capsule_HeartRateMonitor::inject( const UMLRTInMessage & message )
{
    msg = &message;
    switch( currentState )
    {
    case top__idle:
        currentState = state_____top__idle( message );
        break;
    case top__monitoring:
        currentState = state_____top__monitoring( message );
        break;
    default:
        break;
    }
}

void Capsule_HeartRateMonitor::initialize( const UMLRTInMessage & message )
{
    msg = &message;
    currentState = top__idle;
}

const char * Capsule_HeartRateMonitor::getCurrentStateString() const
{
    return stateNames[currentState];
}




void Capsule_HeartRateMonitor::entryaction_____top__onRegisterListener__ActionChain6__onEntry( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    timerID=timer().informIn(UMLRTTimespec(60,0));
    HeartRatePort().updateHeartRate(5).send();
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::actionchain_____top__onRegisterListener__ActionChain6( const UMLRTInMessage & msg )
{
    entryaction_____top__onRegisterListener__ActionChain6__onEntry( msg );
}

Capsule_HeartRateMonitor::State Capsule_HeartRateMonitor::state_____top__monitoring( const UMLRTInMessage & msg )
{
    switch( msg.destPort->role()->id )
    {
    case port_HeartRatePort:
        switch( msg.getSignalId() )
        {
        case HeartRateMonitorProtocol::signal_unregisterListener:
            msg.decodeInit( NULL );
            return top__idle;
        default:
            this->unexpectedMessage();
            break;
        }
        return currentState;
    case port_timer:
        switch( msg.getSignalId() )
        {
        case UMLRTTimerProtocol::signal_timeout:
            msg.decodeInit( NULL );
            return top__monitoring;
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

Capsule_HeartRateMonitor::State Capsule_HeartRateMonitor::state_____top__idle( const UMLRTInMessage & msg )
{
    switch( msg.destPort->role()->id )
    {
    case port_HeartRatePort:
        switch( msg.getSignalId() )
        {
        case HeartRateMonitorProtocol::signal_registerListener:
            msg.decodeInit( NULL );
            actionchain_____top__onRegisterListener__ActionChain6( msg );
            return top__monitoring;
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
        Capsule_HeartRateMonitor::port_HeartRatePort,
        "HeartRateMonitorProtocol",
        "HeartRatePort",
        NULL,
        1,
        true,
        false,
        false,
        false,
        false,
        false,
        true
    },
    {
        Capsule_HeartRateMonitor::port_timer,
        "UMLRTTimerProtocol",
        "timer",
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
static void instantiate_HeartRateMonitor( const UMLRTRtsInterface * rts, UMLRTSlot * slot, const UMLRTCommsPort * * borderPorts )
{
    slot->capsule = new Capsule_HeartRateMonitor( &HeartRateMonitor, slot, borderPorts, NULL, false );
}
const UMLRTCapsuleClass HeartRateMonitor = 
{
    "HeartRateMonitor",
    NULL,
    instantiate_HeartRateMonitor,
    0,
    NULL,
    2,
    portroles_border,
    0,
    NULL
};
