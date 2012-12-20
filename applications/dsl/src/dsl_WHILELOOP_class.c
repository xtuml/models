/*----------------------------------------------------------------------------
 * File:  dsl_WHILELOOP_class.c
 *
 * Class:       whileloop  (WHILELOOP)
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
dsl_WHILELOOP_op_load( dsl_INSTRUCTION * p_instruction, dsl_PROGRAM * p_program)
{
  dsl_INSTRUCTION * instruction; dsl_WHILELOOP * whileloop; 
  /* ASSIGN instruction = PARAM.instruction */
  instruction = p_instruction;
  /* CREATE OBJECT INSTANCE whileloop OF WHILELOOP */
  whileloop = (dsl_WHILELOOP *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_WHILELOOP_CLASS_NUMBER );
  /* RELATE whileloop TO instruction ACROSS R2 */
  dsl_WHILELOOP_R2_Link( instruction, whileloop );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
void
dsl_WHILELOOP_op_run( dsl_WHILELOOP * self)
{
  /* LOG::LogInfo( message:'while' ) */
  LOG_LogInfo( "while" );

}


/*
 * RELATE INSTRUCTION TO WHILELOOP ACROSS R2
 */
void
dsl_WHILELOOP_R2_Link( dsl_INSTRUCTION * supertype, dsl_WHILELOOP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "WHILELOOP", "dsl_WHILELOOP_R2_Link" );
    return;
  }
  subtype->location = supertype->location;
  /* Optimized linkage for WHILELOOP->INSTRUCTION[R2] */
  subtype->INSTRUCTION_R2 = supertype;
  /* Optimized linkage for INSTRUCTION->WHILELOOP[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = dsl_WHILELOOP_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      whileloop  (WHILELOOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_WHILELOOP_container[ dsl_WHILELOOP_MAX_EXTENT_SIZE ];
static dsl_WHILELOOP dsl_WHILELOOP_instances[ dsl_WHILELOOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_WHILELOOP_extent = {
  {0}, {0}, &dsl_WHILELOOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_WHILELOOP_instances,
  sizeof( dsl_WHILELOOP ), 0, dsl_WHILELOOP_MAX_EXTENT_SIZE
  };


