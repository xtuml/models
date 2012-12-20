/*----------------------------------------------------------------------------
 * File:  dsl_LEDWORM_class.c
 *
 * Class:       worm around  (LEDWORM)
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
dsl_LEDWORM_op_load( dsl_LEDCMD * p_ledcmd, dsl_PROGRAM * p_program)
{
  dsl_LEDCMD * ledcmd; dsl_PROGRAM * program; dsl_LEDWORM * ledworm; 
  /* LOG::LogInfo( message:'loading LED worm' ) */
  LOG_LogInfo( "loading LED worm" );
  /* ASSIGN ledcmd = PARAM.ledcmd */
  ledcmd = p_ledcmd;
  /* ASSIGN program = PARAM.program */
  program = p_program;
  /* CREATE OBJECT INSTANCE ledworm OF LEDWORM */
  ledworm = (dsl_LEDWORM *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_LEDWORM_CLASS_NUMBER );
  /* RELATE ledworm TO ledcmd ACROSS R21 */
  dsl_LEDWORM_R21_Link( ledcmd, ledworm );
  /* ASSIGN ledworm.direction = program.store[( program->PC + 1 )] */
  ledworm->direction = program->store[( program->PC + 1 )];
  /* RETURN 2 */
  return 2;

}

/*
 * instance operation:  run
 */
bool
dsl_LEDWORM_op_run( dsl_LEDWORM * self)
{
  /* IF ( ( 0 == self.direction ) ) */
  if ( ( 0 == self->direction ) ) {
    /* LOG::LogInfo( message:'LEDs worm clockwise' ) */
    LOG_LogInfo( "LEDs worm clockwise" );
  }
  else {
    /* LOG::LogInfo( message:'LEDs worm counter-clockwise' ) */
    LOG_LogInfo( "LEDs worm counter-clockwise" );
  }
  /* RETURN FALSE */
  return FALSE;

}


/*
 * RELATE LEDCMD TO LEDWORM ACROSS R21
 */
void
dsl_LEDWORM_R21_Link( dsl_LEDCMD * supertype, dsl_LEDWORM * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LEDWORM", "dsl_LEDWORM_R21_Link" );
    return;
  }
  /* Optimized linkage for LEDWORM->LEDCMD[R21] */
  subtype->LEDCMD_R21 = supertype;
  /* Optimized linkage for LEDCMD->LEDWORM[R21] */
  supertype->R21_subtype = subtype;
  supertype->R21_object_id = dsl_LEDWORM_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      worm around  (LEDWORM)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDWORM_container[ dsl_LEDWORM_MAX_EXTENT_SIZE ];
static dsl_LEDWORM dsl_LEDWORM_instances[ dsl_LEDWORM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDWORM_extent = {
  {0}, {0}, &dsl_LEDWORM_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDWORM_instances,
  sizeof( dsl_LEDWORM ), 0, dsl_LEDWORM_MAX_EXTENT_SIZE
  };


