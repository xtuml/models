/*----------------------------------------------------------------------------
 * File:  dsl_SPINREVERSE_class.c
 *
 * Class:       spin reverse  (SPINREVERSE)
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
dsl_SPINREVERSE_op_load( dsl_PROGRAM * p_program, dsl_STEP * p_step)
{
  dsl_STEP * step; dsl_PROGRAM * program; dsl_SPINREVERSE * spinreverse; 
  /* LOG::LogInfo( message:'loading stop spin' ) */
  LOG_LogInfo( "loading stop spin" );
  /* ASSIGN step = PARAM.step */
  step = p_step;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE spinreverse OF SPINREVERSE */
  spinreverse = (dsl_SPINREVERSE *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_SPINREVERSE_CLASS_NUMBER );
  /* RELATE spinreverse TO step ACROSS R11 */
  dsl_SPINREVERSE_R11_Link( step, spinreverse );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_SPINREVERSE_op_run( dsl_SPINREVERSE * self)
{
  /* LOG::LogInfo( message:'reverse the spin' ) */
  LOG_LogInfo( "reverse the spin" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE STEP TO SPINREVERSE ACROSS R11
 */
void
dsl_SPINREVERSE_R11_Link( dsl_STEP * supertype, dsl_SPINREVERSE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SPINREVERSE", "dsl_SPINREVERSE_R11_Link" );
    return;
  }
  /* Optimized linkage for SPINREVERSE->STEP[R11] */
  subtype->STEP_R11 = supertype;
  /* Optimized linkage for STEP->SPINREVERSE[R11] */
  supertype->R11_subtype = subtype;
  supertype->R11_object_id = dsl_SPINREVERSE_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      spin reverse  (SPINREVERSE)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_SPINREVERSE_container[ dsl_SPINREVERSE_MAX_EXTENT_SIZE ];
static dsl_SPINREVERSE dsl_SPINREVERSE_instances[ dsl_SPINREVERSE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_SPINREVERSE_extent = {
  {0}, {0}, &dsl_SPINREVERSE_container[ 0 ],
  (Escher_iHandle_t) &dsl_SPINREVERSE_instances,
  sizeof( dsl_SPINREVERSE ), 0, dsl_SPINREVERSE_MAX_EXTENT_SIZE
  };


