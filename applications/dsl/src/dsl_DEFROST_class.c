/*----------------------------------------------------------------------------
 * File:  dsl_DEFROST_class.c
 *
 * Class:       defrost  (DEFROST)
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
dsl_DEFROST_op_load( const dsl_PROGRAM * p_program, const dsl_STEP * p_step)
{

}

/*
 * instance operation:  run
 */
bool
dsl_DEFROST_op_run( dsl_DEFROST * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      defrost  (DEFROST)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_DEFROST_container[ dsl_DEFROST_MAX_EXTENT_SIZE ];
static dsl_DEFROST dsl_DEFROST_instances[ dsl_DEFROST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_DEFROST_extent = {
  {0}, {0}, &dsl_DEFROST_container[ 0 ],
  (Escher_iHandle_t) &dsl_DEFROST_instances,
  sizeof( dsl_DEFROST ), 0, dsl_DEFROST_MAX_EXTENT_SIZE
  };


