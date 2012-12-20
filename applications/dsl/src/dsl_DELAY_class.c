/*----------------------------------------------------------------------------
 * File:  dsl_DELAY_class.c
 *
 * Class:       delay  (DELAY)
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
dsl_DELAY_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_DELAY * delay; i_t low; i_t high; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE delay OF DELAY */
  delay = (dsl_DELAY *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_DELAY_CLASS_NUMBER );
  /* RELATE delay TO instruction ACROSS R2 */
  dsl_DELAY_R2_Link( instruction, delay );
  /* ASSIGN low = program.store[( program->PC + 1 )] */
  low = program->store[( program->PC + 1 )];
  /* ASSIGN high = program.store[( program->PC + 2 )] */
  high = program->store[( program->PC + 2 )];
  /* ASSIGN delay.milliseconds = ( ( high * 256 ) + low ) */
  delay->milliseconds = ( ( high * 256 ) + low );
  /* ASSIGN low = program.store[( program->PC + 3 )] */
  low = program->store[( program->PC + 3 )];
  /* ASSIGN high = program.store[( program->PC + 4 )] */
  high = program->store[( program->PC + 4 )];
  /* ASSIGN delay.seconds = ( ( high * 256 ) + low ) */
  delay->seconds = ( ( high * 256 ) + low );
  /* RETURN 5 */
  return 5;

}

/*
 * instance operation:  run
 */
void
dsl_DELAY_op_run( dsl_DELAY * self, Escher_xtUMLEvent_t * p_completion_event)
{
  Escher_Timer_t * t; 
  /* LOG::LogInfo( message:'delay' ) */
  LOG_LogInfo( "delay" );
  /* ASSIGN t = TIM::timer_start(event_inst:PARAM.completion_event, microseconds:( self.milliseconds * 1000 )) */
  t = TIM_timer_start( (Escher_xtUMLEvent_t *)p_completion_event, ( self->milliseconds * 1000 ) );

}


/*
 * RELATE INSTRUCTION TO DELAY ACROSS R2
 */
void
dsl_DELAY_R2_Link( dsl_INSTRUCTION * supertype, dsl_DELAY * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DELAY", "dsl_DELAY_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for DELAY->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->DELAY[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_DELAY_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      delay  (DELAY)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_DELAY_container[ dsl_DELAY_MAX_EXTENT_SIZE ];
static dsl_DELAY dsl_DELAY_instances[ dsl_DELAY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_DELAY_extent = {
  {0}, {0}, &dsl_DELAY_container[ 0 ],
  (Escher_iHandle_t) &dsl_DELAY_instances,
  sizeof( dsl_DELAY ), 0, dsl_DELAY_MAX_EXTENT_SIZE
  };


