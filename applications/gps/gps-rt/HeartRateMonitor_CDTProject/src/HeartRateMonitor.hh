
#ifndef HEARTRATEMONITOR_HH
#define HEARTRATEMONITOR_HH

#include "HeartRateMonitorProtocol.hh"
#include "umlrtcapsule.hh"
#include "umlrtcapsuleclass.hh"
#include "umlrtinmessage.hh"
#include "umlrttimerid.hh"
#include "umlrttimerprotocol.hh"
struct UMLRTCommsPort;
struct UMLRTSlot;

class Capsule_HeartRateMonitor : public UMLRTCapsule
{
public:
    Capsule_HeartRateMonitor( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * * internal, bool isStat );
    enum BorderPortId
    {
        borderport_HeartRatePort
    };
    enum InternalPortId
    {
        internalport_timer
    };
protected:
    HeartRateMonitorProtocol_baserole HeartRatePort() const;
    UMLRTTimerProtocol_baserole timer() const;
public:
    enum PartId
    {
    };
    enum PortId
    {
        port_HeartRatePort,
        port_timer
    };
    virtual void bindPort( bool isBorder, int portId, int index );
    virtual void unbindPort( bool isBorder, int portId, int index );
protected:
    UMLRTTimerId timerID;
public:
    int currentHeartRate;
    virtual void inject( const UMLRTInMessage & message );
    virtual void initialize( const UMLRTInMessage & message );
    const char * getCurrentStateString() const;
private:
    enum State
    {
        top__monitoring,
        top__idle,
        SPECIAL_INTERNAL_STATE_UNVISITED
    };
    const char * stateNames[2];
    State currentState;
    void entryaction_____top__init__ActionChain3__EntryAction10( const UMLRTInMessage & msg );
    void entryaction_____top__onUnregisterListener__ActionChain5__EntryAction13( const UMLRTInMessage & msg );
    void entryaction_____top__updateHeartbeat__ActionChain7__EntryAction15( const UMLRTInMessage & msg );
    void transitionaction_____top__init__ActionChain3__onInit( const UMLRTInMessage & msg );
    void transitionaction_____top__onRegisterListener__ActionChain4__TransitionAction11( const UMLRTInMessage & msg );
    void transitionaction_____top__onUnregisterListener__ActionChain5__TransitionAction12( const UMLRTInMessage & msg );
    void transitionaction_____top__updateHeartbeat__ActionChain7__TransitionAction14( const UMLRTInMessage & msg );
    void actionchain_____top__init__ActionChain3( const UMLRTInMessage & msg );
    void actionchain_____top__onRegisterListener__ActionChain4( const UMLRTInMessage & msg );
    void actionchain_____top__onUnregisterListener__ActionChain5( const UMLRTInMessage & msg );
    void actionchain_____top__updateHeartbeat__ActionChain7( const UMLRTInMessage & msg );
    State junction_____top__Junction1( const UMLRTInMessage & msg );
    State state_____top__monitoring( const UMLRTInMessage & msg );
    State state_____top__idle( const UMLRTInMessage & msg );
};
extern const UMLRTCapsuleClass HeartRateMonitor;

#endif

