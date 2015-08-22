
#ifndef GPSWATCH_HH
#define GPSWATCH_HH

#include "HeartRateMonitorProtocol.hh"
#include "umlrtcapsule.hh"
#include "umlrtcapsuleclass.hh"
#include "umlrtinmessage.hh"
struct UMLRTCommsPort;
struct UMLRTSlot;

class Capsule_GPSWatch : public UMLRTCapsule
{
public:
    Capsule_GPSWatch( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * * internal, bool isStat );
    enum BorderPortId
    {
        borderport_GPSPort
    };
protected:
    HeartRateMonitorProtocol_baserole GPSPort() const;
public:
    enum PartId
    {
    };
    enum PortId
    {
        port_GPSPort
    };
    virtual void bindPort( bool isBorder, int portId, int index );
    virtual void unbindPort( bool isBorder, int portId, int index );
    virtual void inject( const UMLRTInMessage & message );
    virtual void initialize( const UMLRTInMessage & message );
    const char * getCurrentStateString() const;
private:
    enum State
    {
        top__Updating,
        top__Initializing,
        SPECIAL_INTERNAL_STATE_UNVISITED
    };
    const char * stateNames[2];
    State currentState;
    void entryaction_____top__initialize__ActionChain2__onEntry( const UMLRTInMessage & msg );
    void entryaction_____top__reupdate__ActionChain6__onEntry( const UMLRTInMessage & msg );
    void entryaction_____top__update__ActionChain4__onEntry( const UMLRTInMessage & msg );
    void transitionaction_____top__initialize__ActionChain2__onInit( const UMLRTInMessage & msg );
    void actionchain_____top__initialize__ActionChain2( const UMLRTInMessage & msg );
    void actionchain_____top__reupdate__ActionChain6( const UMLRTInMessage & msg );
    void actionchain_____top__update__ActionChain4( const UMLRTInMessage & msg );
    State state_____top__Updating( const UMLRTInMessage & msg );
    State state_____top__Initializing( const UMLRTInMessage & msg );
};
extern const UMLRTCapsuleClass GPSWatch;

#endif

