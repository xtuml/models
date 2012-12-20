/*----------------------------------------------------------------------------
 * File:  dsl_ASCMD_class.h
 *
 * Class:       autosampler command  (ASCMD)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_ASCMD_CLASS_H
#define DSL_ASCMD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   autosampler command  (ASCMD)
 */
struct dsl_ASCMD {

  /* application analysis class attributes */
  /* - opcode */  /* OPTIMIZED OUT */
  i_t location;  /* * location (R2) */
  /* - completion_event */  /* OPTIMIZED OUT */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R31_subtype;
  Escher_ClassNumber_t R31_object_id;
};
i_t dsl_ASCMD_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
bool dsl_ASCMD_op_run( dsl_ASCMD *, const Escher_xtUMLEvent_t * );

/* Note:  INSTRUCTION<-R2->ASCMD never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->ASCMD unrelate accessor needed.  */

/* Accessors to ASCMD[R31] subtypes */
/* Note:  ASCMD->CARHOME[R31] not navigated */
/* Note:  ASCMD->CARNEXT[R31] not navigated */
/* Note:  ASCMD->NEEDLEUP[R31] not navigated */
/* Note:  ASCMD->NEEDLEDOWN[R31] not navigated */



#define dsl_ASCMD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_ASCMD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_ASCMD_CLASS_H */


