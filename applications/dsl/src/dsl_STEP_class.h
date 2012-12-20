/*----------------------------------------------------------------------------
 * File:  dsl_STEP_class.h
 *
 * Class:       cooking step  (STEP)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_STEP_CLASS_H
#define DSL_STEP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   cooking step  (STEP)
 */
struct dsl_STEP {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  i_t opcode;  /* - opcode */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R11_subtype;
  Escher_ClassNumber_t R11_object_id;
};
i_t dsl_STEP_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
bool dsl_STEP_op_run( dsl_STEP *, Escher_xtUMLEvent_t * );

void dsl_STEP_R2_Link( dsl_INSTRUCTION *, dsl_STEP * );
/* Note:  No INSTRUCTION<-R2->STEP unrelate accessor needed.  */

/* Accessors to STEP[R11] subtypes */
#define dsl_DEFROST_R11_From_STEP( STEP ) \
   ( (((STEP)->R11_object_id) == dsl_DEFROST_CLASS_NUMBER) ? \
     ((dsl_DEFROST *)((STEP)->R11_subtype)) : (0) )
#define dsl_COOK_R11_From_STEP( STEP ) \
   ( (((STEP)->R11_object_id) == dsl_COOK_CLASS_NUMBER) ? \
     ((dsl_COOK *)((STEP)->R11_subtype)) : (0) )
#define dsl_SPIN_R11_From_STEP( STEP ) \
   ( (((STEP)->R11_object_id) == dsl_SPIN_CLASS_NUMBER) ? \
     ((dsl_SPIN *)((STEP)->R11_subtype)) : (0) )
#define dsl_SPINREVERSE_R11_From_STEP( STEP ) \
   ( (((STEP)->R11_object_id) == dsl_SPINREVERSE_CLASS_NUMBER) ? \
     ((dsl_SPINREVERSE *)((STEP)->R11_subtype)) : (0) )
#define dsl_COOKSTOP_R11_From_STEP( STEP ) \
   ( (((STEP)->R11_object_id) == dsl_COOKSTOP_CLASS_NUMBER) ? \
     ((dsl_COOKSTOP *)((STEP)->R11_subtype)) : (0) )



#define dsl_STEP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_STEP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_STEP_CLASS_H */


