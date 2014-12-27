/*----------------------------------------------------------------------------
 * File:  stringtest_device_class.c
 *
 * Class:       device  (device)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "string_return_test_sys_types.h"
#include "LOG_bridge.h"
#include "stringtest_classes.h"

/*
 * instance operation:  rstr
 */
c_t *
stringtest_device_op_rstr( stringtest_device * self)
{
  /* RETURN self.lower */
  {c_t * xtumlOALrv = self->lower;
  return xtumlOALrv;}

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      device  (device)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s stringtest_device_container[ stringtest_device_MAX_EXTENT_SIZE ];
static stringtest_device stringtest_device_instances[ stringtest_device_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_stringtest_device_extent = {
  {0}, {0}, &stringtest_device_container[ 0 ],
  (Escher_iHandle_t) &stringtest_device_instances,
  sizeof( stringtest_device ), stringtest_device_STATE_1, stringtest_device_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      device  (device)
 * Component:  stringtest
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [putting]
 */
static void stringtest_device_act1( stringtest_device *, const Escher_xtUMLEvent_t * const );
static void
stringtest_device_act1( stringtest_device * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_deviceevent1 * rcvd_evt = (stringtest_deviceevent1 *) event;
  c_t v_sretval5trv34[ESCHER_SYS_MAX_STRING_LEN];c_t l[ESCHER_SYS_MAX_STRING_LEN];stringtest_host * h;
  /* ASSIGN h = PARAM.h */
  h = rcvd_evt->p_h;
  /* ASSIGN l = buffer::scmp(s1:h.upper, s2:PARAM.s) */
  Escher_strcpy( l, stringtest_buffer_op_scmp(h->upper, rcvd_evt->p_s) );
  /* ASSIGN l = buffer::scmp(s1:self.lower, self.rstr()) */
  Escher_strcpy( l, stringtest_buffer_op_scmp(self->lower, Escher_strcpy( v_sretval5trv34, stringtest_device_op_rstr(self))) );
  /* GENERATE host1:get(s:l, d:self) TO h */
  { stringtest_hostevent1 * e = (stringtest_hostevent1 *) Escher_NewxtUMLEvent( h, &stringtest_hostevent1c );
    Escher_strcpy( e->p_s, l );    e->p_d = self;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 2:  [getting]
 */
static void stringtest_device_act2( stringtest_device *, const Escher_xtUMLEvent_t * const );
static void
stringtest_device_act2( stringtest_device * self, const Escher_xtUMLEvent_t * const event )
{
  stringtest_deviceevent2 * rcvd_evt = (stringtest_deviceevent2 *) event;
  c_t v_sretval5trv34[ESCHER_SYS_MAX_STRING_LEN];c_t l[ESCHER_SYS_MAX_STRING_LEN];stringtest_host * h;
  /* ASSIGN h = PARAM.h */
  h = rcvd_evt->p_h;
  /* ASSIGN l = buffer::scmp(s1:h.upper, s2:PARAM.s) */
  Escher_strcpy( l, stringtest_buffer_op_scmp(h->upper, rcvd_evt->p_s) );
  /* ASSIGN l = buffer::scmp(s1:self.lower, self.rstr()) */
  Escher_strcpy( l, stringtest_buffer_op_scmp(self->lower, Escher_strcpy( v_sretval5trv34, stringtest_device_op_rstr(self))) );
  /* GENERATE host2:put(s:l, d:self) TO h */
  { stringtest_hostevent2 * e = (stringtest_hostevent2 *) Escher_NewxtUMLEvent( h, &stringtest_hostevent2c );
    Escher_strcpy( e->p_s, l );    e->p_d = self;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t stringtest_deviceevent1c = {
  stringtest_DOMAIN_ID, stringtest_device_CLASS_NUMBER, STRINGTEST_DEVICEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t stringtest_deviceevent2c = {
  stringtest_DOMAIN_ID, stringtest_device_CLASS_NUMBER, STRINGTEST_DEVICEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t stringtest_device_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  stringtest_device_STATE_1 (putting) */
  { EVENT_CANT_HAPPEN, stringtest_device_STATE_2 },
  /* row 2:  stringtest_device_STATE_2 (getting) */
  { stringtest_device_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t stringtest_device_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) stringtest_device_act1,  /* putting */
    (StateAction_t) stringtest_device_act2  /* getting */
  };

/*
 * instance state machine event dispatching
 */
void
stringtest_device_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = stringtest_device_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *stringtest_device_acts[ next_state ] )( instance, event );
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


