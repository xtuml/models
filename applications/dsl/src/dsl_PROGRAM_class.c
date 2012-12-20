/*----------------------------------------------------------------------------
 * File:  dsl_PROGRAM_class.c
 *
 * Class:       program  (PROGRAM)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "dsl_classes.h"

/*
 * class operation:  load
 */
void
dsl_PROGRAM_op_load( i_t p_data[256], const i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{

}

/*
 * instance operation:  run
 */
void
dsl_PROGRAM_op_run( dsl_PROGRAM * self)
{

}

/*
 * instance operation:  pause
 */
void
dsl_PROGRAM_op_pause( dsl_PROGRAM * self)
{

}

/*
 * instance operation:  resume
 */
void
dsl_PROGRAM_op_resume( dsl_PROGRAM * self)
{

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      program  (PROGRAM)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_PROGRAM_container[ dsl_PROGRAM_MAX_EXTENT_SIZE ];
static dsl_PROGRAM dsl_PROGRAM_instances[ dsl_PROGRAM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_PROGRAM_extent = {
  {0}, {0}, &dsl_PROGRAM_container[ 0 ],
  (Escher_iHandle_t) &dsl_PROGRAM_instances,
  sizeof( dsl_PROGRAM ), dsl_PROGRAM_STATE_1, dsl_PROGRAM_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      program  (PROGRAM)
 * Component:  dsl
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [loading instruction]
 */
static void dsl_PROGRAM_act1( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act1( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [loaded]
 */
static void dsl_PROGRAM_act3( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act3( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 4:  [executing]
 */
static void dsl_PROGRAM_act4( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act4( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 5:  [paused]
 */
static void dsl_PROGRAM_act5( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act5( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 6:  [finished]
 */
static void dsl_PROGRAM_act6( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act6( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [instruction loaded]
 */
static void dsl_PROGRAM_act2( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act2( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}









/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t dsl_PROGRAM_StateEventMatrix[ 6 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  dsl_PROGRAM_STATE_1 (loading instruction) */
  {  },
  /* row 2:  dsl_PROGRAM_STATE_2 (instruction loaded) */
  {  },
  /* row 3:  dsl_PROGRAM_STATE_3 (loaded) */
  {  },
  /* row 4:  dsl_PROGRAM_STATE_4 (executing) */
  {  },
  /* row 5:  dsl_PROGRAM_STATE_5 (paused) */
  {  },
  /* row 6:  dsl_PROGRAM_STATE_6 (finished) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t dsl_PROGRAM_acts[ 7 ] = {
    (StateAction_t) 0,
    (StateAction_t) dsl_PROGRAM_act1,  /* loading instruction */
    (StateAction_t) dsl_PROGRAM_act2,  /* instruction loaded */
    (StateAction_t) dsl_PROGRAM_act3,  /* loaded */
    (StateAction_t) dsl_PROGRAM_act4,  /* executing */
    (StateAction_t) dsl_PROGRAM_act5,  /* paused */
    (StateAction_t) dsl_PROGRAM_act6  /* finished */
  };

/*
 * instance state machine event dispatching
 */
void
dsl_PROGRAM_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 6 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = dsl_PROGRAM_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 6 ) {
        /* Execute the state action and update the current state.  */
        ( *dsl_PROGRAM_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}


