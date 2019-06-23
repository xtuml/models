/*----------------------------------------------------------------------------
 * File:  polycalc_ADD_class.h
 *
 * Class:       add  (ADD)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_ADD_CLASS_H
#define POLYCALC_ADD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   add  (ADD)
 */
struct polycalc_ADD {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  /* relationship storage */
  polycalc_OP * OP_R1;
};

void polycalc_ADD_R1_Link( polycalc_OP *, polycalc_ADD * );
/* Note:  No OP<-R1->ADD unrelate accessor needed.  */

#define polycalc_ADD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_ADD_extent;

/*
 * instance event:  ADD1:'local1'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  ADD2:'local2'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  OP2*:'combine'
 * Note:  Event is mapped from polymorphic event OP::OP2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_ADDevent_OP_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_ADDevent_OP_PE2c;
/*
 * union of events targeted towards 'ADD' state machine
 */
typedef union {
  polycalc_ADDevent_OP_PE2 add2_1;  
} polycalc_ADD_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_ADD_STATE_1 1  /* state [1]:  (add1) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_ADDEVENT_OP_PE2NUM 0  /* OP2*:'combine' */
extern void polycalc_ADD_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_ADD_CLASS_H */
