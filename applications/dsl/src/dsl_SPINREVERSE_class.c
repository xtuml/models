/*----------------------------------------------------------------------------
 * File:  dsl_SPINREVERSE_class.c
 *
 * Class:       spin reverse  (SPINREVERSE)
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
dsl_SPINREVERSE_op_load( const dsl_PROGRAM * p_program, const dsl_STEP * p_step)
{

}

/*
 * instance operation:  run
 */
bool
dsl_SPINREVERSE_op_run( dsl_SPINREVERSE * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      spin reverse  (SPINREVERSE)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_SPINREVERSE_container[ dsl_SPINREVERSE_MAX_EXTENT_SIZE ];
static dsl_SPINREVERSE dsl_SPINREVERSE_instances[ dsl_SPINREVERSE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_SPINREVERSE_extent = {
  {0}, {0}, &dsl_SPINREVERSE_container[ 0 ],
  (Escher_iHandle_t) &dsl_SPINREVERSE_instances,
  sizeof( dsl_SPINREVERSE ), 0, dsl_SPINREVERSE_MAX_EXTENT_SIZE
  };


