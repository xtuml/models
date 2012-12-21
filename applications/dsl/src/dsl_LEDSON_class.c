/*----------------------------------------------------------------------------
 * File:  dsl_LEDSON_class.c
 *
 * Class:       LEDs on  (LEDSON)
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
dsl_LEDSON_op_load( const dsl_LEDCMD * p_ledcmd, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_LEDSON_op_run( dsl_LEDSON * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LEDs on  (LEDSON)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDSON_container[ dsl_LEDSON_MAX_EXTENT_SIZE ];
static dsl_LEDSON dsl_LEDSON_instances[ dsl_LEDSON_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDSON_extent = {
  {0}, {0}, &dsl_LEDSON_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDSON_instances,
  sizeof( dsl_LEDSON ), 0, dsl_LEDSON_MAX_EXTENT_SIZE
  };


