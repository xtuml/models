/*----------------------------------------------------------------------------
 * File:  perf_funcs_B_class.c
 *
 * Class:       b  (B)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_B_container[ perf_funcs_B_MAX_EXTENT_SIZE ];
static perf_funcs_B perf_funcs_B_instances[ perf_funcs_B_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_B_extent = {
  {0}, {0}, &perf_funcs_B_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_B_instances,
  sizeof( perf_funcs_B ), perf_funcs_B_STATE_1, perf_funcs_B_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      b  (B)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [answering]
 */
static void perf_funcs_B_act1( perf_funcs_B *, const Escher_xtUMLEvent_t * const );
static void
perf_funcs_B_act1( perf_funcs_B * self, const Escher_xtUMLEvent_t * const event )
{
  perf_funcs_A * a = 0; /* a (A) */
 
  /* SELECT one a RELATED BY self->A[R1] */
  a = self->A_R1;
  /* GENERATE A1:e() TO a */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( a, &perf_funcs_Aevent1c );
    Escher_SendEvent( e );
  }
}

const Escher_xtUMLEventConstant_t perf_funcs_Bevent1c = {
  perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER, PERF_FUNCS_BEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t perf_funcs_B_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  perf_funcs_B_STATE_1 (answering) */
  { perf_funcs_B_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t perf_funcs_B_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) perf_funcs_B_act1  /* answering */
  };

/*
 * instance state machine event dispatching
 */
void
perf_funcs_B_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = perf_funcs_B_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Execute the state action and update the current state.  */
        ( *perf_funcs_B_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else {
        /* empty else */
      }
    }
  }
}


