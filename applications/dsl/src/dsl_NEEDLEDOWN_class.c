/*----------------------------------------------------------------------------
 * File:  dsl_NEEDLEDOWN_class.c
 *
 * Class:       needle down  (NEEDLEDOWN)
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
dsl_NEEDLEDOWN_op_load( const dsl_ASCMD * p_ascmd, const dsl_PROGRAM * p_program)
{

}

/*
 * instance operation:  run
 */
bool
dsl_NEEDLEDOWN_op_run( dsl_NEEDLEDOWN * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      needle down  (NEEDLEDOWN)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_NEEDLEDOWN_container[ dsl_NEEDLEDOWN_MAX_EXTENT_SIZE ];
static dsl_NEEDLEDOWN dsl_NEEDLEDOWN_instances[ dsl_NEEDLEDOWN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_NEEDLEDOWN_extent = {
  {0}, {0}, &dsl_NEEDLEDOWN_container[ 0 ],
  (Escher_iHandle_t) &dsl_NEEDLEDOWN_instances,
  sizeof( dsl_NEEDLEDOWN ), dsl_NEEDLEDOWN_STATE_1, dsl_NEEDLEDOWN_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      needle down  (NEEDLEDOWN)
 * Component:  dsl
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [a]
 */
static void dsl_NEEDLEDOWN_act1( dsl_NEEDLEDOWN *, const Escher_xtUMLEvent_t * const );
static void
dsl_NEEDLEDOWN_act1( dsl_NEEDLEDOWN * self, const Escher_xtUMLEvent_t * const event )
{
}



  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t dsl_NEEDLEDOWN_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) dsl_NEEDLEDOWN_act1  /* a */
  };

/*
 * For this state machine, there are either no events,
 * no transitions, or no states.
 */
void
dsl_NEEDLEDOWN_Dispatch( Escher_xtUMLEvent_t * event )
{
  /*
   * This is an empty state machine, which is not good to have.
   * But since there are no events that could land here, we will
   * ignore this and assume that it is an incomplete model.
   */
}


