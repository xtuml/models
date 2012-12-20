/*----------------------------------------------------------------------------
 * File:  dsl_DEFROST_class.h
 *
 * Class:       defrost  (DEFROST)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_DEFROST_CLASS_H
#define DSL_DEFROST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   defrost  (DEFROST)
 */
struct dsl_DEFROST {

  /* application analysis class attributes */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_DEFROST_op_load(  dsl_PROGRAM *, dsl_STEP * );
bool dsl_DEFROST_op_run( dsl_DEFROST * );

void dsl_DEFROST_R11_Link( dsl_STEP *, dsl_DEFROST * );
/* Note:  No STEP<-R11->DEFROST unrelate accessor needed.  */


#define dsl_DEFROST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_DEFROST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_DEFROST_CLASS_H */


