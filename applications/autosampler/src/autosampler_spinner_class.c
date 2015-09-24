/*----------------------------------------------------------------------------
 * File:  autosampler_spinner_class.c
 *
 * Class:       spinner  (spinner)
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
 * class operation:  arrived
 */
void
autosampler_spinner_op_arrived()
{
  autosampler_spinner * spinner=0;
  /* SELECT any spinner FROM INSTANCES OF spinner */
  spinner = (autosampler_spinner *) Escher_SetGetAny( &pG_autosampler_spinner_extent.active );
  /* GENERATE spinner1:arrived() TO spinner */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( spinner, &autosampler_spinnerevent1c );
    Escher_SendEvent( e );
  }

}

/*
 * instance operation:  go
 */
void
autosampler_spinner_op_go( autosampler_spinner * self, const i_t p_position )
{
  autosampler_spinner * spinner=0;
  /* SELECT any spinner FROM INSTANCES OF spinner */
  spinner = (autosampler_spinner *) Escher_SetGetAny( &pG_autosampler_spinner_extent.active );
  /* GENERATE spinner2:go(position:PARAM.position) TO spinner */
  { autosampler_spinnerevent2 * e = (autosampler_spinnerevent2 *) Escher_NewxtUMLEvent( spinner, &autosampler_spinnerevent2c );
    e->p_position = p_position;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }

}


/*
 * RELATE batch TO spinner ACROSS R1
 */
void
autosampler_spinner_R1_Link( autosampler_batch * part, autosampler_spinner * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "spinner", "autosampler_spinner_R1_Link" );
    return;
  }
  form->batch_R1_spins = part;
  part->spinner_R1 = form;
}

/*
 * UNRELATE batch FROM spinner ACROSS R1
 */
void
autosampler_spinner_R1_Unlink( autosampler_batch * part, autosampler_spinner * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "spinner", "autosampler_spinner_R1_Unlink" );
    return;
  }
  form->batch_R1_spins = 0;
  part->spinner_R1 = 0;
}

/*
 * RELATE probe TO spinner ACROSS R3
 */
void
autosampler_spinner_R3_Link_checks_safety( autosampler_probe * part, autosampler_spinner * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "spinner", "autosampler_spinner_R3_Link_checks_safety" );
    return;
  }
  form->probe_R3_checks__safety = part;
  part->spinner_R3_checks_safety = form;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      spinner  (spinner)
 * Component:  autosampler
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s autosampler_spinner_container[ autosampler_spinner_MAX_EXTENT_SIZE ];
static autosampler_spinner autosampler_spinner_instances[ autosampler_spinner_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_autosampler_spinner_extent = {
  {0}, {0}, &autosampler_spinner_container[ 0 ],
  (Escher_iHandle_t) &autosampler_spinner_instances,
  sizeof( autosampler_spinner ), autosampler_spinner_STATE_1, autosampler_spinner_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      spinner  (spinner)
 * Component:  autosampler
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [stopped]
 */
static void autosampler_spinner_act1( autosampler_spinner *, const Escher_xtUMLEvent_t * const );
static void
autosampler_spinner_act1( autosampler_spinner * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_batch * batch=0;
  /* SELECT one batch RELATED BY self->batch[R1.spins] */
  batch = ( 0 != self ) ? self->batch_R1_spins : 0;
  /* GENERATE batch2:spinner_done() TO batch */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( batch, &autosampler_batchevent2c );
    Escher_SendEvent( e );
  }
  /* ASSIGN self.ready = TRUE */
  self->ready = TRUE;
}

/*
 * State 2:  [going]
 */
static void autosampler_spinner_act2( autosampler_spinner *, const Escher_xtUMLEvent_t * const );
static void
autosampler_spinner_act2( autosampler_spinner * self, const Escher_xtUMLEvent_t * const event )
{
  autosampler_spinnerevent2 * rcvd_evt = (autosampler_spinnerevent2 *) event;
  autosampler_probe * probe=0;
  /* SELECT one probe RELATED BY self->probe[R3] */
  probe = ( 0 != self ) ? self->probe_R3_checks__safety : 0;
  /* IF ( ( probe.state == up ) ) */
  if ( ( probe->state == autosampler_probeposition_up_e ) ) {
    /* actuator::spin( capacity:self.capacity, position:PARAM.position ) */
    autosampler_actuator_spin( self->capacity, rcvd_evt->p_position );
    /* ASSIGN self.ready = FALSE */
    self->ready = FALSE;
    /* ASSIGN self.position = PARAM.position */
    self->position = rcvd_evt->p_position;
  }
  else {
    /* LOG::LogFailure( message:tried to spin with probe down ) */
    LOG_LogFailure( "tried to spin with probe down" );
  }
}

const Escher_xtUMLEventConstant_t autosampler_spinnerevent1c = {
  autosampler_DOMAIN_ID, autosampler_spinner_CLASS_NUMBER, AUTOSAMPLER_SPINNEREVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t autosampler_spinnerevent2c = {
  autosampler_DOMAIN_ID, autosampler_spinner_CLASS_NUMBER, AUTOSAMPLER_SPINNEREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t autosampler_spinner_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  autosampler_spinner_STATE_1 (stopped) */
  { EVENT_CANT_HAPPEN, autosampler_spinner_STATE_2 },
  /* row 2:  autosampler_spinner_STATE_2 (going) */
  { autosampler_spinner_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t autosampler_spinner_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) autosampler_spinner_act1,  /* stopped */
    (StateAction_t) autosampler_spinner_act2  /* going */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "stopped",
    "going"
  };

/*
 * instance state machine event dispatching
 */
void
autosampler_spinner_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = autosampler_spinner_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "spinner", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *autosampler_spinner_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "spinner", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "spinner", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


