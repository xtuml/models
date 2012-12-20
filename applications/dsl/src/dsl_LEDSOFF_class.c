/*----------------------------------------------------------------------------
 * File:  dsl_LEDSOFF_class.c
 *
 * Class:       LEDs off  (LEDSOFF)
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
dsl_LEDSOFF_op_load( const dsl_LEDCMD * p_ledcmd, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_LEDSOFF_op_run( dsl_LEDSOFF * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      LEDs off  (LEDSOFF)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_LEDSOFF_container[ dsl_LEDSOFF_MAX_EXTENT_SIZE ];
static dsl_LEDSOFF dsl_LEDSOFF_instances[ dsl_LEDSOFF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_LEDSOFF_extent = {
  {0}, {0}, &dsl_LEDSOFF_container[ 0 ],
  (Escher_iHandle_t) &dsl_LEDSOFF_instances,
  sizeof( dsl_LEDSOFF ), 0, dsl_LEDSOFF_MAX_EXTENT_SIZE
  };


