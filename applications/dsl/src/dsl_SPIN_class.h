/*----------------------------------------------------------------------------
 * File:  dsl_SPIN_class.h
 *
 * Class:       spin  (SPIN)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
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
  /* - RPM */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_SPIN_op_load(  const dsl_PROGRAM *, const dsl_STEP * );
bool dsl_SPIN_op_run( dsl_SPIN * );

/* Note:  STEP<-R11->SPIN never related (or note needed).  */
/* Note:  No STEP<-R11->SPIN unrelate accessor needed.  */


#define dsl_SPIN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_SPIN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_SPIN_CLASS_H */


