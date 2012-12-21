/*----------------------------------------------------------------------------
 * File:  dsl_SPINREVERSE_class.h
 *
 * Class:       spin reverse  (SPINREVERSE)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
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
i_t dsl_SPINREVERSE_op_load(  const dsl_PROGRAM *, const dsl_STEP * );
bool dsl_SPINREVERSE_op_run( dsl_SPINREVERSE * );

/* Note:  STEP<-R11->SPINREVERSE never related (or note needed).  */
/* Note:  No STEP<-R11->SPINREVERSE unrelate accessor needed.  */


#define dsl_SPINREVERSE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_SPINREVERSE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_SPINREVERSE_CLASS_H */


