/*----------------------------------------------------------------------------
 * File:  dsl_SPIN_class.h
 *
 * Class:       spin  (SPIN)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_SPIN_CLASS_H
#define DSL_SPIN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   spin  (SPIN)
 */
struct dsl_SPIN {

  /* application analysis class attributes */
  i_t RPM;  /* - RPM */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_SPIN_op_load(  dsl_PROGRAM *, dsl_STEP * );
bool dsl_SPIN_op_run( dsl_SPIN * );

void dsl_SPIN_R11_Link( dsl_STEP *, dsl_SPIN * );
/* Note:  No STEP<-R11->SPIN unrelate accessor needed.  */


#define dsl_SPIN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_SPIN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_SPIN_CLASS_H */


