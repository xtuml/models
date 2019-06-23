/*----------------------------------------------------------------------------
 * File:  polycalc_DIV_class.h
 *
 * Class:       div  (DIV)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_DIV_CLASS_H
#define POLYCALC_DIV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   div  (DIV)
 */
struct polycalc_DIV {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  /* relationship storage */
  polycalc_OP * OP_R1;
};

void polycalc_DIV_R1_Link( polycalc_OP *, polycalc_DIV * );
/* Note:  No OP<-R1->DIV unrelate accessor needed.  */

#define polycalc_DIV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_DIV_extent;

/*
 * instance event:  DIV1:'local1'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  OP2*:'combine'
 * Note:  Event is mapped from polymorphic event OP::OP2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_DIVevent_OP_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_DIVevent_OP_PE2c;
/*
 * union of events targeted towards 'DIV' state machine
 */
typedef union {
  polycalc_DIVevent_OP_PE2 div2_1;  
} polycalc_DIV_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_DIV_STATE_1 1  /* state [1]:  (div1) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_DIVEVENT_OP_PE2NUM 0  /* OP2*:'combine' */
extern void polycalc_DIV_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_DIV_CLASS_H */
