/*----------------------------------------------------------------------------
 * File:  dsl_LEDSOFF_class.c
 *
 * Class:       LEDs off  (LEDSOFF)
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
dsl_LEDSOFF_op_load( dsl_LEDCMD * p_ledcmd, dsl_PROGRAM * p_program)
{
  dsl_LEDCMD * ledcmd; dsl_LEDSOFF * ledsoff; 
  /* LOG::LogInfo( message:'loading LEDs off' ) */
  LOG_LogInfo( "loading LEDs off" );
  /* ASSIGN ledcmd = PARAM.ledcmd */
  ledcmd = p_ledcmd;
  /* CREATE OBJECT INSTANCE ledsoff OF LEDSOFF */
  ledsoff = (dsl_LEDSOFF *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_LEDSOFF_CLASS_NUMBER );
  /* RELATE ledsoff TO ledcmd ACROSS R21 */
  dsl_LEDSOFF_R21_Link( ledcmd, ledsoff );
  /* RETURN 1 */
  return 1;

}

/*
 * instance operation:  run
 */
bool
dsl_LEDSOFF_op_run( dsl_LEDSOFF * self)
{
  /* LOG::LogInfo( message:'LEDs off' ) */
  LOG_LogInfo( "LEDs off" );
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE LEDCMD TO LEDSOFF ACROSS R21
 */
void
dsl_LEDSOFF_R21_Link( dsl_LEDCMD * supertype, dsl_LEDSOFF * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LEDSOFF", "dsl_LEDSOFF_R21_Link" );
    return;
  }
  /* Optimized linkage for LEDSOFF->LEDCMD[R21] */
  subtype->LEDCMD_R21 = supertype;
  /* Optimized linkage for LEDCMD->LEDSOFF[R21] */
  supertype->R21_subtype = subtype;
  supertype->R21_object_id = dsl_LEDSOFF_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LEDs off  (LEDSOFF)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDSOFF_container[ dsl_LEDSOFF_MAX_EXTENT_SIZE ];
static dsl_LEDSOFF dsl_LEDSOFF_instances[ dsl_LEDSOFF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDSOFF_extent = {
  {0}, {0}, &dsl_LEDSOFF_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDSOFF_instances,
  sizeof( dsl_LEDSOFF ), 0, dsl_LEDSOFF_MAX_EXTENT_SIZE
  };


