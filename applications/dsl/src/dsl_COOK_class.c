/*----------------------------------------------------------------------------
 * File:  dsl_COOK_class.c
 *
 * Class:       cook  (COOK)
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
dsl_COOK_op_load( dsl_PROGRAM * p_program, dsl_STEP * p_step)
{
  dsl_STEP * step; dsl_PROGRAM * program; dsl_COOK * cook; 
  /* LOG::LogInfo( message:'loading cook' ) */
  LOG_LogInfo( "loading cook" );
  /* ASSIGN step = PARAM.step */
  step = p_step;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE cook OF COOK */
  cook = (dsl_COOK *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_COOK_CLASS_NUMBER );
  /* RELATE cook TO step ACROSS R11 */
  dsl_COOK_R11_Link( step, cook );
  /* ASSIGN cook.power_level = program.store[( program->PC + 1 )] */
  cook->power_level = program->store[( program->PC + 1 )];
  /* RETURN 2 */
  return 2;

}

/*
 * instance operation:  run
 */
bool
dsl_COOK_op_run( dsl_COOK * self)
{
  /* LOG::LogInfo( message:'cook' ) */
  LOG_LogInfo( "cook" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE STEP TO COOK ACROSS R11
 */
void
dsl_COOK_R11_Link( dsl_STEP * supertype, dsl_COOK * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "COOK", "dsl_COOK_R11_Link" );
    return;
  }
  /* Optimized linkage for COOK->STEP[R11] */
  subtype->STEP_R11 = supertype;
  /* Optimized linkage for STEP->COOK[R11] */
  supertype->R11_subtype = subtype;
  supertype->R11_object_id = dsl_COOK_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cook  (COOK)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_COOK_container[ dsl_COOK_MAX_EXTENT_SIZE ];
static dsl_COOK dsl_COOK_instances[ dsl_COOK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_COOK_extent = {
  {0}, {0}, &dsl_COOK_container[ 0 ],
  (Escher_iHandle_t) &dsl_COOK_instances,
  sizeof( dsl_COOK ), 0, dsl_COOK_MAX_EXTENT_SIZE
  };


