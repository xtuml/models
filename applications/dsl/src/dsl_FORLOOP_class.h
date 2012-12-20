/*----------------------------------------------------------------------------
 * File:  dsl_FORLOOP_class.h
 *
 * Class:       forloop  (FORLOOP)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_FORLOOP_CLASS_H
#define DSL_FORLOOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   forloop  (FORLOOP)
 */
struct dsl_FORLOOP {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  i_t count;  /* - count */
  i_t counter;  /* - counter */
  i_t branch_offset;  /* - branch_offset */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  dsl_INSTRUCTION * INSTRUCTION_R6;
};
i_t dsl_FORLOOP_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
bool dsl_FORLOOP_op_run( dsl_FORLOOP * );
void dsl_FORLOOP_op_resolve_branches( dsl_FORLOOP * );

void dsl_FORLOOP_R2_Link( dsl_INSTRUCTION *, dsl_FORLOOP * );
/* Note:  No INSTRUCTION<-R2->FORLOOP unrelate accessor needed.  */
void dsl_FORLOOP_R6_Link( dsl_INSTRUCTION *, dsl_FORLOOP * );
/* Note:  INSTRUCTION<-R6->FORLOOP unrelate accessor not needed */


#define dsl_FORLOOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_FORLOOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_FORLOOP_CLASS_H */


