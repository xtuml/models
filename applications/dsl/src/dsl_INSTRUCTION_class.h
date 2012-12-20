/*----------------------------------------------------------------------------
 * File:  dsl_INSTRUCTION_class.h
 *
 * Class:       instruction  (INSTRUCTION)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
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
  i_t opcode;  /* - opcode */
  i_t length;  /* - length */

  /* relationship storage */
  /* Note:  No storage needed for INSTRUCTION->PROGRAM[R1] */
  void * R2_subtype;
  Escher_ClassNumber_t R2_object_id;
  dsl_PROGRAM * PROGRAM_R3;
  dsl_INSTRUCTION * INSTRUCTION_R4_follows;
  dsl_INSTRUCTION * INSTRUCTION_R4;
  dsl_INSTRUCTION * INSTRUCTION_R5;
  dsl_INSTRUCTION * INSTRUCTION_R5_branches_to;
  /* Note:  No storage needed for INSTRUCTION->FORLOOP[R6] */
  /* Note:  No storage needed for INSTRUCTION->WHILELOOP[R7] */
};


/* Accessors to INSTRUCTION[R2] subtypes */
#define dsl_OPIF_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_OPIF_CLASS_NUMBER) ? \
     ((dsl_OPIF *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_FORLOOP_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_FORLOOP_CLASS_NUMBER) ? \
     ((dsl_FORLOOP *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_DELAY_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_DELAY_CLASS_NUMBER) ? \
     ((dsl_DELAY *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_STEP_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_STEP_CLASS_NUMBER) ? \
     ((dsl_STEP *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_WHILELOOP_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_WHILELOOP_CLASS_NUMBER) ? \
     ((dsl_WHILELOOP *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_LEDCMD_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_LEDCMD_CLASS_NUMBER) ? \
     ((dsl_LEDCMD *)((INSTRUCTION)->R2_subtype)) : (0) )
#define dsl_ASCMD_R2_From_INSTRUCTION( INSTRUCTION ) \
   ( (((INSTRUCTION)->R2_object_id) == dsl_ASCMD_CLASS_NUMBER) ? \
     ((dsl_ASCMD *)((INSTRUCTION)->R2_subtype)) : (0) )

      
/*
 * R4 is Simple Reflexive:  0..1:0..1
 *  Formalizing INSTRUCTION follows participant
 *  Participant INSTRUCTION  formalizer
 */
/* Navigation phrase:  R4.'follows' */
void dsl_INSTRUCTION_R4_Link_follows( dsl_INSTRUCTION *, dsl_INSTRUCTION * );
/* Note:  R4.'follows' never unrelated (or not needed).  */
/* Navigation phrase:  R4.'' */
void dsl_INSTRUCTION_R4_Link( dsl_INSTRUCTION *, dsl_INSTRUCTION * );
/* Note:  R4.'' never unrelated (or not needed).  */
      
/*
 * R5 is Simple Reflexive:  0..1:0..1
 *  Formalizing INSTRUCTION  participant
 *  Participant INSTRUCTION branches to formalizer
 */
/* Navigation phrase:  R5.'' */
void dsl_INSTRUCTION_R5_Link( dsl_INSTRUCTION *, dsl_INSTRUCTION * );
/* Note:  R5.'' never unrelated (or not needed).  */
/* Navigation phrase:  R5.'branches to' */
void dsl_INSTRUCTION_R5_Link_branches_to( dsl_INSTRUCTION *, dsl_INSTRUCTION * );
/* Note:  R5.'branches to' never unrelated (or not needed).  */


#define dsl_INSTRUCTION_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_dsl_INSTRUCTION_extent;

/*
 * instance event:  INSTRUCTION1:'load'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  dsl_INSTRUCTION * p_previous_instruction; /* previous_instruction */
} dsl_INSTRUCTIONevent1;
extern const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent1c;

/*
 * instance event:  INSTRUCTION2:'done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  dsl_INSTRUCTION * p_next; /* next */
} dsl_INSTRUCTIONevent2;
extern const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent2c;

/*
 * instance event:  INSTRUCTION3:'run'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} dsl_INSTRUCTIONevent3;
extern const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent3c;

/*
 * instance event:  INSTRUCTION4:'loaded'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} dsl_INSTRUCTIONevent4;
extern const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent4c;

/*
 * union of events targeted towards 'INSTRUCTION' state machine
 */
typedef union {
  dsl_INSTRUCTIONevent1 instruction11;  
  dsl_INSTRUCTIONevent2 instruction22;  
  dsl_INSTRUCTIONevent3 instruction33;  
  dsl_INSTRUCTIONevent4 instruction44;  
} dsl_INSTRUCTION_Events_u;

/*
 * enumeration of state model states for class
 */
#define dsl_INSTRUCTION_STATE_1 1  /* state [1]:  (loading) */
#define dsl_INSTRUCTION_STATE_2 2  /* state [2]:  (loaded) */
#define dsl_INSTRUCTION_STATE_3 3  /* state [3]:  (executing) */
/*
 * enumeration of state model event numbers
 */
#define DSL_INSTRUCTIONEVENT1NUM 0  /* INSTRUCTION1:'load' */
#define DSL_INSTRUCTIONEVENT2NUM 1  /* INSTRUCTION2:'done' */
#define DSL_INSTRUCTIONEVENT3NUM 2  /* INSTRUCTION3:'run' */
#define DSL_INSTRUCTIONEVENT4NUM 3  /* INSTRUCTION4:'loaded' */
extern void dsl_INSTRUCTION_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DSL_INSTRUCTION_CLASS_H */


