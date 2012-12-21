/*----------------------------------------------------------------------------
 * File:  dsl_ASCMD_class.c
 *
 * Class:       autosampler command  (ASCMD)
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
dsl_ASCMD_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_ASCMD_op_run( dsl_ASCMD * self, const Escher_xtUMLEvent_t * p_completion_event)
{

}


/* Accessors to ASCMD[R31] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      autosampler command  (ASCMD)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_ASCMD_container[ dsl_ASCMD_MAX_EXTENT_SIZE ];
static dsl_ASCMD dsl_ASCMD_instances[ dsl_ASCMD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_ASCMD_extent = {
  {0}, {0}, &dsl_ASCMD_container[ 0 ],
  (Escher_iHandle_t) &dsl_ASCMD_instances,
  sizeof( dsl_ASCMD ), 0, dsl_ASCMD_MAX_EXTENT_SIZE
  };


