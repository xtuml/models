/*----------------------------------------------------------------------------
 * File:  dsl_INSTRUCTION_class.c
 *
 * Class:       instruction  (INSTRUCTION)
 * Component:   dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "dsl_classes.h"


/* Accessors to INSTRUCTION[R2] subtypes */

/* Note:  R4.'follows' never related (or not needed).  */

/* Note:  R4.'follows' never unrelated (or not needed).  */
/* Note:  R4.'' never related (or not needed).  */

/* Note:  R4.'' never unrelated (or not needed).  */
/* Note:  R5.'' never related (or not needed).  */

/* Note:  R5.'' never unrelated (or not needed).  */
/* Note:  R5.'branches to' never related (or not needed).  */

/* Note:  R5.'branches to' never unrelated (or not needed).  */

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_INSTRUCTION_container[ dsl_INSTRUCTION_MAX_EXTENT_SIZE ];
static dsl_INSTRUCTION dsl_INSTRUCTION_instances[ dsl_INSTRUCTION_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_INSTRUCTION_extent = {
  {0}, {0}, &dsl_INSTRUCTION_container[ 0 ],
  (Escher_iHandle_t) &dsl_INSTRUCTION_instances,
  sizeof( dsl_INSTRUCTION ), dsl_INSTRUCTION_STATE_1, dsl_INSTRUCTION_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      instruction  (INSTRUCTION)
 * Component:  dsl
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [loading]
 */
static void dsl_INSTRUCTION_act1( dsl_INSTRUCTION *, const Escher_xtUMLEvent_t * const );
static void
dsl_INSTRUCTION_act1( dsl_INSTRUCTION * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [loaded]
 */
static void dsl_INSTRUCTION_act2( dsl_INSTRUCTION *, const Escher_xtUMLEvent_t * const );
static void
dsl_INSTRUCTION_act2( dsl_INSTRUCTION * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [executing]
 */
static void dsl_INSTRUCTION_act3( dsl_INSTRUCTION *, const Escher_xtUMLEvent_t * const );
static void
dsl_INSTRUCTION_act3( dsl_INSTRUCTION * self, const Escher_xtUMLEvent_t * const event )
{
}







/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t dsl_INSTRUCTION_StateEventMatrix[ 3 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  dsl_INSTRUCTION_STATE_1 (loading) */
  {  },
  /* row 2:  dsl_INSTRUCTION_STATE_2 (loaded) */
  {  },
  /* row 3:  dsl_INSTRUCTION_STATE_3 (executing) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t dsl_INSTRUCTION_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) dsl_INSTRUCTION_act1,  /* loading */
    (StateAction_t) dsl_INSTRUCTION_act2,  /* loaded */
    (StateAction_t) dsl_INSTRUCTION_act3  /* executing */
  };

/*
 * instance state machine event dispatching
 */
void
dsl_INSTRUCTION_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 3 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = dsl_INSTRUCTION_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        /* Execute the state action and update the current state.  */
        ( *dsl_INSTRUCTION_acts[ next_state ] )( instance, event );
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


