/*----------------------------------------------------------------------------
 * File:  dsl_ASCMD_class.c
 *
 * Class:       autosampler command  (ASCMD)
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
dsl_ASCMD_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_ASCMD * ascmd; i_t length; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE ascmd OF ASCMD */
  ascmd = (dsl_ASCMD *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_ASCMD_CLASS_NUMBER );
  /* RELATE ascmd TO instruction ACROSS R2 */
  dsl_ASCMD_R2_Link( instruction, ascmd );
  /* ASSIGN ascmd.opcode = instruction.opcode */
  ascmd->opcode = instruction->opcode;
  /* ASSIGN length = 1 */
  length = 1;
  /* IF ( ( opcarhome == ascmd.opcode ) ) */
  if ( ( 31 == ascmd->opcode ) ) {
    /* ASSIGN length = CARHOME::load(ascmd:ascmd, program:program) */
    length = dsl_CARHOME_op_load(ascmd, program);
  }
  else if ( ( 32 == ascmd->opcode ) ) {
    /* ASSIGN length = CARNEXT::load(ascmd:ascmd, program:program) */
    length = dsl_CARNEXT_op_load(ascmd, program);
  }
  else if ( ( 33 == ascmd->opcode ) ) {
    /* ASSIGN length = NEEDLEUP::load(ascmd:ascmd, program:program) */
    length = dsl_NEEDLEUP_op_load(ascmd, program);
  }
  else if ( ( 34 == ascmd->opcode ) ) {
    /* ASSIGN length = NEEDLEDOWN::load(ascmd:ascmd, program:program) */
    length = dsl_NEEDLEDOWN_op_load(ascmd, program);
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
dsl_ASCMD_op_run( dsl_ASCMD * self, Escher_xtUMLEvent_t * p_completion_event)
{
  bool rv; 
  /* ASSIGN rv = FALSE */
  rv = FALSE;
  /* ASSIGN self.completion_event = PARAM.completion_event */
  self->completion_event = p_completion_event;
  /* IF ( ( opcarhome == self.opcode ) ) */
  if ( ( 31 == self->opcode ) ) {
    dsl_CARHOME * sub = 0; /* sub (CARHOME) */
 
    /* SELECT one sub RELATED BY self->CARHOME[R31] */
    sub = 0;
    if ( dsl_CARHOME_CLASS_NUMBER == self->R31_object_id )    sub = (dsl_CARHOME *) self->R31_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_CARHOME_op_run(sub);
  }
  else if ( ( 32 == self->opcode ) ) {
    dsl_CARNEXT * sub = 0; /* sub (CARNEXT) */
 
    /* SELECT one sub RELATED BY self->CARNEXT[R31] */
    sub = 0;
    if ( dsl_CARNEXT_CLASS_NUMBER == self->R31_object_id )    sub = (dsl_CARNEXT *) self->R31_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_CARNEXT_op_run(sub);
  }
  else if ( ( 33 == self->opcode ) ) {
    dsl_NEEDLEUP * sub = 0; /* sub (NEEDLEUP) */
 
    /* SELECT one sub RELATED BY self->NEEDLEUP[R31] */
    sub = 0;
    if ( dsl_NEEDLEUP_CLASS_NUMBER == self->R31_object_id )    sub = (dsl_NEEDLEUP *) self->R31_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_NEEDLEUP_op_run(sub);
  }
  else if ( ( 34 == self->opcode ) ) {
    dsl_NEEDLEDOWN * sub = 0; /* sub (NEEDLEDOWN) */
 
    /* SELECT one sub RELATED BY self->NEEDLEDOWN[R31] */
    sub = 0;
    if ( dsl_NEEDLEDOWN_CLASS_NUMBER == self->R31_object_id )    sub = (dsl_NEEDLEDOWN *) self->R31_subtype;
    /* ASSIGN rv = sub.run() */
    rv = dsl_NEEDLEDOWN_op_run(sub);
  }
  else {
    /* LOG::LogFailure( message:'warning:  attempt to run invalid opcode' ) */
    LOG_LogFailure( "warning:  attempt to run invalid opcode" );
  }
  /* RETURN rv */
  return rv;

}


/*
 * RELATE INSTRUCTION TO ASCMD ACROSS R2
 */
void
dsl_ASCMD_R2_Link( dsl_INSTRUCTION * supertype, dsl_ASCMD * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ASCMD", "dsl_ASCMD_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for ASCMD->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->ASCMD[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_ASCMD_CLASS_NUMBER;
}


/* Accessors to ASCMD[R31] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      autosampler command  (ASCMD)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_ASCMD_container[ dsl_ASCMD_MAX_EXTENT_SIZE ];
static dsl_ASCMD dsl_ASCMD_instances[ dsl_ASCMD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_ASCMD_extent = {
  {0}, {0}, &dsl_ASCMD_container[ 0 ],
  (Escher_iHandle_t) &dsl_ASCMD_instances,
  sizeof( dsl_ASCMD ), 0, dsl_ASCMD_MAX_EXTENT_SIZE
  };


