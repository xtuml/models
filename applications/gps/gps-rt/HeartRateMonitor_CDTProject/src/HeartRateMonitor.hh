
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
    Capsule_HeartRateMonitor( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * internal, bool isStat );
    enum BorderPortId
    {
        borderport_HeartRatePort,
        borderport_timer
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
    UMLRTTimerId timerID;
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
    void entryaction_____top__onRegisterListener__ActionChain6__onEntry( const UMLRTInMessage & msg );
    void actionchain_____top__onRegisterListener__ActionChain6( const UMLRTInMessage & msg );
    State state_____top__monitoring( const UMLRTInMessage & msg );
    State state_____top__idle( const UMLRTInMessage & msg );
};
extern const UMLRTCapsuleClass HeartRateMonitor;

#endif

