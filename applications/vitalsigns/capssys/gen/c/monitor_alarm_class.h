/*----------------------------------------------------------------------------
 * File:  monitor_alarm_class.h
 *
 * Class:       alarm  (alarm)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_ALARM_CLASS_H
#define MONITOR_ALARM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   alarm  (alarm)
 */
struct monitor_alarm {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t vitalsign_name[ESCHER_SYS_MAX_STRING_LEN];  /* - vitalsign_name (R7) */
  capssys_color_t color;  /* - color */
  Escher_Timer_t * timer;  /* - timer */

  /* relationship storage */
  /* Note:  No storage needed for alarm->vitalsign[R7] */
};

void monitor_alarm_R7_Link_sounds( monitor_vitalsign *, monitor_alarm * );
void monitor_alarm_R7_Unlink_sounds( monitor_vitalsign *, monitor_alarm * );


#define monitor_alarm_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_monitor_alarm_extent;

/*
 * instance event:  alarm1:'silent_delay'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} monitor_alarmevent1;
extern const Escher_xtUMLEventConstant_t monitor_alarmevent1c;

/*
 * instance event:  alarm2:'clear'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} monitor_alarmevent2;
extern const Escher_xtUMLEventConstant_t monitor_alarmevent2c;

/*
 * instance event:  alarm3:'start'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * union of events targeted towards 'alarm' state machine
 */
typedef union {
  monitor_alarmevent1 alarm1_1;  
  monitor_alarmevent2 alarm2_2;  
} monitor_alarm_Events_u;

/*
 * enumeration of state model states for class
 */
#define monitor_alarm_STATE_1 1  /* state [1]:  (alarm triggered) */
#define monitor_alarm_STATE_2 2  /* state [2]:  (sounding audio) */
#define monitor_alarm_STATE_3 3  /* state [3]:  (cleared) */
#define monitor_alarm_STATE_4 4  /* state [4]:  (allowing resumption) */
/*
 * enumeration of state model event numbers
 */
#define MONITOR_ALARMEVENT1NUM 0  /* alarm1:'silent_delay' */
#define MONITOR_ALARMEVENT2NUM 1  /* alarm2:'clear' */
extern void monitor_alarm_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* MONITOR_ALARM_CLASS_H */


