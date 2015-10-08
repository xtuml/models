
#include "GPSWatch.hh"

#include <cstddef>
#include "umlrtcapsuleclass.hh"
#include "umlrtcommsportrole.hh"
#include "umlrtframeservice.hh"
#include "umlrtslot.hh"
#include <cstddef>
class UMLRTRtsInterface;
struct UMLRTCommsPort;

Capsule_GPSWatch::Capsule_GPSWatch( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * internal, bool isStat )
: UMLRTCapsule( NULL, cd, st, border, internal, isStat )
{
}


HeartRateMonitorProtocol_baserole Capsule_GPSWatch::GPSPort() const
{
    return HeartRateMonitorProtocol_baserole( borderPorts[borderport_GPSPort] );
}



void Capsule_GPSWatch::bindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_GPSPort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_GPSPort, index, true );
            break;
        }
}

void Capsule_GPSWatch::unbindPort( bool isBorder, int portId, int index )
{
    if( isBorder )
        switch( portId )
        {
        case borderport_GPSPort:
            UMLRTFrameService::sendBoundUnbound( borderPorts, borderport_GPSPort, index, false );
            UMLRTFrameService::disconnectPort( borderPorts[borderport_GPSPort], index );
            break;
        }
}

void Capsule_GPSWatch::initialize( const UMLRTInMessage & msg )
{
}

void Capsule_GPSWatch::inject( const UMLRTInMessage & msg )
{
}

static const UMLRTCommsPortRole portroles_border[] = 
{
    {
        Capsule_GPSWatch::port_GPSPort,
        "HeartRateMonitorProtocol",
        "GPSPort",
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
static void instantiate_GPSWatch( const UMLRTRtsInterface * rts, UMLRTSlot * slot, const UMLRTCommsPort * * borderPorts )
{
    slot->capsule = new Capsule_GPSWatch( &GPSWatch, slot, borderPorts, NULL, false );
}
const UMLRTCapsuleClass GPSWatch = 
{
    "GPSWatch",
    NULL,
    instantiate_GPSWatch,
    0,
    NULL,
    1,
    portroles_border,
    0,
    NULL
};
