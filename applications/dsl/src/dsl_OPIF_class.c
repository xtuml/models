/*----------------------------------------------------------------------------
 * File:  dsl_OPIF_class.c
 *
 * Class:       if  (OPIF)
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
dsl_OPIF_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
void
dsl_OPIF_op_run( dsl_OPIF * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      if  (OPIF)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_OPIF_container[ dsl_OPIF_MAX_EXTENT_SIZE ];
static dsl_OPIF dsl_OPIF_instances[ dsl_OPIF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_OPIF_extent = {
  {0}, {0}, &dsl_OPIF_container[ 0 ],
  (Escher_iHandle_t) &dsl_OPIF_instances,
  sizeof( dsl_OPIF ), 0, dsl_OPIF_MAX_EXTENT_SIZE
  };


