/*----------------------------------------------------------------------------
 * File:  autosampler_probe_class.c
 *
 * Class:       probe  (probe)
 * Component:   autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "autosampler_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "autosampler_actuator_bridge.h"
#include "autosampler_classes.h"

/*
 * class operation:  top
 */
void
autosampler_probe_op_top()
{
  autosampler_probe * probe=0;
  /* SELECT any probe FROM INSTANCES OF probe */
  probe = (autosampler_probe *) Escher_SetGetAny( &pG_autosampler_probe_extent.active );
  /* GENERATE probe1:at_top() TO probe */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( probe, &autosampler_probeevent1c );
    Escher_SendEvent( e );
  }

}

/*
 * class operation:  bottom
 */
void
autosampler_probe_op_bottom()
{
  autosampler_probe * probe=0;
  /* SELECT any probe FROM INSTANCES OF probe */
  probe = (autosampler_probe *) Escher_SetGetAny( &pG_autosampler_probe_extent.active );
  /* GENERATE probe2:at_bottom() TO probe */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( probe, &autosampler_probeevent2c );
    Escher_SendEvent( e );
  }

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      probe  (probe)
 * Component:  autosampler
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s autosampler_probe_container[ autosampler_probe_MAX_EXTENT_SIZE ];
static autosampler_probe autosampler_probe_instances[ autosampler_probe_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_autosampler_probe_extent = {
  {0}, {0}, &autosampler_probe_container[ 0 ],
  (Escher_iHandle_t) &autosampler_probe_instances,
  sizeof( autosampler_probe ), autosampler_probe_STATE_1, autosampler_probe_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      probe  (probe)
 * Component:  autosampler
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [top]
 */
static void autosampler_probe_act1( autosampler_probe *, const Escher_xtUMLEvent_t * const );
static void
autosampler_probe_act1( autosampler_probe * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_batch * batch=0;
  /* ASSIGN self.state = up */
  self->state = autosampler_probeposition_up_e;
  /* SELECT one batch RELATED BY self->batch[R2.samples] */
  batch = ( 0 != self ) ? self->batch_R2_samples : 0;
  /* GENERATE batch1:probe_done() TO batch */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( batch, &autosampler_batchevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [bottom]
 */
static void autosampler_probe_act2( autosampler_probe *, const Escher_xtUMLEvent_t * const );
static void
autosampler_probe_act2( autosampler_probe * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_batch * batch=0;
  /* ASSIGN self.state = down */
  self->state = autosampler_probeposition_down_e;
  /* SELECT one batch RELATED BY self->batch[R2.samples] */
  batch = ( 0 != self ) ? self->batch_R2_samples : 0;
  /* GENERATE batch1:probe_done() TO batch */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( batch, &autosampler_batchevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [lowering]
 */
static void autosampler_probe_act3( autosampler_probe *, const Escher_xtUMLEvent_t * const );
static void
autosampler_probe_act3( autosampler_probe * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_spinner * spinner=0;
  /* SELECT one spinner RELATED BY self->spinner[R3.checks safety] */
  spinner = ( 0 != self ) ? self->spinner_R3_checks_safety : 0;
  /* IF ( spinner.ready ) */
  if ( spinner->ready ) {
    /* ASSIGN self.state = middle */
    self->state = autosampler_probeposition_middle_e;
    /* actuator::lower(  ) */
    autosampler_actuator_lower();
  }
  else {
    /* LOG::LogFailure( message:tried to lower probe while spinning ) */
    LOG_LogFailure( "tried to lower probe while spinning" );
  }
}

/*
 * State 4:  [raising]
 */
static void autosampler_probe_act4( autosampler_probe *, const Escher_xtUMLEvent_t * const );
static void
autosampler_probe_act4( autosampler_probe * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.state = middle */
  self->state = autosampler_probeposition_middle_e;
  /* actuator::raise(  ) */
  autosampler_actuator_raise();
}

const Escher_xtUMLEventConstant_t autosampler_probeevent1c = {
  autosampler_DOMAIN_ID, autosampler_probe_CLASS_NUMBER, AUTOSAMPLER_PROBEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_probeevent2c = {
  autosampler_DOMAIN_ID, autosampler_probe_CLASS_NUMBER, AUTOSAMPLER_PROBEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_probeevent3c = {
  autosampler_DOMAIN_ID, autosampler_probe_CLASS_NUMBER, AUTOSAMPLER_PROBEEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_probeevent4c = {
  autosampler_DOMAIN_ID, autosampler_probe_CLASS_NUMBER, AUTOSAMPLER_PROBEEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t autosampler_probe_StateEventMatrix[ 4 + 1 ][ 4 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  autosampler_probe_STATE_1 (top) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_probe_STATE_1, autosampler_probe_STATE_3 },
  /* row 2:  autosampler_probe_STATE_2 (bottom) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_probe_STATE_4, autosampler_probe_STATE_2 },
  /* row 3:  autosampler_probe_STATE_3 (lowering) */
  { EVENT_CANT_HAPPEN, autosampler_probe_STATE_2, autosampler_probe_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  autosampler_probe_STATE_4 (raising) */
  { autosampler_probe_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, autosampler_probe_STATE_3 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t autosampler_probe_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) autosampler_probe_act1,  /* top */
    (StateAction_t) autosampler_probe_act2,  /* bottom */
    (StateAction_t) autosampler_probe_act3,  /* lowering */
    (StateAction_t) autosampler_probe_act4  /* raising */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 5 ] = {
    "",
    "top",
    "bottom",
    "lowering",
    "raising"
  };

/*
 * instance state machine event dispatching
 */
void
autosampler_probe_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 4 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = autosampler_probe_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        STATE_TXN_START_TRACE( "probe", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *autosampler_probe_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "probe", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "probe", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


