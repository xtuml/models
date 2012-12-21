/*----------------------------------------------------------------------------
 * File:  dsl_DELAY_class.c
 *
 * Class:       delay  (DELAY)
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
dsl_DELAY_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
void
dsl_DELAY_op_run( dsl_DELAY * self, const Escher_xtUMLEvent_t * p_completion_event)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      delay  (DELAY)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_DELAY_container[ dsl_DELAY_MAX_EXTENT_SIZE ];
static dsl_DELAY dsl_DELAY_instances[ dsl_DELAY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_DELAY_extent = {
  {0}, {0}, &dsl_DELAY_container[ 0 ],
  (Escher_iHandle_t) &dsl_DELAY_instances,
  sizeof( dsl_DELAY ), 0, dsl_DELAY_MAX_EXTENT_SIZE
  };


