/*----------------------------------------------------------------------------
 * File:  dsl_STEP_class.h
 *
 * Class:       cooking step  (STEP)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_STEP_CLASS_H
#define DSL_STEP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   cooking step  (STEP)
 */
struct dsl_STEP {

  /* application analysis class attributes */
  i_t location;  /* * location (R2) */
  /* - opcode */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R11_subtype;
  Escher_ClassNumber_t R11_object_id;
};
i_t dsl_STEP_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
bool dsl_STEP_op_run( dsl_STEP *, const Escher_xtUMLEvent_t * );

/* Note:  INSTRUCTION<-R2->STEP never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->STEP unrelate accessor needed.  */

/* Accessors to STEP[R11] subtypes */
/* Note:  STEP->DEFROST[R11] not navigated */
/* Note:  STEP->COOK[R11] not navigated */
/* Note:  STEP->SPIN[R11] not navigated */
/* Note:  STEP->SPINREVERSE[R11] not navigated */
/* Note:  STEP->COOKSTOP[R11] not navigated */



#define dsl_STEP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_STEP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_STEP_CLASS_H */


