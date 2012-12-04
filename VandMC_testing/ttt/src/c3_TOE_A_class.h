/*----------------------------------------------------------------------------
 * File:  c3_TOE_A_class.h
 *
 * Class:       a  (TOE_A)
 * Component:   c3
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C3_TOE_A_CLASS_H
#define C3_TOE_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   a  (TOE_A)
 */
struct c3_TOE_A {

  /* application analysis class attributes */

};



#define c3_TOE_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_c3_TOE_A_extent;

/*
 * class-based event:  TOE_A_A1:'s1'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_sp1; /* sp1 */
} c3_TOE_A_CBevent1;
extern const Escher_xtUMLEventConstant_t c3_TOE_A_CBevent1c;

/*
 * union of events targeted towards 'TOE_A' state machine
 */
typedef union {
  c3_TOE_A_CBevent1 toe_a11;  
} c3_TOE_A_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define c3_TOE_A_CB_STATE_1 1  /* state [1]:  (toe_a_s1) */
#define c3_TOE_A_CB_STATE_2 2  /* state [2]:  (toe_a_s2) */

/*
 * enumeration of state model event numbers
 */
#define C3_TOE_A_CBEVENT1NUM 0  /* TOE_A_A1:'s1' */

extern void c3_TOE_A_CBDispatch( Escher_xtUMLEvent_t * );


#ifdef	__cplusplus
}
#endif

#endif  /* C3_TOE_A_CLASS_H */


