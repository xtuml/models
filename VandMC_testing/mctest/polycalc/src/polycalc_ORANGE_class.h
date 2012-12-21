/*----------------------------------------------------------------------------
 * File:  polycalc_ORANGE_class.h
 *
 * Class:       orange  (ORANGE)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_ORANGE_CLASS_H
#define POLYCALC_ORANGE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   orange  (ORANGE)
 */
struct polycalc_ORANGE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t state[ESCHER_SYS_MAX_STRING_LEN];  /* - state */

  /* relationship storage */
  polycalc_FRUIT * FRUIT_R3;
};

void polycalc_ORANGE_R3_Link( polycalc_FRUIT *, polycalc_ORANGE * );
/* Note:  No FRUIT<-R3->ORANGE unrelate accessor needed.  */


#define polycalc_ORANGE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_ORANGE_extent;

/*
 * instance event:  FRUIT1*:'juice'
 * Note:  Event is mapped from polymorphic event FRUIT::FRUIT1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_ORANGEevent_FRUIT_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_ORANGEevent_FRUIT_PE1c;

/*
 * union of events targeted towards 'ORANGE' state machine
 */
typedef union {
  polycalc_ORANGEevent_FRUIT_PE1 orange11;  
} polycalc_ORANGE_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_ORANGE_STATE_1 1  /* state [1]:  (squirt) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_ORANGEEVENT_FRUIT_PE1NUM 0  /* FRUIT1*:'juice' */
extern void polycalc_ORANGE_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_ORANGE_CLASS_H */


