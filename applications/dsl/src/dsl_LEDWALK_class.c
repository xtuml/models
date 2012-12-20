/*----------------------------------------------------------------------------
 * File:  dsl_LEDWALK_class.c
 *
 * Class:       walk around  (LEDWALK)
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
dsl_LEDWALK_op_load( dsl_LEDCMD * p_ledcmd, dsl_PROGRAM * p_program)
{
  dsl_LEDCMD * ledcmd; dsl_PROGRAM * program; dsl_LEDWALK * ledwalk; 
  /* LOG::LogInfo( message:'loading LED walk' ) */
  LOG_LogInfo( "loading LED walk" );
  /* ASSIGN ledcmd = PARAM.ledcmd */
  ledcmd = p_ledcmd;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE ledwalk OF LEDWALK */
  ledwalk = (dsl_LEDWALK *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_LEDWALK_CLASS_NUMBER );
  /* RELATE ledwalk TO ledcmd ACROSS R21 */
  dsl_LEDWALK_R21_Link( ledcmd, ledwalk );
  /* ASSIGN ledwalk.direction = program.store[( program->PC + 1 )] */
  ledwalk->direction = program->store[( program->PC + 1 )];
  /* RETURN 2 */
  return 2;

}

/*
 * instance operation:  run
 */
bool
dsl_LEDWALK_op_run( dsl_LEDWALK * self)
{
  /* IF ( ( 0 == self.direction ) ) */
  if ( ( 0 == self->direction ) ) {
    /* LOG::LogInfo( message:'LEDs walk clockwise' ) */
    LOG_LogInfo( "LEDs walk clockwise" );
  }
  else {
    /* LOG::LogInfo( message:'LEDs walk counter-clockwise' ) */
    LOG_LogInfo( "LEDs walk counter-clockwise" );
  }
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE LEDCMD TO LEDWALK ACROSS R21
 */
void
dsl_LEDWALK_R21_Link( dsl_LEDCMD * supertype, dsl_LEDWALK * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LEDWALK", "dsl_LEDWALK_R21_Link" );
    return;
  }
  /* Optimized linkage for LEDWALK->LEDCMD[R21] */
  subtype->LEDCMD_R21 = supertype;
  /* Optimized linkage for LEDCMD->LEDWALK[R21] */
  supertype->R21_subtype = subtype;
  supertype->R21_object_id = dsl_LEDWALK_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      walk around  (LEDWALK)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDWALK_container[ dsl_LEDWALK_MAX_EXTENT_SIZE ];
static dsl_LEDWALK dsl_LEDWALK_instances[ dsl_LEDWALK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDWALK_extent = {
  {0}, {0}, &dsl_LEDWALK_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDWALK_instances,
  sizeof( dsl_LEDWALK ), 0, dsl_LEDWALK_MAX_EXTENT_SIZE
  };


