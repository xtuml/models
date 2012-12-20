/*----------------------------------------------------------------------------
 * File:  dsl_FORLOOP_class.c
 *
 * Class:       forloop  (FORLOOP)
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
dsl_FORLOOP_op_load( const dsl_INSTRUCTION * p_instruction, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_FORLOOP_op_run( dsl_FORLOOP * self)
{

}

/*
 * instance operation:  resolve_branches
 */
void
dsl_FORLOOP_op_resolve_branches( dsl_FORLOOP * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      forloop  (FORLOOP)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_FORLOOP_container[ dsl_FORLOOP_MAX_EXTENT_SIZE ];
static dsl_FORLOOP dsl_FORLOOP_instances[ dsl_FORLOOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_FORLOOP_extent = {
  {0}, {0}, &dsl_FORLOOP_container[ 0 ],
  (Escher_iHandle_t) &dsl_FORLOOP_instances,
  sizeof( dsl_FORLOOP ), 0, dsl_FORLOOP_MAX_EXTENT_SIZE
  };


