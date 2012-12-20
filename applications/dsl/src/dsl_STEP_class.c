/*----------------------------------------------------------------------------
 * File:  dsl_STEP_class.c
 *
 * Class:       cooking step  (STEP)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "dsl_classes.h"

/*
 * class operation:  load
 */
i_t
dsl_STEP_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_STEP * step; i_t length; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE step OF STEP */
  step = (dsl_STEP *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_STEP_CLASS_NUMBER );
  /* RELATE step TO instruction ACROSS R2 */
  dsl_STEP_R2_Link( instruction, step );
  /* ASSIGN step.opcode = instruction.opcode */
  step->opcode = instruction->opcode;
  /* ASSIGN length = 1 */
  length = 1;
  /* IF ( ( opdefrost == step.opcode ) ) */
  if ( ( 8 == step->opcode ) ) {
    /* ASSIGN length = DEFROST::load(program:program, step:step) */
    length = dsl_DEFROST_op_load(program, step);
  }
  else if ( ( 9 == step->opcode ) ) {
    /* ASSIGN length = COOK::load(program:program, step:step) */
    length = dsl_COOK_op_load(program, step);
  }
  else if ( ( 10 == step->opcode ) ) {
    /* ASSIGN length = SPIN::load(program:program, step:step) */
    length = dsl_SPIN_op_load(program, step);
  }
  else if ( ( 11 == step->opcode ) ) {
    /* ASSIGN length = SPINREVERSE::load(program:program, step:step) */
    length = dsl_SPINREVERSE_op_load(program, step);
  }
  else if ( ( 12 == step->opcode ) ) {
    /* ASSIGN length = COOKSTOP::load(program:program, step:step) */
    length = dsl_COOKSTOP_op_load(program, step);
  }
  else {
    /* LOG::LogFailure( message:'warning:  opcode not recognized' ) */
    LOG_LogFailure( "warning:  opcode not recognized" );
  }
  /* RETURN length */
  return length;

}

/*
 * instance operation:  run
 */
bool
dsl_STEP_op_run( dsl_STEP * self, Escher_xtUMLEvent_t * p_completion_event)
{
  Escher_xtUMLEvent_t * e; bool rv; 
  /* ASSIGN e = PARAM.completion_event */
  e = p_completion_event;
  /* ASSIGN rv = FALSE */
  rv = FALSE;
  /* IF ( ( opdefrost == self.opcode ) ) */
  if ( ( 8 == self->opcode ) ) {
    dsl_DEFROST * sub = 0; /* sub (DEFROST) */
 
    /* SELECT one sub RELATED BY self->DEFROST[R11] */
    sub = 0;
    if ( dsl_DEFROST_CLASS_NUMBER == self->R11_object_id )    sub = (dsl_DEFROST *) self->R11_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_DEFROST_op_run(sub);
  }
  else if ( ( 9 == self->opcode ) ) {
    dsl_COOK * sub = 0; /* sub (COOK) */
 
    /* SELECT one sub RELATED BY self->COOK[R11] */
    sub = 0;
    if ( dsl_COOK_CLASS_NUMBER == self->R11_object_id )    sub = (dsl_COOK *) self->R11_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_COOK_op_run(sub);
  }
  else if ( ( 10 == self->opcode ) ) {
    dsl_SPIN * sub = 0; /* sub (SPIN) */
 
    /* SELECT one sub RELATED BY self->SPIN[R11] */
    sub = 0;
    if ( dsl_SPIN_CLASS_NUMBER == self->R11_object_id )    sub = (dsl_SPIN *) self->R11_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_SPIN_op_run(sub);
  }
  else if ( ( 11 == self->opcode ) ) {
    dsl_SPINREVERSE * sub = 0; /* sub (SPINREVERSE) */
 
    /* SELECT one sub RELATED BY self->SPINREVERSE[R11] */
    sub = 0;
    if ( dsl_SPINREVERSE_CLASS_NUMBER == self->R11_object_id )    sub = (dsl_SPINREVERSE *) self->R11_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_SPINREVERSE_op_run(sub);
  }
  else if ( ( 12 == self->opcode ) ) {
    dsl_COOKSTOP * sub = 0; /* sub (COOKSTOP) */
 
    /* SELECT one sub RELATED BY self->COOKSTOP[R11] */
    sub = 0;
    if ( dsl_COOKSTOP_CLASS_NUMBER == self->R11_object_id )    sub = (dsl_COOKSTOP *) self->R11_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_COOKSTOP_op_run(sub);
  }
  else {
    /* LOG::LogFailure( message:'warning:  attempt to run invalid opcode' ) */
    LOG_LogFailure( "warning:  attempt to run invalid opcode" );
  }
  /* GENERATE e */
  Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  /* RETURN rv */
  return rv;

}


/*
 * RELATE INSTRUCTION TO STEP ACROSS R2
 */
void
dsl_STEP_R2_Link( dsl_INSTRUCTION * supertype, dsl_STEP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "STEP", "dsl_STEP_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for STEP->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->STEP[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_STEP_CLASS_NUMBER;
}


/* Accessors to STEP[R11] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cooking step  (STEP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_STEP_container[ dsl_STEP_MAX_EXTENT_SIZE ];
static dsl_STEP dsl_STEP_instances[ dsl_STEP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_STEP_extent = {
  {0}, {0}, &dsl_STEP_container[ 0 ],
  (Escher_iHandle_t) &dsl_STEP_instances,
  sizeof( dsl_STEP ), 0, dsl_STEP_MAX_EXTENT_SIZE
  };


