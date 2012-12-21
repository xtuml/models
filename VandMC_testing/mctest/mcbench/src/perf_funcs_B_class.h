/*----------------------------------------------------------------------------
 * File:  perf_funcs_B_class.h
 *
 * Class:       b  (B)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_B_CLASS_H
#define PERF_FUNCS_B_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   b  (B)
 */
struct perf_funcs_B {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t bID;  /* * bID */

  /* relationship storage */
  perf_funcs_A * A_R1;
};



#define perf_funcs_B_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_B_extent;

/*
 * instance event:  B1:'e1'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_Bevent1;
extern const Escher_xtUMLEventConstant_t perf_funcs_Bevent1c;

/*
 * union of events targeted towards 'B' state machine
 */
typedef union {
  perf_funcs_Bevent1 b11;  
} perf_funcs_B_Events_u;

/*
 * enumeration of state model states for class
 */
#define perf_funcs_B_STATE_1 1  /* state [1]:  (answering) */
/*
 * enumeration of state model event numbers
 */
#define PERF_FUNCS_BEVENT1NUM 0  /* B1:'e1' */
extern void perf_funcs_B_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_B_CLASS_H */


