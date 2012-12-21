/*----------------------------------------------------------------------------
 * File:  dsl_WHILELOOP_class.h
 *
 * Class:       whileloop  (WHILELOOP)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_WHILELOOP_CLASS_H
#define DSL_WHILELOOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   whileloop  (WHILELOOP)
 */
struct dsl_WHILELOOP {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  /* - condition */  /* OPTIMIZED OUT */
  /* - branch_offset */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  /* Note:  No storage needed for WHILELOOP->INSTRUCTION[R7] */
};
i_t dsl_WHILELOOP_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
void dsl_WHILELOOP_op_run( dsl_WHILELOOP * );

/* Note:  INSTRUCTION<-R2->WHILELOOP never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->WHILELOOP unrelate accessor needed.  */
/* xtUML WARNING:  INSTRUCTION<-R7->WHILELOOP never related!  */
/* Note:  INSTRUCTION<-R7->WHILELOOP unrelate accessor not needed */


#define dsl_WHILELOOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_WHILELOOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_WHILELOOP_CLASS_H */


