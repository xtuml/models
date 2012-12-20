/*----------------------------------------------------------------------------
 * File:  dsl_SPINREVERSE_class.h
 *
 * Class:       spin reverse  (SPINREVERSE)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_SPINREVERSE_CLASS_H
#define DSL_SPINREVERSE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   spin reverse  (SPINREVERSE)
 */
struct dsl_SPINREVERSE {

  /* application analysis class attributes */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_SPINREVERSE_op_load(  dsl_PROGRAM *, dsl_STEP * );
bool dsl_SPINREVERSE_op_run( dsl_SPINREVERSE * );

void dsl_SPINREVERSE_R11_Link( dsl_STEP *, dsl_SPINREVERSE * );
/* Note:  No STEP<-R11->SPINREVERSE unrelate accessor needed.  */


#define dsl_SPINREVERSE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_SPINREVERSE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_SPINREVERSE_CLASS_H */


