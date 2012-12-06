/*----------------------------------------------------------------------------
 * File:  c1_PONG_class.h
 *
 * Class:       pong  (PONG)
 * Component:   c1
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C1_PONG_CLASS_H
#define C1_PONG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   pong  (PONG)
 */
struct c1_PONG {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t s[ESCHER_SYS_MAX_STRING_LEN];  /* - s */

  /* relationship storage */
  c1_PING * PING_R1;
};



#define c1_PONG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_c1_PONG_extent;

/*
 * instance event:  PONG1:'back'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} c1_PONGevent1;
extern const Escher_xtUMLEventConstant_t c1_PONGevent1c;

/*
 * union of events targeted towards 'PONG' state machine
 */
typedef union {
  c1_PONGevent1 pong11;  
} c1_PONG_Events_u;

/*
 * enumeration of state model states for class
 */
#define c1_PONG_STATE_1 1  /* state [1]:  (pong one) */
#define c1_PONG_STATE_2 2  /* state [2]:  (pong two) */
/*
 * enumeration of state model event numbers
 */
#define C1_PONGEVENT1NUM 0  /* PONG1:'back' */
extern void c1_PONG_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* C1_PONG_CLASS_H */


