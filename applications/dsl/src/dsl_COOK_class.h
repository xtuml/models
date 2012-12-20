/*----------------------------------------------------------------------------
 * File:  dsl_COOK_class.h
 *
 * Class:       cook  (COOK)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef DSL_COOK_CLASS_H
#define DSL_COOK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   cook  (COOK)
 */
struct dsl_COOK {

  /* application analysis class attributes */
  i_t power_level;  /* - power_level */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_COOK_op_load(  dsl_PROGRAM *, dsl_STEP * );
bool dsl_COOK_op_run( dsl_COOK * );

void dsl_COOK_R11_Link( dsl_STEP *, dsl_COOK * );
/* Note:  No STEP<-R11->COOK unrelate accessor needed.  */


#define dsl_COOK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_COOK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_COOK_CLASS_H */


