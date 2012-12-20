/*----------------------------------------------------------------------------
 * File:  dsl_COOKSTOP_class.c
 *
 * Class:       cook stop  (COOKSTOP)
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
dsl_COOKSTOP_op_load( dsl_PROGRAM * p_program, dsl_STEP * p_step)
{
  dsl_STEP * step; dsl_PROGRAM * program; dsl_COOKSTOP * cookstop; 
  /* LOG::LogInfo( message:'stop cooking' ) */
  LOG_LogInfo( "stop cooking" );
  /* ASSIGN step = PARAM.step */
  step = p_step;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE cookstop OF COOKSTOP */
  cookstop = (dsl_COOKSTOP *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_COOKSTOP_CLASS_NUMBER );
  /* RELATE cookstop TO step ACROSS R11 */
  dsl_COOKSTOP_R11_Link( step, cookstop );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_COOKSTOP_op_run( dsl_COOKSTOP * self)
{
  /* LOG::LogInfo( message:'stop cooking' ) */
  LOG_LogInfo( "stop cooking" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE STEP TO COOKSTOP ACROSS R11
 */
void
dsl_COOKSTOP_R11_Link( dsl_STEP * supertype, dsl_COOKSTOP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "COOKSTOP", "dsl_COOKSTOP_R11_Link" );
    return;
  }
  /* Optimized linkage for COOKSTOP->STEP[R11] */
  subtype->STEP_R11 = supertype;
  /* Optimized linkage for STEP->COOKSTOP[R11] */
  supertype->R11_subtype = subtype;
  supertype->R11_object_id = dsl_COOKSTOP_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cook stop  (COOKSTOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_COOKSTOP_container[ dsl_COOKSTOP_MAX_EXTENT_SIZE ];
static dsl_COOKSTOP dsl_COOKSTOP_instances[ dsl_COOKSTOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_COOKSTOP_extent = {
  {0}, {0}, &dsl_COOKSTOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_COOKSTOP_instances,
  sizeof( dsl_COOKSTOP ), 0, dsl_COOKSTOP_MAX_EXTENT_SIZE
  };


