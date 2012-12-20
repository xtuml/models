/*----------------------------------------------------------------------------
 * File:  dsl_FORLOOP_class.c
 *
 * Class:       forloop  (FORLOOP)
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
dsl_FORLOOP_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_FORLOOP * forloop; i_t low; i_t high; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE forloop OF FORLOOP */
  forloop = (dsl_FORLOOP *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_FORLOOP_CLASS_NUMBER );
  /* RELATE forloop TO instruction ACROSS R2 */
  dsl_FORLOOP_R2_Link( instruction, forloop );
  /* ASSIGN low = program.store[( program->PC + 1 )] */
  low = program->store[( program->PC + 1 )];
  /* ASSIGN high = program.store[( program->PC + 2 )] */
  high = program->store[( program->PC + 2 )];
  /* ASSIGN forloop.count = ( ( high * 256 ) + low ) */
  forloop->count = ( ( high * 256 ) + low );
  /* ASSIGN low = program.store[( program->PC + 3 )] */
  low = program->store[( program->PC + 3 )];
  /* ASSIGN high = program.store[( program->PC + 4 )] */
  high = program->store[( program->PC + 4 )];
  /* ASSIGN forloop.branch_offset = ( ( high * 256 ) + low ) */
  forloop->branch_offset = ( ( high * 256 ) + low );
  /* ASSIGN forloop.counter = 0 */
  forloop->counter = 0;
  /* RETURN 5 */
  return 5;

}

/*
 * instance operation:  run
 */
bool
dsl_FORLOOP_op_run( dsl_FORLOOP * self)
{
  bool loop_done; 
  /* LOG::LogInteger( message:self.counter ) */
  LOG_LogInteger( self->counter );
  /* ASSIGN loop_done = FALSE */
  loop_done = FALSE;
  /* IF ( ( self.counter < self.count ) ) */
  if ( ( self->counter < self->count ) ) {
    /* ASSIGN self.counter = ( self.counter + 1 ) */
    self->counter = ( self->counter + 1 );
  }
  else {
    /* ASSIGN self.counter = 0 */
    self->counter = 0;
    /* ASSIGN loop_done = TRUE */
    loop_done = TRUE;
  }
  /* RETURN loop_done */
  return loop_done;

}

/*
 * instance operation:  resolve_branches
 */
void
dsl_FORLOOP_op_resolve_branches( dsl_FORLOOP * self)
{
  dsl_INSTRUCTION * instruction = 0; /* instruction (INSTRUCTION) */
 dsl_INSTRUCTION * end_of_loop; i_t i; dsl_INSTRUCTION * continuing_on = 0; /* continuing_on (INSTRUCTION) */
 
  /* SELECT one instruction RELATED BY self->INSTRUCTION[R2] */
  instruction = self->INSTRUCTION_R2;
  /* ASSIGN end_of_loop = instruction */
  end_of_loop = instruction;
  /* ASSIGN i = self.branch_offset */
  i = self->branch_offset;
  /* WHILE ( ( i > 0 ) ) */
  while ( ( i > 0 ) ) {
    /* SELECT one end_of_loop RELATED BY end_of_loop->INSTRUCTION[R4.follows] */
    end_of_loop = end_of_loop->INSTRUCTION_R4_follows;
    /* ASSIGN i = ( i - 1 ) */
    i = ( i - 1 );
  }
  /* SELECT one continuing_on RELATED BY end_of_loop->INSTRUCTION[R4.follows] */
  continuing_on = end_of_loop->INSTRUCTION_R4_follows;
  /* SELECT one instruction RELATED BY self->INSTRUCTION[R2] */
  instruction = self->INSTRUCTION_R2;
  /* RELATE end_of_loop TO instruction ACROSS R5 */
  dsl_INSTRUCTION_R5_Link_branches_to( end_of_loop, instruction );
  /* IF ( not_empty continuing_on ) */
  if ( ( 0 != continuing_on ) ) {
    /* RELATE self TO continuing_on ACROSS R6 */
    dsl_FORLOOP_R6_Link( continuing_on, self );
  }

}


/*
 * RELATE INSTRUCTION TO FORLOOP ACROSS R2
 */
void
dsl_FORLOOP_R2_Link( dsl_INSTRUCTION * supertype, dsl_FORLOOP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "FORLOOP", "dsl_FORLOOP_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for FORLOOP->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->FORLOOP[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_FORLOOP_CLASS_NUMBER;
}


/*
 * RELATE INSTRUCTION TO FORLOOP ACROSS R6
 */
void
dsl_FORLOOP_R6_Link( dsl_INSTRUCTION * part, dsl_FORLOOP * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "FORLOOP", "dsl_FORLOOP_R6_Link" );
    return;
  }
  form->INSTRUCTION_R6 = part;
  /* Note:  INSTRUCTION->FORLOOP[R6] not navigated */
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      forloop  (FORLOOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_FORLOOP_container[ dsl_FORLOOP_MAX_EXTENT_SIZE ];
static dsl_FORLOOP dsl_FORLOOP_instances[ dsl_FORLOOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_FORLOOP_extent = {
  {0}, {0}, &dsl_FORLOOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_FORLOOP_instances,
  sizeof( dsl_FORLOOP ), 0, dsl_FORLOOP_MAX_EXTENT_SIZE
  };


