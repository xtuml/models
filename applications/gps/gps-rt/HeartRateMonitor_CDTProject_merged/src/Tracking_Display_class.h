/*----------------------------------------------------------------------------
 * File:  Tracking_Display_class.h
 *
 * Class:       Display  (Display)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_DISPLAY_CLASS_H
#define TRACKING_DISPLAY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Display  (Display)
 */
struct Tracking_Display {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  Tracking_WorkoutSession * WorkoutSession_R7_indicates_current_status_of;
};
GPSWatch_Indicator_t Tracking_Display_op_goalDispositionIndicator( void );

void Tracking_Display_R7_Link_current_status_indicated_on( Tracking_WorkoutSession *, Tracking_Display * );
/* Note:  WorkoutSession<-R7->Display unrelate accessor not needed */


#define Tracking_Display_MAX_EXTENT_SIZE 200
extern Escher_Extent_t pG_Tracking_Display_extent;

/*
 * instance event:  Display1:'modeChange'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Displayevent1;
extern const Escher_xtUMLEventConstant_t Tracking_Displayevent1c;

/*
 * instance event:  Display2:'refresh'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Tracking_Displayevent2;
extern const Escher_xtUMLEventConstant_t Tracking_Displayevent2c;

/*
 * union of events targeted towards 'Display' state machine
 */
typedef union {
  Tracking_Displayevent1 display1_1;  
  Tracking_Displayevent2 display2_2;  
} Tracking_Display_Events_u;

/*
 * enumeration of state model states for class
 */
#define Tracking_Display_STATE_1 1  /* state [1]:  (displayDistance) */
#define Tracking_Display_STATE_2 2  /* state [2]:  (displaySpeed) */
#define Tracking_Display_STATE_3 3  /* state [3]:  (displayPace) */
#define Tracking_Display_STATE_4 4  /* state [4]:  (displayHeartRate) */
#define Tracking_Display_STATE_5 5  /* state [5]:  (displayLapCount) */
/*
 * enumeration of state model event numbers
 */
#define TRACKING_DISPLAYEVENT1NUM 0  /* Display1:'modeChange' */
#define TRACKING_DISPLAYEVENT2NUM 1  /* Display2:'refresh' */
extern void Tracking_Display_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* TRACKING_DISPLAY_CLASS_H */


