/*----------------------------------------------------------------------------
 * File:  assoc_unformal_B_class.h
 *
 * Class:       socket  (B)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef ASSOC_UNFORMAL_B_CLASS_H
#define ASSOC_UNFORMAL_B_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   socket  (B)
 */
struct assoc_unformal_B {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t i;  /* - i */

  /* relationship storage */
  assoc_unformal_A * A_R1;
};



#define assoc_unformal_B_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_assoc_unformal_B_extent;

/*
 * instance event:  B1:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} assoc_unformal_Bevent1;
extern const Escher_xtUMLEventConstant_t assoc_unformal_Bevent1c;

/*
 * union of events targeted towards 'B' state machine
 */
typedef union {
  assoc_unformal_Bevent1 b11;  
} assoc_unformal_B_Events_u;

/*
 * enumeration of state model states for class
 */
#define assoc_unformal_B_STATE_1 1  /* state [1]:  (first) */
#define assoc_unformal_B_STATE_2 2  /* state [2]:  (second) */
#define assoc_unformal_B_STATE_3 3  /* state [3]:  (third) */
/*
 * enumeration of state model event numbers
 */
#define ASSOC_UNFORMAL_BEVENT1NUM 0  /* B1:'go' */
extern void assoc_unformal_B_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* ASSOC_UNFORMAL_B_CLASS_H */


