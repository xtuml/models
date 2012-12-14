/*----------------------------------------------------------------------------
 * File:  c2_TAC_A_class.h
 *
 * Class:       a  (TAC_A)
 * Component:   c2
 *
 * 
 *--------------------------------------------------------------------------*/

#ifndef C2_TAC_A_CLASS_H
#define C2_TAC_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   a  (TAC_A)
 */
struct c2_TAC_A {

  /* application analysis class attributes */
  i_t count;  /* - count */

};



#define c2_TAC_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_c2_TAC_A_extent;

/*
 * class-based event:  TAC_A_A1:'s1'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_sp1; /* sp1 */
} c2_TAC_A_CBevent1;
extern const Escher_xtUMLEventConstant_t c2_TAC_A_CBevent1c;

/*
 * union of events targeted towards 'TAC_A' state machine
 */
typedef union {
  c2_TAC_A_CBevent1 tac_a11;  
} c2_TAC_A_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define c2_TAC_A_CB_STATE_1 1  /* state [1]:  (tac_a_s1) */
#define c2_TAC_A_CB_STATE_2 2  /* state [2]:  (tac_a_s2) */

/*
 * enumeration of state model event numbers
 */
#define C2_TAC_A_CBEVENT1NUM 0  /* TAC_A_A1:'s1' */

extern void c2_TAC_A_CBDispatch( Escher_xtUMLEvent_t * );


#ifdef	__cplusplus
}
#endif

#endif  /* C2_TAC_A_CLASS_H */


