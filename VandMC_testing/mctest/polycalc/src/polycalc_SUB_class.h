/*----------------------------------------------------------------------------
 * File:  polycalc_SUB_class.h
 *
 * Class:       sub  (SUB)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_SUB_CLASS_H
#define POLYCALC_SUB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   sub  (SUB)
 */
struct polycalc_SUB {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  /* relationship storage */
  polycalc_OP * OP_R1;
};

void polycalc_SUB_R1_Link( polycalc_OP *, polycalc_SUB * );
/* Note:  No OP<-R1->SUB unrelate accessor needed.  */

#define polycalc_SUB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_SUB_extent;

/*
 * instance event:  SUB1:'Unnamed Event'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  OP2*:'combine'
 * Note:  Event is mapped from polymorphic event OP::OP2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_SUBevent_OP_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_SUBevent_OP_PE2c;
/*
 * union of events targeted towards 'SUB' state machine
 */
typedef union {
  polycalc_SUBevent_OP_PE2 sub2_1;  
} polycalc_SUB_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_SUB_STATE_1 1  /* state [1]:  (sub1) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_SUBEVENT_OP_PE2NUM 0  /* OP2*:'combine' */
extern void polycalc_SUB_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_SUB_CLASS_H */
