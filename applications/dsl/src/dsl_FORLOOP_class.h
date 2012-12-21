/*----------------------------------------------------------------------------
 * File:  dsl_FORLOOP_class.h
 *
 * Class:       forloop  (FORLOOP)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_FORLOOP_CLASS_H
#define DSL_FORLOOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   forloop  (FORLOOP)
 */
struct dsl_FORLOOP {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  /* - count */  /* OPTIMIZED OUT */
  /* - counter */  /* OPTIMIZED OUT */
  /* - branch_offset */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  /* Note:  No storage needed for FORLOOP->INSTRUCTION[R6] */
};
i_t dsl_FORLOOP_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
bool dsl_FORLOOP_op_run( dsl_FORLOOP * );
void dsl_FORLOOP_op_resolve_branches( dsl_FORLOOP * );

/* Note:  INSTRUCTION<-R2->FORLOOP never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->FORLOOP unrelate accessor needed.  */
/* xtUML WARNING:  INSTRUCTION<-R6->FORLOOP never related!  */
/* Note:  INSTRUCTION<-R6->FORLOOP unrelate accessor not needed */


#define dsl_FORLOOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_FORLOOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_FORLOOP_CLASS_H */


