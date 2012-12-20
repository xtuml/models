/*----------------------------------------------------------------------------
 * File:  dsl_COOKSTOP_class.c
 *
 * Class:       cook stop  (COOKSTOP)
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
dsl_COOKSTOP_op_load( const dsl_PROGRAM * p_program, const dsl_STEP * p_step)
{

}

/*
 * instance operation:  run
 */
bool
dsl_COOKSTOP_op_run( dsl_COOKSTOP * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cook stop  (COOKSTOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_COOKSTOP_container[ dsl_COOKSTOP_MAX_EXTENT_SIZE ];
static dsl_COOKSTOP dsl_COOKSTOP_instances[ dsl_COOKSTOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_COOKSTOP_extent = {
  {0}, {0}, &dsl_COOKSTOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_COOKSTOP_instances,
  sizeof( dsl_COOKSTOP ), 0, dsl_COOKSTOP_MAX_EXTENT_SIZE
  };


