/*----------------------------------------------------------------------------
 * File:  dsl_STEP_class.c
 *
 * Class:       cooking step  (STEP)
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
dsl_STEP_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_STEP_op_run( dsl_STEP * self, const Escher_xtUMLEvent_t * p_completion_event)
{

}


/* Accessors to STEP[R11] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cooking step  (STEP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_STEP_container[ dsl_STEP_MAX_EXTENT_SIZE ];
static dsl_STEP dsl_STEP_instances[ dsl_STEP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_STEP_extent = {
  {0}, {0}, &dsl_STEP_container[ 0 ],
  (Escher_iHandle_t) &dsl_STEP_instances,
  sizeof( dsl_STEP ), 0, dsl_STEP_MAX_EXTENT_SIZE
  };


