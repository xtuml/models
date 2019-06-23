/*----------------------------------------------------------------------------
 * File:  polycalc_TAPE_class.h
 *
 * Class:       tape drive  (TAPE)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_TAPE_CLASS_H
#define POLYCALC_TAPE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   tape drive  (TAPE)
 */
struct polycalc_TAPE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t speed;  /* - speed */
  /* relationship storage */
  polycalc_LOCATION * LOCATION_R100;
};

void polycalc_TAPE_R100_Link( polycalc_LOCATION *, polycalc_TAPE * );
void polycalc_TAPE_R100_Unlink( polycalc_LOCATION *, polycalc_TAPE * );

#define polycalc_TAPE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_TAPE_extent;

/*
 * instance event:  LOCATION3*:'spinup'
 * Note:  Event is mapped from polymorphic event LOCATION::LOCATION3. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_TAPEevent_LOCATION_PE3;
extern const Escher_xtUMLEventConstant_t polycalc_TAPEevent_LOCATION_PE3c;
/*
 * union of events targeted towards 'TAPE' state machine
 */
typedef union {
  polycalc_TAPEevent_LOCATION_PE3 tape3_1;  
} polycalc_TAPE_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_TAPE_STATE_1 1  /* state [1]:  (spinning up) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_TAPEEVENT_LOCATION_PE3NUM 0  /* LOCATION3*:'spinup' */
extern void polycalc_TAPE_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_TAPE_CLASS_H */
