/*----------------------------------------------------------------------------
 * File:  dsl_WHILELOOP_class.c
 *
 * Class:       whileloop  (WHILELOOP)
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
dsl_WHILELOOP_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
void
dsl_WHILELOOP_op_run( dsl_WHILELOOP * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      whileloop  (WHILELOOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_WHILELOOP_container[ dsl_WHILELOOP_MAX_EXTENT_SIZE ];
static dsl_WHILELOOP dsl_WHILELOOP_instances[ dsl_WHILELOOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_WHILELOOP_extent = {
  {0}, {0}, &dsl_WHILELOOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_WHILELOOP_instances,
  sizeof( dsl_WHILELOOP ), 0, dsl_WHILELOOP_MAX_EXTENT_SIZE
  };


