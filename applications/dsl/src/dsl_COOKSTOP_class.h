/*----------------------------------------------------------------------------
 * File:  dsl_COOKSTOP_class.h
 *
 * Class:       cook stop  (COOKSTOP)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_COOKSTOP_CLASS_H
#define DSL_COOKSTOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   cook stop  (COOKSTOP)
 */
struct dsl_COOKSTOP {

  /* application analysis class attributes */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_COOKSTOP_op_load(  dsl_PROGRAM *, dsl_STEP * );
bool dsl_COOKSTOP_op_run( dsl_COOKSTOP * );

void dsl_COOKSTOP_R11_Link( dsl_STEP *, dsl_COOKSTOP * );
/* Note:  No STEP<-R11->COOKSTOP unrelate accessor needed.  */


#define dsl_COOKSTOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_COOKSTOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_COOKSTOP_CLASS_H */


