/*----------------------------------------------------------------------------
 * File:  polycalc_OP_class.h
 *
 * Class:       op  (OP)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_OP_CLASS_H
#define POLYCALC_OP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   op  (OP)
 */
struct polycalc_OP {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t operatorr[ESCHER_SYS_MAX_STRING_LEN];  /* - operatorr */
  i_t left;  /* - left */
  i_t right;  /* - right */
  i_t result;  /* - result */

  /* relationship storage */
  void * R1_subtype;
  Escher_ClassNumber_t R1_object_id;
};


/* Accessors to OP[R1] subtypes */
#define polycalc_ADD_R1_From_OP( OP ) \
   ( (((OP)->R1_object_id) == polycalc_ADD_CLASS_NUMBER) ? \
     ((polycalc_ADD *)((OP)->R1_subtype)) : (0) )
#define polycalc_SUB_R1_From_OP( OP ) \
   ( (((OP)->R1_object_id) == polycalc_SUB_CLASS_NUMBER) ? \
     ((polycalc_SUB *)((OP)->R1_subtype)) : (0) )
#define polycalc_MUL_R1_From_OP( OP ) \
   ( (((OP)->R1_object_id) == polycalc_MUL_CLASS_NUMBER) ? \
     ((polycalc_MUL *)((OP)->R1_subtype)) : (0) )
#define polycalc_DIV_R1_From_OP( OP ) \
   ( (((OP)->R1_object_id) == polycalc_DIV_CLASS_NUMBER) ? \
     ((polycalc_DIV *)((OP)->R1_subtype)) : (0) )



#define polycalc_OP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_OP_extent;

/*
 * instance event:  OP2:'combine'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_OPevent2;
extern const Escher_xtUMLEventConstant_t polycalc_OPevent2c;

/*
 * instance event:  OP1:'local1'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  OP3:'done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_OPevent3;
extern const Escher_xtUMLEventConstant_t polycalc_OPevent3c;

/*
 * union of events targeted towards 'OP' state machine
 */
typedef union {
  polycalc_OPevent2 op21;  /* polymorphic event - not consumed by OP */
  polycalc_OPevent3 op32;  
} polycalc_OP_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_OP_STATE_1 1  /* state [1]:  (combining) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_OPEVENT3NUM 0  /* OP3:'done' */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_OPEVENT2NUM 1  /* OP2:'combine' */
extern void polycalc_OP_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_OP_R1PolymorphicEvent( const polycalc_OP * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_OP_CLASS_H */


