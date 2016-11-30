/*----------------------------------------------------------------------------
 * File:  monitor_alarm_class.c
 *
 * Class:       alarm  (alarm)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO alarm ACROSS R7
 */
void
monitor_alarm_R7_Link_sounds( monitor_vitalsign * part, monitor_alarm * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "alarm", "monitor_alarm_R7_Link_sounds" );
    return;
  }
  Escher_strcpy( form->vitalsign_name, part->name );
  /* Note:  alarm->vitalsign[R7] not navigated */
  part->alarm_R7_sounds = form;
}

/*
 * UNRELATE vitalsign FROM alarm ACROSS R7
 */
void
monitor_alarm_R7_Unlink_sounds( monitor_vitalsign * part, monitor_alarm * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "alarm", "monitor_alarm_R7_Unlink_sounds" );
    return;
  }
  Escher_memset( &form->vitalsign_name, 0, sizeof( form->vitalsign_name ) );
  /* Note:  alarm->vitalsign[R7] not navigated */
  part->alarm_R7_sounds = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_alarm_container[ monitor_alarm_MAX_EXTENT_SIZE ];
static monitor_alarm monitor_alarm_instances[ monitor_alarm_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_alarm_extent = {
  {0}, {0}, &monitor_alarm_container[ 0 ],
  (Escher_iHandle_t) &monitor_alarm_instances,
  sizeof( monitor_alarm ), monitor_alarm_STATE_1, monitor_alarm_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      alarm  (alarm)
 * Component:  monitor
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [alarm triggered]
 */
static void monitor_alarm_act1( monitor_alarm *, const Escher_xtUMLEvent_t * const );
static void
monitor_alarm_act1( monitor_alarm * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * e;
  /* CREATE EVENT INSTANCE e(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE e(  ) TO self" );
  e = Escher_NewxtUMLEvent( (void *) self, &monitor_alarmevent1c );
  /* ASSIGN self.timer = TIM::timer_start(event_inst:e, microseconds:15000000) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.timer = TIM::timer_start(event_inst:e, microseconds:15000000)" );
  self->timer = TIM_timer_start( (Escher_xtUMLEvent_t *)e, 15000000 );
}

/*
 * State 2:  [sounding audio]
 */
static void monitor_alarm_act2( monitor_alarm *, const Escher_xtUMLEvent_t * const );
static void
monitor_alarm_act2( monitor_alarm * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [cleared]
 */
static void monitor_alarm_act3( monitor_alarm *, const Escher_xtUMLEvent_t * const );
static void
monitor_alarm_act3( monitor_alarm * self, const Escher_xtUMLEvent_t * const event )
{
  bool b;
  /* ASSIGN b = TIM::timer_cancel(timer_inst_ref:self.timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN b = TIM::timer_cancel(timer_inst_ref:self.timer)" );
  b = TIM_timer_cancel( self->timer );
}

/*
 * State 4:  [allowing resumption]
 */
static void monitor_alarm_act4( monitor_alarm *, const Escher_xtUMLEvent_t * const );
static void
monitor_alarm_act4( monitor_alarm * self, const Escher_xtUMLEvent_t * const event )
{
  /* GENERATE alarm2:clear() TO self */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE alarm2:clear() TO self" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &monitor_alarmevent2c );
    Escher_SendSelfEvent( e );
  }
}

const Escher_xtUMLEventConstant_t monitor_alarmevent1c = {
  monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER, MONITOR_ALARMEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t monitor_alarmevent2c = {
  monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER, MONITOR_ALARMEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t monitor_alarm_StateEventMatrix[ 4 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  monitor_alarm_STATE_1 (alarm triggered) */
  { monitor_alarm_STATE_2, monitor_alarm_STATE_4 },
  /* row 2:  monitor_alarm_STATE_2 (sounding audio) */
  { EVENT_CANT_HAPPEN, monitor_alarm_STATE_3 },
  /* row 3:  monitor_alarm_STATE_3 (cleared) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 4:  monitor_alarm_STATE_4 (allowing resumption) */
  { EVENT_CANT_HAPPEN, monitor_alarm_STATE_3 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t monitor_alarm_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) monitor_alarm_act1,  /* alarm triggered */
    (StateAction_t) monitor_alarm_act2,  /* sounding audio */
    (StateAction_t) monitor_alarm_act3,  /* cleared */
    (StateAction_t) monitor_alarm_act4  /* allowing resumption */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 5 ] = {
    "",
    "alarm triggered",
    "sounding audio",
    "cleared",
    "allowing resumption"
  };

/*
 * instance state machine event dispatching
 */
void
monitor_alarm_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = monitor_alarm_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        STATE_TXN_START_TRACE( "alarm", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *monitor_alarm_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "alarm", next_state, state_name_strings[ next_state ] );

        /* Self deletion state transition? */
        if ( next_state == monitor_alarm_STATE_3 ) {          Escher_DeleteInstance( instance, monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER );
        } else {
          instance->current_state = next_state;
        }
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "alarm", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


