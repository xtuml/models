/*----------------------------------------------------------------------------
 * File:  dsl_LEDWORM_class.c
 *
 * Class:       worm around  (LEDWORM)
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
dsl_LEDWORM_op_load( const dsl_LEDCMD * p_ledcmd, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_LEDWORM_op_run( dsl_LEDWORM * self)
{

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


