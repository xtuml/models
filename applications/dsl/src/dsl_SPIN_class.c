/*----------------------------------------------------------------------------
 * File:  dsl_SPIN_class.c
 *
 * Class:       spin  (SPIN)
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
dsl_SPIN_op_load( dsl_PROGRAM * p_program, dsl_STEP * p_step)
{
  dsl_STEP * step; dsl_PROGRAM * program; dsl_SPIN * spin; 
  /* LOG::LogInfo( message:'loading spin' ) */
  LOG_LogInfo( "loading spin" );
  /* ASSIGN step = PARAM.step */
  step = p_step;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE spin OF SPIN */
  spin = (dsl_SPIN *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_SPIN_CLASS_NUMBER );
  /* RELATE spin TO step ACROSS R11 */
  dsl_SPIN_R11_Link( step, spin );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_SPIN_op_run( dsl_SPIN * self)
{
  /* LOG::LogInfo( message:'spin' ) */
  LOG_LogInfo( "spin" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE STEP TO SPIN ACROSS R11
 */
void
dsl_SPIN_R11_Link( dsl_STEP * supertype, dsl_SPIN * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "SPIN", "dsl_SPIN_R11_Link" );
    return;
  }
  /* Optimized linkage for SPIN->STEP[R11] */
  subtype->STEP_R11 = supertype;
  /* Optimized linkage for STEP->SPIN[R11] */
  supertype->R11_subtype = subtype;
  supertype->R11_object_id = dsl_SPIN_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      spin  (SPIN)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_SPIN_container[ dsl_SPIN_MAX_EXTENT_SIZE ];
static dsl_SPIN dsl_SPIN_instances[ dsl_SPIN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_SPIN_extent = {
  {0}, {0}, &dsl_SPIN_container[ 0 ],
  (Escher_iHandle_t) &dsl_SPIN_instances,
  sizeof( dsl_SPIN ), 0, dsl_SPIN_MAX_EXTENT_SIZE
  };


