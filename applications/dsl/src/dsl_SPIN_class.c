/*----------------------------------------------------------------------------
 * File:  dsl_SPIN_class.c
 *
 * Class:       spin  (SPIN)
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
dsl_SPIN_op_load( const dsl_PROGRAM * p_program, const dsl_STEP * p_step)
{

}

/*
 * instance operation:  run
 */
bool
dsl_SPIN_op_run( dsl_SPIN * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      spin  (SPIN)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_SPIN_container[ dsl_SPIN_MAX_EXTENT_SIZE ];
static dsl_SPIN dsl_SPIN_instances[ dsl_SPIN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_SPIN_extent = {
  {0}, {0}, &dsl_SPIN_container[ 0 ],
  (Escher_iHandle_t) &dsl_SPIN_instances,
  sizeof( dsl_SPIN ), 0, dsl_SPIN_MAX_EXTENT_SIZE
  };


