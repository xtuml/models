/*----------------------------------------------------------------------------
 * File:  dsl_OPIF_class.h
 *
 * Class:       if  (OPIF)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_OPIF_CLASS_H
#define DSL_OPIF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   if  (OPIF)
 */
struct dsl_OPIF {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  i_t condition;  /* - condition */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
};
i_t dsl_OPIF_op_load(  dsl_INSTRUCTION *, dsl_PROGRAM * );
void dsl_OPIF_op_run( dsl_OPIF * );

void dsl_OPIF_R2_Link( dsl_INSTRUCTION *, dsl_OPIF * );
/* Note:  No INSTRUCTION<-R2->OPIF unrelate accessor needed.  */


#define dsl_OPIF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_OPIF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_OPIF_CLASS_H */


