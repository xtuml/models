
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
    Capsule_GPSWatch( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * internal, bool isStat );
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
    virtual void initialize( const UMLRTInMessage & msg );
    virtual void inject( const UMLRTInMessage & msg );
};
extern const UMLRTCapsuleClass GPSWatch;

#endif

