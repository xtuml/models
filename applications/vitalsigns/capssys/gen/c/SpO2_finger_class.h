/*----------------------------------------------------------------------------
 * File:  SpO2_finger_class.h
 *
 * Class:       finger  (finger)
 * Component:   SpO2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SPO2_FINGER_CLASS_H
#define SPO2_FINGER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   finger  (finger)
 */
struct SpO2_finger {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t O2saturation[8];  /* - O2saturation */
  i_t O2sum;  /* - O2sum */
  i_t pulse[8];  /* - pulse */
  i_t pulsesum;  /* - pulsesum */
  i_t index;  /* - index */
  Escher_Timer_t * timer;  /* - timer */
  bool simulation;  /* - simulation */

};
void SpO2_finger_op_init( void );
void SpO2_finger_op_off( void );
void SpO2_finger_op_on( void );



#define SpO2_finger_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_SpO2_finger_extent;

/*
 * instance event:  finger1:'tick'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} SpO2_fingerevent1;
extern const Escher_xtUMLEventConstant_t SpO2_fingerevent1c;

/*
 * instance event:  finger2:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} SpO2_fingerevent2;
extern const Escher_xtUMLEventConstant_t SpO2_fingerevent2c;

/*
 * instance event:  finger3:'stop'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} SpO2_fingerevent3;
extern const Escher_xtUMLEventConstant_t SpO2_fingerevent3c;

/*
 * union of events targeted towards 'finger' state machine
 */
typedef union {
  SpO2_fingerevent1 finger1_1;  
  SpO2_fingerevent2 finger2_2;  
  SpO2_fingerevent3 finger3_3;  
} SpO2_finger_Events_u;

/*
 * enumeration of state model states for class
 */
#define SpO2_finger_STATE_1 1  /* state [1]:  (idle) */
#define SpO2_finger_STATE_2 2  /* state [2]:  (reading) */
/*
 * enumeration of state model event numbers
 */
#define SPO2_FINGEREVENT1NUM 0  /* finger1:'tick' */
#define SPO2_FINGEREVENT2NUM 1  /* finger2:'go' */
#define SPO2_FINGEREVENT3NUM 2  /* finger3:'stop' */
extern void SpO2_finger_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* SPO2_FINGER_CLASS_H */


