/*----------------------------------------------------------------------------
 * File:  dsl_INSTRUCTION_class.h
 *
 * Class:       instruction  (INSTRUCTION)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DSL_INSTRUCTION_CLASS_H
#define DSL_INSTRUCTION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   instruction  (INSTRUCTION)
 */
struct dsl_INSTRUCTION {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t location;  /* * location */
  /* - opcode */  /* OPTIMIZED OUT */
  /* - length */  /* OPTIMIZED OUT */

  /* relationship storage */
  /* Note:  No storage needed for INSTRUCTION->PROGRAM[R1] */
  void * R2_subtype;
  Escher_ClassNumber_t R2_object_id;
  /* Note:  No storage needed for INSTRUCTION->PROGRAM[R3] */
  dsl_INSTRUCTION * INSTRUCTION_R4_follows;
  dsl_INSTRUCTION * INSTRUCTION_R4;
  dsl_INSTRUCTION * INSTRUCTION_R5;
  dsl_INSTRUCTION * INSTRUCTION_R5_branches_to;
  /* Note:  No storage needed for INSTRUCTION->FORLOOP[R6] */
  /* Note:  No storage needed for INSTRUCTION->WHILELOOP[R7] */
};


/* Accessors to INSTRUCTION[R2] subtypes */
/* Note:  INSTRUCTION->OPIF[R2] not navigated */
/* Note:  INSTRUCTION->FORLOOP[R2] not navigated */
/* Note:  INSTRUCTION->DELAY[R2] not navigated */
/* Note:  INSTRUCTION->STEP[R2] not navigated */
/* Note:  INSTRUCTION->WHILELOOP[R2] not navigated */
/* Note:  INSTRUCTION->LEDCMD[R2] not navigated */
/* Note:  INSTRUCTION->ASCMD[R2] not navigated */

      
/*
 * R4 is Simple Reflexive:  0..1:0..1
 *  Formalizing INSTRUCTION follows participant
 *  Participant INSTRUCTION  formalizer
 */
/* Navigation phrase:  R4.'follows' */
/* Note:  R4.'follows' never related (or not needed).  */
/* Note:  R4.'follows' never unrelated (or not needed).  */
/* Navigation phrase:  R4.'' */
/* Note:  R4.'' never related (or not needed).  */
/* Note:  R4.'' never unrelated (or not needed).  */
      
/*
 * R5 is Simple Reflexive:  0..1:0..1
 *  Formalizing INSTRUCTION  participant
 *  Participant INSTRUCTION branches to formalizer
 */
/* Navigation phrase:  R5.'' */
/* Note:  R5.'' never related (or not needed).  */
/* Note:  R5.'' never unrelated (or not needed).  */
/* Navigation phrase:  R5.'branches to' */
/* Note:  R5.'branches to' never related (or not needed).  */
/* Note:  R5.'branches to' never unrelated (or not needed).  */


#define dsl_INSTRUCTION_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_INSTRUCTION_extent;

/*
 * instance event:  INSTRUCTION1:'load'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  INSTRUCTION2:'done'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  INSTRUCTION3:'run'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  INSTRUCTION4:'loaded'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define dsl_INSTRUCTION_STATE_1 1  /* state [1]:  (loading) */
#define dsl_INSTRUCTION_STATE_2 2  /* state [2]:  (loaded) */
#define dsl_INSTRUCTION_STATE_3 3  /* state [3]:  (executing) */
/*
 * enumeration of state model event numbers
 */
extern void dsl_INSTRUCTION_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_INSTRUCTION_CLASS_H */


