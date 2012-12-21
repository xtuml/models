/*----------------------------------------------------------------------------
 * File:  polycalc_CARROT_class.h
 *
 * Class:       carrot  (CARROT)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_CARROT_CLASS_H
#define POLYCALC_CARROT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   carrot  (CARROT)
 */
struct polycalc_CARROT {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  polycalc_VEGETABLE * VEGETABLE_R4;
};

void polycalc_CARROT_R4_Link( polycalc_VEGETABLE *, polycalc_CARROT * );
/* Note:  No VEGETABLE<-R4->CARROT unrelate accessor needed.  */


#define polycalc_CARROT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_CARROT_extent;

/*
 * instance event:  VEGETABLE1*:'grow'
 * Note:  Event is mapped from polymorphic event VEGETABLE::VEGETABLE1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_CARROTevent_VEGETABLE_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_CARROTevent_VEGETABLE_PE1c;

/*
 * union of events targeted towards 'CARROT' state machine
 */
typedef union {
  polycalc_CARROTevent_VEGETABLE_PE1 carrot11;  
} polycalc_CARROT_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_CARROT_STATE_1 1  /* state [1]:  (weeding) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_CARROTEVENT_VEGETABLE_PE1NUM 0  /* VEGETABLE1*:'grow' */
extern void polycalc_CARROT_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_CARROT_CLASS_H */


