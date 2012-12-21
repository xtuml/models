/*----------------------------------------------------------------------------
 * File:  dsl_LEDCMD_class.h
 *
 * Class:       LED command  (LEDCMD)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_LEDCMD_CLASS_H
#define DSL_LEDCMD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   LED command  (LEDCMD)
 */
struct dsl_LEDCMD {

  /* application analysis class attributes */
  /* - opcode */  /* OPTIMIZED OUT */
  i_t location;  /* * location (R2) */

  /* relationship storage */
  dsl_INSTRUCTION * INSTRUCTION_R2;
  void * R21_subtype;
  Escher_ClassNumber_t R21_object_id;
};
i_t dsl_LEDCMD_op_load(  const dsl_INSTRUCTION *, const dsl_PROGRAM * );
bool dsl_LEDCMD_op_run( dsl_LEDCMD *, const Escher_xtUMLEvent_t * );

/* Note:  INSTRUCTION<-R2->LEDCMD never related (or note needed).  */
/* Note:  No INSTRUCTION<-R2->LEDCMD unrelate accessor needed.  */

/* Accessors to LEDCMD[R21] subtypes */
/* Note:  LEDCMD->LEDSOFF[R21] not navigated */
/* Note:  LEDCMD->LEDSON[R21] not navigated */
/* Note:  LEDCMD->LEDWALK[R21] not navigated */
/* Note:  LEDCMD->LEDWORM[R21] not navigated */



#define dsl_LEDCMD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_LEDCMD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_LEDCMD_CLASS_H */


