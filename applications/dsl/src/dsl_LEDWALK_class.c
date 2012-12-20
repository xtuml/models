/*----------------------------------------------------------------------------
 * File:  dsl_LEDWALK_class.c
 *
 * Class:       walk around  (LEDWALK)
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
dsl_LEDWALK_op_load( const dsl_LEDCMD * p_ledcmd, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_LEDWALK_op_run( dsl_LEDWALK * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      walk around  (LEDWALK)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDWALK_container[ dsl_LEDWALK_MAX_EXTENT_SIZE ];
static dsl_LEDWALK dsl_LEDWALK_instances[ dsl_LEDWALK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDWALK_extent = {
  {0}, {0}, &dsl_LEDWALK_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDWALK_instances,
  sizeof( dsl_LEDWALK ), 0, dsl_LEDWALK_MAX_EXTENT_SIZE
  };


