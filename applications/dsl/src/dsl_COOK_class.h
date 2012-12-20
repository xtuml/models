/*----------------------------------------------------------------------------
 * File:  dsl_COOK_class.h
 *
 * Class:       cook  (COOK)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
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
  /* - power_level */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_STEP * STEP_R11;
};
i_t dsl_COOK_op_load(  const dsl_PROGRAM *, const dsl_STEP * );
bool dsl_COOK_op_run( dsl_COOK * );

/* Note:  STEP<-R11->COOK never related (or note needed).  */
/* Note:  No STEP<-R11->COOK unrelate accessor needed.  */


#define dsl_COOK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_COOK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_COOK_CLASS_H */


