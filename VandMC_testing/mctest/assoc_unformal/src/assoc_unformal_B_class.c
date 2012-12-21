/*----------------------------------------------------------------------------
 * File:  assoc_unformal_B_class.c
 *
 * Class:       socket  (B)
 * Component:   assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "assoc_unformal_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "assoc_unformal_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s assoc_unformal_B_container[ assoc_unformal_B_MAX_EXTENT_SIZE ];
static assoc_unformal_B assoc_unformal_B_instances[ assoc_unformal_B_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_assoc_unformal_B_extent = {
  {0}, {0}, &assoc_unformal_B_container[ 0 ],
  (Escher_iHandle_t) &assoc_unformal_B_instances,
  sizeof( assoc_unformal_B ), assoc_unformal_B_STATE_1, assoc_unformal_B_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      socket  (B)
 * Component:  assoc_unformal
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [first]
 */
static void assoc_unformal_B_act1( assoc_unformal_B *, const Escher_xtUMLEvent_t * const );
static void
assoc_unformal_B_act1( assoc_unformal_B * self, const Escher_xtUMLEvent_t * const event )
{
  c_t results[ESCHER_SYS_MAX_STRING_LEN]; 
  /* LOG::LogInfo( message:'got to the end... exiting' ) */
  LOG_LogInfo( "got to the end... exiting" );
  /* ASSIGN results = 'Test succeeded.' */
  Escher_strcpy( results, "Test succeeded." );
  /* ::xit(  ) */
  assoc_unformal_xit();
}

/*
 * State 2:  [second]
 */
static void assoc_unformal_B_act2( assoc_unformal_B *, const Escher_xtUMLEvent_t * const );
static void
assoc_unformal_B_act2( assoc_unformal_B * self, const Escher_xtUMLEvent_t * const event )
{
  /* ::test2(  ) */
  assoc_unformal_test2();
  /* GENERATE B1:go() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &assoc_unformal_Bevent1c );
    Escher_SendSelfEvent( e );
  }
}

/*
 * State 3:  [third]
 */
static void assoc_unformal_B_act3( assoc_unformal_B *, const Escher_xtUMLEvent_t * const );
static void
assoc_unformal_B_act3( assoc_unformal_B * self, const Escher_xtUMLEvent_t * const event )
{
  /* ::test2(  ) */
  assoc_unformal_test2();
  /* GENERATE B1:go() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &assoc_unformal_Bevent1c );
    Escher_SendSelfEvent( e );
  }
}

const Escher_xtUMLEventConstant_t assoc_unformal_Bevent1c = {
  assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER, ASSOC_UNFORMAL_BEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t assoc_unformal_B_StateEventMatrix[ 3 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  assoc_unformal_B_STATE_1 (first) */
  { assoc_unformal_B_STATE_2 },
  /* row 2:  assoc_unformal_B_STATE_2 (second) */
  { assoc_unformal_B_STATE_3 },
  /* row 3:  assoc_unformal_B_STATE_3 (third) */
  { assoc_unformal_B_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t assoc_unformal_B_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) assoc_unformal_B_act1,  /* first */
    (StateAction_t) assoc_unformal_B_act2,  /* second */
    (StateAction_t) assoc_unformal_B_act3  /* third */
  };

/*
 * instance state machine event dispatching
 */
void
assoc_unformal_B_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = assoc_unformal_B_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        /* Execute the state action and update the current state.  */
        ( *assoc_unformal_B_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


