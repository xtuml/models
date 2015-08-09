
#ifndef CONTROLLERS_HH
#define CONTROLLERS_HH

#include "umlrtcontroller.hh"
struct UMLRTCommsPort;
struct UMLRTSlot;

enum CapsuleInstanceId
{
    InstId_Top,
    InstId_Top_GPSWatch,
    InstId_Top_HeartRateMonitor
};
extern UMLRTController DefaultController;
extern UMLRTCommsPort borderports_Top_GPSWatch[];
extern UMLRTCommsPort borderports_Top_HeartRateMonitor[];
extern UMLRTSlot Top_slots[];

#endif

