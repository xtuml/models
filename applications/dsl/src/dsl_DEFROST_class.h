/*----------------------------------------------------------------------------
 * File:  dsl_DEFROST_class.h
 *
 * Class:       defrost  (DEFROST)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
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
i_t dsl_DEFROST_op_load(  const dsl_PROGRAM *, const dsl_STEP * );
bool dsl_DEFROST_op_run( dsl_DEFROST * );

/* Note:  STEP<-R11->DEFROST never related (or note needed).  */
/* Note:  No STEP<-R11->DEFROST unrelate accessor needed.  */


#define dsl_DEFROST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_DEFROST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_DEFROST_CLASS_H */


