/*----------------------------------------------------------------------------
 * File:  dsl_LEDCMD_class.c
 *
 * Class:       LED command  (LEDCMD)
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
dsl_LEDCMD_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_LEDCMD * ledcmd; i_t length; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE ledcmd OF LEDCMD */
  ledcmd = (dsl_LEDCMD *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_LEDCMD_CLASS_NUMBER );
  /* RELATE ledcmd TO instruction ACROSS R2 */
  dsl_LEDCMD_R2_Link( instruction, ledcmd );
  /* ASSIGN ledcmd.opcode = instruction.opcode */
  ledcmd->opcode = instruction->opcode;
  /* ASSIGN length = 1 */
  length = 1;
  /* IF ( ( opLEDsoff == ledcmd.opcode ) ) */
  if ( ( 21 == ledcmd->opcode ) ) {
    /* ASSIGN length = LEDSOFF::load(ledcmd:ledcmd, program:program) */
    length = dsl_LEDSOFF_op_load(ledcmd, program);
  }
  else if ( ( 22 == ledcmd->opcode ) ) {
    /* ASSIGN length = LEDSON::load(ledcmd:ledcmd, program:program) */
    length = dsl_LEDSON_op_load(ledcmd, program);
  }
  else if ( ( 23 == ledcmd->opcode ) ) {
    /* ASSIGN length = LEDWALK::load(ledcmd:ledcmd, program:program) */
    length = dsl_LEDWALK_op_load(ledcmd, program);
  }
  else if ( ( 24 == ledcmd->opcode ) ) {
    /* ASSIGN length = LEDWORM::load(ledcmd:ledcmd, program:program) */
    length = dsl_LEDWORM_op_load(ledcmd, program);
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
dsl_LEDCMD_op_run( dsl_LEDCMD * self, Escher_xtUMLEvent_t * p_completion_event)
{
  Escher_xtUMLEvent_t * e; bool rv; 
  /* ASSIGN e = PARAM.completion_event */
  e = p_completion_event;
  /* ASSIGN rv = FALSE */
  rv = FALSE;
  /* IF ( ( opLEDson == self.opcode ) ) */
  if ( ( 22 == self->opcode ) ) {
    dsl_LEDSON * sub = 0; /* sub (LEDSON) */
 
    /* SELECT one sub RELATED BY self->LEDSON[R21] */
    sub = 0;
    if ( dsl_LEDSON_CLASS_NUMBER == self->R21_object_id )    sub = (dsl_LEDSON *) self->R21_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_LEDSON_op_run(sub);
  }
  else if ( ( 21 == self->opcode ) ) {
    dsl_LEDSOFF * sub = 0; /* sub (LEDSOFF) */
 
    /* SELECT one sub RELATED BY self->LEDSOFF[R21] */
    sub = 0;
    if ( dsl_LEDSOFF_CLASS_NUMBER == self->R21_object_id )    sub = (dsl_LEDSOFF *) self->R21_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_LEDSOFF_op_run(sub);
  }
  else if ( ( 23 == self->opcode ) ) {
    dsl_LEDWALK * sub = 0; /* sub (LEDWALK) */
 
    /* SELECT one sub RELATED BY self->LEDWALK[R21] */
    sub = 0;
    if ( dsl_LEDWALK_CLASS_NUMBER == self->R21_object_id )    sub = (dsl_LEDWALK *) self->R21_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_LEDWALK_op_run(sub);
  }
  else if ( ( 24 == self->opcode ) ) {
    dsl_LEDWORM * sub = 0; /* sub (LEDWORM) */
 
    /* SELECT one sub RELATED BY self->LEDWORM[R21] */
    sub = 0;
    if ( dsl_LEDWORM_CLASS_NUMBER == self->R21_object_id )    sub = (dsl_LEDWORM *) self->R21_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_LEDWORM_op_run(sub);
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
 * RELATE INSTRUCTION TO LEDCMD ACROSS R2
 */
void
dsl_LEDCMD_R2_Link( dsl_INSTRUCTION * supertype, dsl_LEDCMD * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LEDCMD", "dsl_LEDCMD_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for LEDCMD->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->LEDCMD[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_LEDCMD_CLASS_NUMBER;
}


/* Accessors to LEDCMD[R21] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LED command  (LEDCMD)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDCMD_container[ dsl_LEDCMD_MAX_EXTENT_SIZE ];
static dsl_LEDCMD dsl_LEDCMD_instances[ dsl_LEDCMD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDCMD_extent = {
  {0}, {0}, &dsl_LEDCMD_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDCMD_instances,
  sizeof( dsl_LEDCMD ), 0, dsl_LEDCMD_MAX_EXTENT_SIZE
  };


