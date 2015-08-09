
#ifndef TOP_HH
#define TOP_HH

#include "GPSWatch.hh"
#include "HeartRateMonitor.hh"
#include "umlrtcapsule.hh"
#include "umlrtcapsuleclass.hh"
#include "umlrtinmessage.hh"
struct UMLRTCapsulePart;
struct UMLRTCommsPort;
struct UMLRTSlot;

class Capsule_Top : public UMLRTCapsule
{
public:
    Capsule_Top( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * internal, bool isStat );
    enum PartId
    {
        part_GPSWatch,
        part_HeartRateMonitor
    };
protected:
    const UMLRTCapsulePart * GPSWatch() const;
    const UMLRTCapsulePart * HeartRateMonitor() const;
public:
    virtual void bindPort( bool isBorder, int portId, int index );
    virtual void unbindPort( bool isBorder, int portId, int index );
    GPSWatch gpswatch;
    HeartRateMonitor heartratemonitor;
    virtual void initialize( const UMLRTInMessage & msg );
    virtual void inject( const UMLRTInMessage & msg );
};
extern const UMLRTCapsuleClass Top;

#endif

