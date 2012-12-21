/*----------------------------------------------------------------------------
 * File:  dsl_DELAY_class.h
 *
 * Class:       delay  (DELAY)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_DELAY_CLASS_H
#define DSL_DELAY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   delay  (DELAY)
 */
struct dsl_DELAY {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  /* - milliseconds */  /* OPTIMIZED OUT */
  /* - seconds */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
};
i_t dsl_DELAY_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
void dsl_DELAY_op_run( dsl_DELAY *, const Escher_xtUMLEvent_t * );

/* Note:  INSTRUCTION<-R2->DELAY never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->DELAY unrelate accessor needed.  */


#define dsl_DELAY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_DELAY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_DELAY_CLASS_H */


