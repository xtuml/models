/*----------------------------------------------------------------------------
 * File:  dsl_COOKSTOP_class.h
 *
 * Class:       cook stop  (COOKSTOP)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
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
i_t dsl_COOKSTOP_op_load(  const dsl_PROGRAM *, const dsl_STEP * );
bool dsl_COOKSTOP_op_run( dsl_COOKSTOP * );

/* Note:  STEP<-R11->COOKSTOP never related (or note needed).  */
/* Note:  No STEP<-R11->COOKSTOP unrelate accessor needed.  */


#define dsl_COOKSTOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_COOKSTOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_COOKSTOP_CLASS_H */


