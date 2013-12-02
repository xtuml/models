/*----------------------------------------------------------------------------
 * File:  System_class1_class.c
 *
 * Class:       class1  (class1)
 * Component:   System
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "jp_character_test_ascii_sys_types.h"
#include "System_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s System_class1_container[ System_class1_MAX_EXTENT_SIZE ];
static System_class1 System_class1_instances[ System_class1_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_System_class1_extent = {
  {0}, {0}, &System_class1_container[ 0 ],
  (Escher_iHandle_t) &System_class1_instances,
  sizeof( System_class1 ), System_class1_STATE_1, System_class1_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      class1  (class1)
 * Component:  System
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [one]
 *
 * Action language follows:
 *
// Set the number attribute
assign self.number = 1;

// Japanese comments would go below
 */
static void System_class1_act1( System_class1 *, const Escher_xtUMLEvent_t * const );
static void
System_class1_act1( System_class1 * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.number = 1 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.number = 1" );
  self->number = 1;
}

/*
 * State 2:  [two]
 *
 * Action language follows:
 *
// Set the number attribute
assign self.number = 2;

// Japanese comments would go below
 */
static void System_class1_act2( System_class1 *, const Escher_xtUMLEvent_t * const );
static void
System_class1_act2( System_class1 * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.number = 2 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.number = 2" );
  self->number = 2;
}

/*
 * State 3:  [three]
 *
 * Action language follows:
 *
// Set the number attribute
assign self.number = 3;

// Japanese comments would go below
 */
static void System_class1_act3( System_class1 *, const Escher_xtUMLEvent_t * const );
static void
System_class1_act3( System_class1 * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.number = 3 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.number = 3" );
  self->number = 3;
}





/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t System_class1_StateEventMatrix[ 3 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  System_class1_STATE_1 (one) */
  {  },
  /* row 2:  System_class1_STATE_2 (two) */
  {  },
  /* row 3:  System_class1_STATE_3 (three) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t System_class1_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) System_class1_act1,  /* one */
    (StateAction_t) System_class1_act2,  /* two */
    (StateAction_t) System_class1_act3  /* three */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "one",
    "two",
    "three"
  };

/*
 * instance state machine event dispatching
 */
void
System_class1_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = System_class1_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "class1", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *System_class1_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "class1", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "class1", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


