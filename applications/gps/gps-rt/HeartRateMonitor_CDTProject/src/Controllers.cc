
#include "Controllers.hh"

#include "GPSWatch.hh"
#include "HeartRateMonitor.hh"
#include "Top.hh"
#include "GPSWatch.hh"
#include "HeartRateMonitor.hh"
#include "Top.hh"
#include "umlrtcapsuleclass.hh"
#include "umlrtcapsulepart.hh"
#include "umlrtcommsport.hh"
#include "umlrtcommsportfarend.hh"
#include "umlrtcontroller.hh"
#include "umlrtslot.hh"
#include <cstddef>

UMLRTController DefaultController( "DefaultController" );
static Capsule_Top top( &Top, &Top_slots[InstId_Top], NULL, NULL, true );
static UMLRTSlot * slots_Top[] = 
{
    &Top_slots[InstId_Top_GPSWatch],
    &Top_slots[InstId_Top_HeartRateMonitor]
};
static UMLRTCapsulePart parts_Top[] = 
{
    {
        &Top,
        Capsule_Top::part_GPSWatch,
        1,
        &slots_Top[0]
    },
    {
        &Top,
        Capsule_Top::part_HeartRateMonitor,
        1,
        &slots_Top[1]
    }
};
static UMLRTCommsPortFarEnd borderfarEndList_Top_HeartRateMonitor[] = 
{
    {
        0,
        &borderports_Top_GPSWatch[Capsule_GPSWatch::borderport_GPSPort]
    },
    {
        0,
        NULL
    }
};
UMLRTCommsPort borderports_Top_HeartRateMonitor[] = 
{
    {
        &HeartRateMonitor,
        Capsule_HeartRateMonitor::borderport_HeartRatePort,
        &Top_slots[InstId_Top_HeartRateMonitor],
        1,
        borderfarEndList_Top_HeartRateMonitor,
        NULL,
        NULL,
        true,
        true,
        true,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        true
    },
    {
        &HeartRateMonitor,
        Capsule_HeartRateMonitor::borderport_timer,
        &Top_slots[InstId_Top_HeartRateMonitor],
        1,
        &borderfarEndList_Top_HeartRateMonitor[1],
        NULL,
        NULL,
        true,
        true,
        true,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        true
    }
};
static const UMLRTCommsPort * borderports_Top_HeartRateMonitor_ptrs[] = 
{
    &borderports_Top_HeartRateMonitor[0],
    &borderports_Top_HeartRateMonitor[1]
};
static Capsule_HeartRateMonitor top_HeartRateMonitor( &HeartRateMonitor, &Top_slots[InstId_Top_HeartRateMonitor], borderports_Top_HeartRateMonitor_ptrs, NULL, true );
static UMLRTCommsPortFarEnd borderfarEndList_Top_GPSWatch[] = 
{
    {
        0,
        &borderports_Top_HeartRateMonitor[Capsule_HeartRateMonitor::borderport_HeartRatePort]
    }
};
UMLRTCommsPort borderports_Top_GPSWatch[] = 
{
    {
        &GPSWatch,
        Capsule_GPSWatch::borderport_GPSPort,
        &Top_slots[InstId_Top_GPSWatch],
        1,
        borderfarEndList_Top_GPSWatch,
        NULL,
        NULL,
        true,
        true,
        true,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        true
    }
};
static const UMLRTCommsPort * borderports_Top_GPSWatch_ptrs[] = 
{
    &borderports_Top_GPSWatch[0]
};
static Capsule_GPSWatch top_GPSWatch( &GPSWatch, &Top_slots[InstId_Top_GPSWatch], borderports_Top_GPSWatch_ptrs, NULL, true );
UMLRTSlot Top_slots[] = 
{
    {
        "Top",
        0,
        &Top,
        NULL,
        0,
        &top,
        &DefaultController,
        2,
        parts_Top,
        0,
        NULL,
        NULL,
        true,
        false
    },
    {
        "Top.HeartRateMonitor",
        0,
        &HeartRateMonitor,
        &Top,
        Capsule_Top::part_HeartRateMonitor,
        &top_HeartRateMonitor,
        &DefaultController,
        0,
        NULL,
        2,
        borderports_Top_HeartRateMonitor,
        NULL,
        true,
        false
    },
    {
        "Top.GPSWatch",
        0,
        &GPSWatch,
        &Top,
        Capsule_Top::part_GPSWatch,
        &top_GPSWatch,
        &DefaultController,
        0,
        NULL,
        1,
        borderports_Top_GPSWatch,
        NULL,
        true,
        false
    }
};
