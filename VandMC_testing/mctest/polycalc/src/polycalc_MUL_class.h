/*----------------------------------------------------------------------------
 * File:  polycalc_MUL_class.h
 *
 * Class:       mul  (MUL)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_MUL_CLASS_H
#define POLYCALC_MUL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   mul  (MUL)
 */
struct polycalc_MUL {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  /* relationship storage */
  polycalc_OP * OP_R1;
};

void polycalc_MUL_R1_Link( polycalc_OP *, polycalc_MUL * );
/* Note:  No OP<-R1->MUL unrelate accessor needed.  */

#define polycalc_MUL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_MUL_extent;

/*
 * instance event:  OP2*:'combine'
 * Note:  Event is mapped from polymorphic event OP::OP2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_MULevent_OP_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_MULevent_OP_PE2c;
/*
 * union of events targeted towards 'MUL' state machine
 */
typedef union {
  polycalc_MULevent_OP_PE2 mul2_1;  
} polycalc_MUL_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_MUL_STATE_1 1  /* state [1]:  (mul1) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_MULEVENT_OP_PE2NUM 0  /* OP2*:'combine' */
extern void polycalc_MUL_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_MUL_CLASS_H */
