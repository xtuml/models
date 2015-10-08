
#ifndef HEARTRATEMONITORPROTOCOL_HH
#define HEARTRATEMONITORPROTOCOL_HH

#include "umlrtoutsignal.hh"
#include "umlrtprotocol.hh"
#include "umlrtsignal.hh"
struct UMLRTCommsPort;

class HeartRateMonitorProtocol : public UMLRTProtocol
{
public:
    enum SignalId
    {
        signal_registerListener = UMLRTSignal::FIRST_PROTOCOL_SIGNAL_ID,
        signal_unregisterListener,
        signal_updateHeartRate
    };
    class OutSignals
    {
    public:
        UMLRTOutSignal updateHeartRate( const UMLRTCommsPort * sourcePort, int heartRate ) const;
    };
    class InSignals
    {
    public:
        UMLRTOutSignal registerListener( const UMLRTCommsPort * sourcePort ) const;
        UMLRTOutSignal unregisterListener( const UMLRTCommsPort * sourcePort ) const;
    };
    typedef OutSignals Base;
    typedef InSignals Conjugate;
};
class HeartRateMonitorProtocol_baserole : protected UMLRTProtocol, private HeartRateMonitorProtocol::Base
{
public:
    HeartRateMonitorProtocol_baserole( const UMLRTCommsPort * srcPort );
    UMLRTOutSignal updateHeartRate( int heartRate ) const;
};
class HeartRateMonitorProtocol_conjrole : protected UMLRTProtocol, private HeartRateMonitorProtocol::Conjugate
{
public:
    HeartRateMonitorProtocol_conjrole( const UMLRTCommsPort * srcPort );
    UMLRTOutSignal registerListener() const;
    UMLRTOutSignal unregisterListener() const;
};

#endif

