
#ifndef TOPCONTROLLERS_HH
#define TOPCONTROLLERS_HH

#include "umlrtcontroller.hh"
struct UMLRTCommsPort;
struct UMLRTSlot;

enum CapsuleInstanceId
{
    InstId_Top,
    InstId_Top_HeartRateMonitor,
    InstId_Top_GPSWatch
};
extern UMLRTController DefaultController;
extern UMLRTCommsPort borderports_Top_HeartRateMonitor[];
extern UMLRTCommsPort internalports_Top_HeartRateMonitor[];
extern UMLRTCommsPort borderports_Top_GPSWatch[];
extern UMLRTSlot Top_slots[];

#endif

