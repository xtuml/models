#include <iostream>
#include "HeartRateMonitorProtocol.hh"

#include "umlrtobjectclass.hh"
#include "umlrtoutsignal.hh"
struct UMLRTCommsPort;


UMLRTOutSignal HeartRateMonitorProtocol::OutSignals::registerListener( const UMLRTCommsPort * sourcePort ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_registerListener, sourcePort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::OutSignals::unregisterListener( const UMLRTCommsPort * sourcePort ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_unregisterListener, sourcePort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::OutSignals::updateHeartRate( const UMLRTCommsPort * sourcePort, int heartRate ) const
{
    UMLRTOutSignal signal;
    std::cout << "updating heartbeat OutSignals" << std::endl;
    signal.initialize( signal_updateHeartRate, sourcePort, UMLRTType_int->sizeDecoded );
    signal.encode( UMLRTType_int, &heartRate );
    return signal;
}


UMLRTOutSignal HeartRateMonitorProtocol::InSignals::registerListener( const UMLRTCommsPort * sourcePort ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_registerListener, sourcePort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::InSignals::unregisterListener( const UMLRTCommsPort * sourcePort ) const
{
    UMLRTOutSignal signal;
    signal.initialize( signal_unregisterListener, sourcePort, 0 );
    return signal;
}

UMLRTOutSignal HeartRateMonitorProtocol::InSignals::updateHeartRate( const UMLRTCommsPort * sourcePort, int heartRate ) const
{
    UMLRTOutSignal signal;
    std::cout << "updating heartbeat InSignals" << std::endl;
    signal.initialize( signal_updateHeartRate, sourcePort, UMLRTType_int->sizeDecoded );
    signal.encode( UMLRTType_int, &heartRate );
    return signal;
}





HeartRateMonitorProtocol_baserole::HeartRateMonitorProtocol_baserole( const UMLRTCommsPort * srcPort )
: UMLRTProtocol( srcPort )
{
}

UMLRTOutSignal HeartRateMonitorProtocol_baserole::registerListener() const
{
    return HeartRateMonitorProtocol::Base::registerListener( srcPort );
}

UMLRTOutSignal HeartRateMonitorProtocol_baserole::unregisterListener() const
{
    return HeartRateMonitorProtocol::Base::unregisterListener( srcPort );
}

UMLRTOutSignal HeartRateMonitorProtocol_baserole::updateHeartRate( int heartRate ) const
{
    return HeartRateMonitorProtocol::Base::updateHeartRate( srcPort, heartRate );
}


HeartRateMonitorProtocol_conjrole::HeartRateMonitorProtocol_conjrole( const UMLRTCommsPort * srcPort )
: UMLRTProtocol( srcPort )
{
}

UMLRTOutSignal HeartRateMonitorProtocol_conjrole::registerListener() const
{
    return HeartRateMonitorProtocol::Conjugate::registerListener( srcPort );
}

UMLRTOutSignal HeartRateMonitorProtocol_conjrole::unregisterListener() const
{
    return HeartRateMonitorProtocol::Conjugate::unregisterListener( srcPort );
}

UMLRTOutSignal HeartRateMonitorProtocol_conjrole::updateHeartRate( int heartRate ) const
{
    return HeartRateMonitorProtocol::Conjugate::updateHeartRate( srcPort, heartRate );
}


