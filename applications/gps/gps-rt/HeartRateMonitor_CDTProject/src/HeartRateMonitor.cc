
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

#include <iostream>

Capsule_HeartRateMonitor::Capsule_HeartRateMonitor( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * * internal, bool isStat )
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
    return UMLRTTimerProtocol_baserole( internalPorts[internalport_timer] );
}



void Capsule_HeartRateMonitor::bindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_HeartRatePort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_HeartRatePort, index, true );
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
    actionchain_____top__init__ActionChain3( message );
    currentState = top__idle;
}

const char * Capsule_HeartRateMonitor::getCurrentStateString() const
{
    return stateNames[currentState];
}




void Capsule_HeartRateMonitor::entryaction_____top__init__ActionChain3__EntryAction10( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << "Idle" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::entryaction_____top__onUnregisterListener__ActionChain5__EntryAction13( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << "Idle" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::entryaction_____top__updateHeartbeat__ActionChain7__EntryAction15( const UMLRTInMessage & msg )
{
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << "Monitoring" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::transitionaction_____top__init__ActionChain3__onInit( const UMLRTInMessage & msg )
{
    // UMLRT-CODEGEN:platform:/resource/HeartRateMonitor/model.uml#_XviM4D-hEeWyF-87NFNwWw
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << getName() << " initialized" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::transitionaction_____top__onRegisterListener__ActionChain4__TransitionAction11( const UMLRTInMessage & msg )
{
    // UMLRT-CODEGEN:platform:/resource/HeartRateMonitor/model.uml#_sHT6sEAXEeWuMdCV7Og4wQ
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << getName() << ": Listener Registered" << std::endl;

    timerID=timer().informEvery(UMLRTTimespec(6,0));  // Send a timeout signal every 6 seconds.
    if(!timerID.isValid()) { std::cout << "Error setting timer" << std::endl; } else {{ std::cout << "timer set" << std::endl; }};
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::transitionaction_____top__onUnregisterListener__ActionChain5__TransitionAction12( const UMLRTInMessage & msg )
{
    // UMLRT-CODEGEN:platform:/resource/HeartRateMonitor/model.uml#_2OfmEEAXEeWuMdCV7Og4wQ
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << getName() << ": Listener Unregistered" << std::endl;
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::transitionaction_____top__updateHeartbeat__ActionChain7__TransitionAction14( const UMLRTInMessage & msg )
{
    // UMLRT-CODEGEN:platform:/resource/HeartRateMonitor/model.uml#_kb5BMEIGEeWokcdArFCMyQ
    uint8_t buff0[msg.sizeDecoded()];
    void * const rtdata = buff0;
    msg.decode( rtdata );
    std::cout << "updating heartbeat" << std::endl;

    HeartRatePort().updateHeartRate(6).send();
    msg.destroy( (void *)buff0 );
}

void Capsule_HeartRateMonitor::actionchain_____top__init__ActionChain3( const UMLRTInMessage & msg )
{
    transitionaction_____top__init__ActionChain3__onInit( msg );
    entryaction_____top__init__ActionChain3__EntryAction10( msg );
}

void Capsule_HeartRateMonitor::actionchain_____top__onRegisterListener__ActionChain4( const UMLRTInMessage & msg )
{
    transitionaction_____top__onRegisterListener__ActionChain4__TransitionAction11( msg );
}

void Capsule_HeartRateMonitor::actionchain_____top__onUnregisterListener__ActionChain5( const UMLRTInMessage & msg )
{
    transitionaction_____top__onUnregisterListener__ActionChain5__TransitionAction12( msg );
    entryaction_____top__onUnregisterListener__ActionChain5__EntryAction13( msg );
}

void Capsule_HeartRateMonitor::actionchain_____top__updateHeartbeat__ActionChain7( const UMLRTInMessage & msg )
{
    transitionaction_____top__updateHeartbeat__ActionChain7__TransitionAction14( msg );
    entryaction_____top__updateHeartbeat__ActionChain7__EntryAction15( msg );
}

Capsule_HeartRateMonitor::State Capsule_HeartRateMonitor::junction_____top__Junction1( const UMLRTInMessage & msg )
{
    actionchain_____top__updateHeartbeat__ActionChain7( msg );
    return top__monitoring;
}

Capsule_HeartRateMonitor::State Capsule_HeartRateMonitor::state_____top__monitoring( const UMLRTInMessage & msg )
{
    switch( msg.destPort->role()->id )
    {
    case port_timer:
        switch( msg.getSignalId() )
        {
        case UMLRTTimerProtocol::signal_timeout:
            msg.decodeInit( NULL );
            return junction_____top__Junction1( msg );
        default:
            this->unexpectedMessage();
            break;
        }
        return currentState;
    case port_HeartRatePort:
        switch( msg.getSignalId() )
        {
        case HeartRateMonitorProtocol::signal_unregisterListener:
            msg.decodeInit( NULL );
            actionchain_____top__onUnregisterListener__ActionChain5( msg );
            return top__idle;
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
            actionchain_____top__onRegisterListener__ActionChain4( msg );
            return junction_____top__Junction1( msg );
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
    }
};

static const UMLRTCommsPortRole portroles_internal[] = 
{
    {
        Capsule_HeartRateMonitor::port_timer,
        "UMLRTTimerProtocol",
        "timer",
        NULL,
        1,
        true,
        false,
        false,
        true,
        false,
        false,
        false
    }
};

static void instantiate_HeartRateMonitor( const UMLRTRtsInterface * rts, UMLRTSlot * slot, const UMLRTCommsPort * * borderPorts )
{
    const UMLRTCommsPort * * internalPorts = UMLRTFrameService::createInternalPorts( slot, &HeartRateMonitor );
    slot->capsule = new Capsule_HeartRateMonitor( &HeartRateMonitor, slot, borderPorts, internalPorts, false );
}

const UMLRTCapsuleClass HeartRateMonitor = 
{
    "HeartRateMonitor",
    NULL,
    instantiate_HeartRateMonitor,
    0,
    NULL,
    1,
    portroles_border,
    1,
    portroles_internal
};

