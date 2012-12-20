/*----------------------------------------------------------------------------
 * File:  dsl_OPIF_class.c
 *
 * Class:       if  (OPIF)
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
dsl_OPIF_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_PROGRAM * program; dsl_OPIF * opif; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE opif OF OPIF */
  opif = (dsl_OPIF *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_OPIF_CLASS_NUMBER );
  /* RELATE opif TO instruction ACROSS R2 */
  dsl_OPIF_R2_Link( instruction, opif );
  /* ASSIGN opif.condition = program.store[( program->PC + 1 )] */
  opif->condition = program->store[( program->PC + 1 )];
  /* RETURN 2 */
  return 2;

}

/*
 * instance operation:  run
 */
void
dsl_OPIF_op_run( dsl_OPIF * self)
{
  /* LOG::LogInfo( message:'if' ) */
  LOG_LogInfo( "if" );

}


/*
 * RELATE INSTRUCTION TO OPIF ACROSS R2
 */
void
dsl_OPIF_R2_Link( dsl_INSTRUCTION * supertype, dsl_OPIF * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "OPIF", "dsl_OPIF_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for OPIF->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->OPIF[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_OPIF_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      if  (OPIF)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_OPIF_container[ dsl_OPIF_MAX_EXTENT_SIZE ];
static dsl_OPIF dsl_OPIF_instances[ dsl_OPIF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_OPIF_extent = {
  {0}, {0}, &dsl_OPIF_container[ 0 ],
  (Escher_iHandle_t) &dsl_OPIF_instances,
  sizeof( dsl_OPIF ), 0, dsl_OPIF_MAX_EXTENT_SIZE
  };


