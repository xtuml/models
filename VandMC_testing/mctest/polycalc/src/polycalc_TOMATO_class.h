/*----------------------------------------------------------------------------
 * File:  polycalc_TOMATO_class.h
 *
 * Class:       tomato  (TOMATO)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_TOMATO_CLASS_H
#define POLYCALC_TOMATO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   tomato  (TOMATO)
 */
struct polycalc_TOMATO {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t diameter;  /* - diameter */

  /* relationship storage */
  polycalc_FRUIT * FRUIT_R3;
  polycalc_VEGETABLE * VEGETABLE_R4;
};

void polycalc_TOMATO_R3_Link( polycalc_FRUIT *, polycalc_TOMATO * );
/* Note:  No FRUIT<-R3->TOMATO unrelate accessor needed.  */
void polycalc_TOMATO_R4_Link( polycalc_VEGETABLE *, polycalc_TOMATO * );
/* Note:  No VEGETABLE<-R4->TOMATO unrelate accessor needed.  */


#define polycalc_TOMATO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_TOMATO_extent;

/*
 * instance event:  FRUIT1*:'juice'
 * Note:  Event is mapped from polymorphic event FRUIT::FRUIT1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_TOMATOevent_FRUIT_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_TOMATOevent_FRUIT_PE1c;

/*
 * instance event:  VEGETABLE1*:'grow'
 * Note:  Event is mapped from polymorphic event VEGETABLE::VEGETABLE1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_TOMATOevent_VEGETABLE_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_TOMATOevent_VEGETABLE_PE1c;

/*
 * union of events targeted towards 'TOMATO' state machine
 */
typedef union {
  polycalc_TOMATOevent_FRUIT_PE1 tomato11;  
  polycalc_TOMATOevent_VEGETABLE_PE1 tomato12;  
} polycalc_TOMATO_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_TOMATO_STATE_1 1  /* state [1]:  (juicing) */
#define polycalc_TOMATO_STATE_2 2  /* state [2]:  (weeding) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_TOMATOEVENT_FRUIT_PE1NUM 0  /* FRUIT1*:'juice' */
#define POLYCALC_TOMATOEVENT_VEGETABLE_PE1NUM 1  /* VEGETABLE1*:'grow' */
extern void polycalc_TOMATO_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_TOMATO_CLASS_H */


