/*----------------------------------------------------------------------------
 * File:  dsl_LEDCMD_class.c
 *
 * Class:       LED command  (LEDCMD)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "dsl_classes.h"

/*
 * class operation:  load
 */
i_t
dsl_LEDCMD_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_LEDCMD_op_run( dsl_LEDCMD * self, const Escher_xtUMLEvent_t * p_completion_event)
{

}


/* Accessors to LEDCMD[R21] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LED command  (LEDCMD)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDCMD_container[ dsl_LEDCMD_MAX_EXTENT_SIZE ];
static dsl_LEDCMD dsl_LEDCMD_instances[ dsl_LEDCMD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDCMD_extent = {
  {0}, {0}, &dsl_LEDCMD_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDCMD_instances,
  sizeof( dsl_LEDCMD ), 0, dsl_LEDCMD_MAX_EXTENT_SIZE
  };


