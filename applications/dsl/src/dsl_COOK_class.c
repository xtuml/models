/*----------------------------------------------------------------------------
 * File:  dsl_COOK_class.c
 *
 * Class:       cook  (COOK)
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
dsl_COOK_op_load( const dsl_PROGRAM * p_program, const dsl_STEP * p_step)
{

}

/*
 * instance operation:  run
 */
bool
dsl_COOK_op_run( dsl_COOK * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cook  (COOK)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_COOK_container[ dsl_COOK_MAX_EXTENT_SIZE ];
static dsl_COOK dsl_COOK_instances[ dsl_COOK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_COOK_extent = {
  {0}, {0}, &dsl_COOK_container[ 0 ],
  (Escher_iHandle_t) &dsl_COOK_instances,
  sizeof( dsl_COOK ), 0, dsl_COOK_MAX_EXTENT_SIZE
  };


