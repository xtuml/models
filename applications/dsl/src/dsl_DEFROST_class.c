/*----------------------------------------------------------------------------
 * File:  dsl_DEFROST_class.c
 *
 * Class:       defrost  (DEFROST)
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
dsl_DEFROST_op_load( dsl_PROGRAM * p_program, dsl_STEP * p_step)
{
  dsl_STEP * step; dsl_PROGRAM * program; dsl_DEFROST * defrost; 
  /* LOG::LogInfo( message:'loading defrost' ) */
  LOG_LogInfo( "loading defrost" );
  /* ASSIGN step = PARAM.step */
  step = p_step;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE defrost OF DEFROST */
  defrost = (dsl_DEFROST *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_DEFROST_CLASS_NUMBER );
  /* RELATE defrost TO step ACROSS R11 */
  dsl_DEFROST_R11_Link( step, defrost );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_DEFROST_op_run( dsl_DEFROST * self)
{
  /* LOG::LogInfo( message:'defrost' ) */
  LOG_LogInfo( "defrost" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE STEP TO DEFROST ACROSS R11
 */
void
dsl_DEFROST_R11_Link( dsl_STEP * supertype, dsl_DEFROST * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DEFROST", "dsl_DEFROST_R11_Link" );
    return;
  }
  /* Optimized linkage for DEFROST->STEP[R11] */
  subtype->STEP_R11 = supertype;
  /* Optimized linkage for STEP->DEFROST[R11] */
  supertype->R11_subtype = subtype;
  supertype->R11_object_id = dsl_DEFROST_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      defrost  (DEFROST)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_DEFROST_container[ dsl_DEFROST_MAX_EXTENT_SIZE ];
static dsl_DEFROST dsl_DEFROST_instances[ dsl_DEFROST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_DEFROST_extent = {
  {0}, {0}, &dsl_DEFROST_container[ 0 ],
  (Escher_iHandle_t) &dsl_DEFROST_instances,
  sizeof( dsl_DEFROST ), 0, dsl_DEFROST_MAX_EXTENT_SIZE
  };


