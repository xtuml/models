/*----------------------------------------------------------------------------
 * File:  dsl_LEDSON_class.c
 *
 * Class:       LEDs on  (LEDSON)
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
dsl_LEDSON_op_load( dsl_LEDCMD * p_ledcmd, dsl_PROGRAM * p_program)
{
  dsl_LEDCMD * ledcmd; dsl_LEDSON * ledson; 
  /* LOG::LogInfo( message:'loading LEDs on' ) */
  LOG_LogInfo( "loading LEDs on" );
  /* ASSIGN ledcmd = PARAM.ledcmd */
  ledcmd = p_ledcmd;
  /* CREATE OBJECT INSTANCE ledson OF LEDSON */
  ledson = (dsl_LEDSON *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_LEDSON_CLASS_NUMBER );
  /* RELATE ledson TO ledcmd ACROSS R21 */
  dsl_LEDSON_R21_Link( ledcmd, ledson );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_LEDSON_op_run( dsl_LEDSON * self)
{
  /* LOG::LogInfo( message:'LEDs on' ) */
  LOG_LogInfo( "LEDs on" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE LEDCMD TO LEDSON ACROSS R21
 */
void
dsl_LEDSON_R21_Link( dsl_LEDCMD * supertype, dsl_LEDSON * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LEDSON", "dsl_LEDSON_R21_Link" );
    return;
  }
  /* Optimized linkage for LEDSON->LEDCMD[R21] */
  subtype->LEDCMD_R21 = supertype;
  /* Optimized linkage for LEDCMD->LEDSON[R21] */
  supertype->R21_subtype = subtype;
  supertype->R21_object_id = dsl_LEDSON_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LEDs on  (LEDSON)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDSON_container[ dsl_LEDSON_MAX_EXTENT_SIZE ];
static dsl_LEDSON dsl_LEDSON_instances[ dsl_LEDSON_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDSON_extent = {
  {0}, {0}, &dsl_LEDSON_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDSON_instances,
  sizeof( dsl_LEDSON ), 0, dsl_LEDSON_MAX_EXTENT_SIZE
  };


