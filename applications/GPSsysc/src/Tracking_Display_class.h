/*----------------------------------------------------------------------------
 * File:  Tracking_Display_class.h
 *
 * Class:       Display  (Display)
 * Component:   Tracking
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_DISPLAY_CLASS_H
#define TRACKING_DISPLAY_CLASS_H



class Tracking; // forward reference
/*
 * Structural representation of application analysis class:
 *   Display  (Display)
 */
class Tracking_Display {
  public:

  /* application analysis class attributes */



};

#define Tracking_Display_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_Tracking_Display_extent;

/*
 * class-based event:  Display_A1:'modePressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Display_CBevent1;
extern const Escher_xtUMLEventConstant_t Tracking_Display_CBevent1c;

/*
 * class-based event:  Display_A2:'refresh'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Display_CBevent2;
extern const Escher_xtUMLEventConstant_t Tracking_Display_CBevent2c;

/*
 * union of events targeted towards 'Display' state machine
 */
typedef union {
  Tracking_Display_CBevent1 display11;  
  Tracking_Display_CBevent2 display22;  
} Tracking_Display_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define Tracking_Display_CB_STATE_1 1  /* state [1]:  (displayDistance) */
#define Tracking_Display_CB_STATE_2 2  /* state [2]:  (displaySpeed) */
#define Tracking_Display_CB_STATE_3 3  /* state [3]:  (displayPace) */
#define Tracking_Display_CB_STATE_4 4  /* state [4]:  (displayHeartRate) */
#define Tracking_Display_CB_STATE_5 5  /* state [5]:  (displayLapCount) */

/*
 * enumeration of state model event numbers
 */
#define TRACKING_DISPLAY_CBEVENT2NUM 0  /* Display_A2:'refresh' */
#define TRACKING_DISPLAY_CBEVENT1NUM 1  /* Display_A1:'modePressed' */

extern void Tracking_Display_CBDispatch( Escher_xtUMLEvent_t * );




#endif  /* TRACKING_DISPLAY_CLASS_H */


