/*----------------------------------------------------------------------------
 * File:  dsl_OPIF_class.h
 *
 * Class:       if  (OPIF)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_OPIF_CLASS_H
#define DSL_OPIF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   if  (OPIF)
 */
struct dsl_OPIF {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  /* - condition */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
};
i_t dsl_OPIF_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
void dsl_OPIF_op_run( dsl_OPIF * );

/* Note:  INSTRUCTION<-R2->OPIF never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->OPIF unrelate accessor needed.  */


#define dsl_OPIF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_OPIF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_OPIF_CLASS_H */


