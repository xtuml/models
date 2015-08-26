
#include "Top.hh"

#include "GPSWatch.hh"
#include "HeartRateMonitor.hh"
#include "umlrtcapsuleclass.hh"
#include "umlrtcapsulepart.hh"
#include "umlrtslot.hh"
#include <cstddef>
#include "umlrtcapsuleclass.hh"
#include "umlrtcapsulepart.hh"
#include "umlrtcapsulerole.hh"
#include "umlrtcommsport.hh"
#include "umlrtframeservice.hh"
#include <cstddef>
class UMLRTRtsInterface;

Capsule_Top::Capsule_Top( const UMLRTCapsuleClass * cd, UMLRTSlot * st, const UMLRTCommsPort * * border, const UMLRTCommsPort * * internal, bool isStat )
: UMLRTCapsule( NULL, cd, st, border, internal, isStat )
{
}


const UMLRTCapsulePart * Capsule_Top::GPSWatch() const
{
    return &slot->parts[part_GPSWatch];
}

const UMLRTCapsulePart * Capsule_Top::HeartRateMonitor() const
{
    return &slot->parts[part_HeartRateMonitor];
}

void Capsule_Top::bindPort( bool isBorder, int portId, int index )
{
}

void Capsule_Top::unbindPort( bool isBorder, int portId, int index )
{
}

void Capsule_Top::initialize( const UMLRTInMessage & msg )
{
}

void Capsule_Top::inject( const UMLRTInMessage & msg )
{
}


static const UMLRTCapsuleRole roles[] = 
{
    {
        "GPSWatch",
        &GPSWatch,
        1,
        1,
        false,
        false
    },
    {
        "HeartRateMonitor",
        &HeartRateMonitor,
        1,
        1,
        false,
        false
    }
};

static void instantiate_Top( const UMLRTRtsInterface * rts, UMLRTSlot * slot, const UMLRTCommsPort * * borderPorts )
{
    UMLRTFrameService::connectPorts( &slot->parts[Capsule_Top::part_GPSWatch].slots[0]->ports[Capsule_GPSWatch::borderport_GPSPort], 0, &slot->parts[Capsule_Top::part_HeartRateMonitor].slots[0]->ports[Capsule_HeartRateMonitor::borderport_HeartRatePort], 0 );
    GPSWatch.instantiate( NULL, slot->parts[Capsule_Top::part_GPSWatch].slots[0], UMLRTFrameService::createBorderPorts( slot->parts[Capsule_Top::part_GPSWatch].slots[0], GPSWatch.numPortRolesBorder ) );
    HeartRateMonitor.instantiate( NULL, slot->parts[Capsule_Top::part_HeartRateMonitor].slots[0], UMLRTFrameService::createBorderPorts( slot->parts[Capsule_Top::part_HeartRateMonitor].slots[0], HeartRateMonitor.numPortRolesBorder ) );
    slot->capsule = new Capsule_Top( &Top, slot, borderPorts, NULL, false );
}

const UMLRTCapsuleClass Top = 
{
    "Top",
    NULL,
    instantiate_Top,
    2,
    roles,
    0,
    NULL,
    0,
    NULL
};

