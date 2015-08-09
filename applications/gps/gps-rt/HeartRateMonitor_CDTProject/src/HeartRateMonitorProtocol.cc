
#include "HeartRateMonitorProtocol.hh"

#include "umlrtobjectclass.hh"
#include "umlrtoutsignal.hh"
struct UMLRTCommsPort;


UMLRTOutSignal HeartRateMonitorProtocol::OutSignals::updateHeartRate( const UMLRTCommsPort * sourcePort, int heartRate ) const
{
    UMLRTOutSignal signal;
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




HeartRateMonitorProtocol_baserole::HeartRateMonitorProtocol_baserole( const UMLRTCommsPort * srcPort )
: UMLRTProtocol( srcPort )
{
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

