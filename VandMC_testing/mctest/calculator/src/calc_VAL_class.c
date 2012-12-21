/*----------------------------------------------------------------------------
 * File:  calc_VAL_class.c
 *
 * Class:       operand  (VAL)
 * Component:   calc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "calc_classes.h"

/*
 * instance operation:  init
 */
void
calc_VAL_op_init( calc_VAL * self)
{
  /* ASSIGN self.value = 0.0 */
  self->value = 0.0;
  /* ASSIGN self.sign = 1 */
  self->sign = 1;
  /* ASSIGN self.whole = 0 */
  self->whole = 0;
  /* ASSIGN self.fraction = 0.0 */
  self->fraction = 0.0;

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      operand  (VAL)
 * Component:  calc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s calc_VAL_container[ calc_VAL_MAX_EXTENT_SIZE ];
static calc_VAL calc_VAL_instances[ calc_VAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_calc_VAL_extent = {
  {0}, {0}, &calc_VAL_container[ 0 ],
  (Escher_iHandle_t) &calc_VAL_instances,
  sizeof( calc_VAL ), calc_VAL_STATE_1, calc_VAL_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      operand  (VAL)
 * Component:  calc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [toggling sign]
 */
static void calc_VAL_act1( calc_VAL *, const Escher_xtUMLEvent_t * const );
static void
calc_VAL_act1( calc_VAL * self, const Escher_xtUMLEvent_t * const event )
{
  calc_VALevent2 * rcvd_evt = (calc_VALevent2 *) event;
  i_t key; 
  /* ASSIGN key = PARAM.code */
  key = rcvd_evt->p_code;
  /* IF ( ( key <= 9 ) ) */
  if ( ( key <= 9 ) ) {
    /* GENERATE VAL1:digit(code:PARAM.code) TO self */
    { calc_VALevent1 * e = (calc_VALevent1 *) Escher_NewxtUMLEvent( self, &calc_VALevent1c );
      e->p_code = rcvd_evt->p_code;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( key == 20 ) ) {
    /* GENERATE VAL3:point(code:key) TO self */
    { calc_VALevent3 * e = (calc_VALevent3 *) Escher_NewxtUMLEvent( self, &calc_VALevent3c );
      e->p_code = key;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else {
    calc_EXPR * expr=0; 
    /* IF ( ( key == 11 ) ) */
    if ( ( key == 11 ) ) {
      /* ASSIGN self.sign = - self.sign */
      self->sign = -self->sign;
    }
    /* SELECT any expr FROM INSTANCES OF EXPR */
    expr = (calc_EXPR *) Escher_SetGetAny( &pG_calc_EXPR_extent.active );
    /* ASSIGN key = expr.getkey() */
    key = calc_EXPR_op_getkey(expr);
    /* IF ( ( key > 0 ) ) */
    if ( ( key > 0 ) ) {
      /* GENERATE VAL2:symbol(code:key) TO self */
      { calc_VALevent2 * e = (calc_VALevent2 *) Escher_NewxtUMLEvent( self, &calc_VALevent2c );
        e->p_code = key;
        Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
      }
    }
  }
}

/*
 * State 2:  [receiving whole part]
 */
static void calc_VAL_act2( calc_VAL *, const Escher_xtUMLEvent_t * const );
static void
calc_VAL_act2( calc_VAL * self, const Escher_xtUMLEvent_t * const event )
{
  calc_VALevent1 * rcvd_evt = (calc_VALevent1 *) event;
  i_t key; calc_EXPR * expr=0; 
  /* ASSIGN key = PARAM.code */
  key = rcvd_evt->p_code;
  /* SELECT any expr FROM INSTANCES OF EXPR */
  expr = (calc_EXPR *) Escher_SetGetAny( &pG_calc_EXPR_extent.active );
  /* IF ( ( key == 20 ) ) */
  if ( ( key == 20 ) ) {
    /* GENERATE VAL3:point(code:key) TO self */
    { calc_VALevent3 * e = (calc_VALevent3 *) Escher_NewxtUMLEvent( self, &calc_VALevent3c );
      e->p_code = key;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( ( 10 <= key ) && ( key <= 14 ) ) ) {
    /* GENERATE EXPR2:op(code:key) TO expr */
    { calc_EXPRevent2 * e = (calc_EXPRevent2 *) Escher_NewxtUMLEvent( expr, &calc_EXPRevent2c );
      e->p_code = key;
      Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else {
    /* IF ( ( key <= 9 ) ) */
    if ( ( key <= 9 ) ) {
      /* IF ( ( 0 == self.whole ) ) */
      if ( ( 0 == self->whole ) ) {
        /* ASSIGN self.whole = key */
        self->whole = key;
      }
      else {
        /* ASSIGN self.whole = ( ( self.whole * 10 ) + key ) */
        self->whole = ( ( self->whole * 10 ) + key );
      }
      /* ASSIGN self.value = ( ( self.sign * self.whole ) + ( self.fraction / 10.0 ) ) */
      self->value = ( ( self->sign * self->whole ) + ( self->fraction / 10.0 ) );
    }
    /* ASSIGN key = expr.getkey() */
    key = calc_EXPR_op_getkey(expr);
    /* IF ( ( key > 0 ) ) */
    if ( ( key > 0 ) ) {
      /* GENERATE VAL2:symbol(code:key) TO self */
      { calc_VALevent2 * e = (calc_VALevent2 *) Escher_NewxtUMLEvent( self, &calc_VALevent2c );
        e->p_code = key;
        Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
      }
    }
  }
}

/*
 * State 3:  [receiving fraction]
 */
static void calc_VAL_act3( calc_VAL *, const Escher_xtUMLEvent_t * const );
static void
calc_VAL_act3( calc_VAL * self, const Escher_xtUMLEvent_t * const event )
{
  calc_VALevent3 * rcvd_evt = (calc_VALevent3 *) event;
  i_t key; calc_EXPR * expr=0; 
  /* ASSIGN key = PARAM.code */
  key = rcvd_evt->p_code;
  /* SELECT any expr FROM INSTANCES OF EXPR */
  expr = (calc_EXPR *) Escher_SetGetAny( &pG_calc_EXPR_extent.active );
  /* IF ( ( ( 10 <= key ) and ( key <= 14 ) ) ) */
  if ( ( ( 10 <= key ) && ( key <= 14 ) ) ) {
    /* GENERATE EXPR2:op(code:key) TO expr */
    { calc_EXPRevent2 * e = (calc_EXPRevent2 *) Escher_NewxtUMLEvent( expr, &calc_EXPRevent2c );
      e->p_code = key;
      Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else {
    /* IF ( ( key <= 9 ) ) */
    if ( ( key <= 9 ) ) {
      /* ASSIGN self.fraction = key */
      self->fraction = key;
      /* ASSIGN self.value = ( ( self.sign * self.whole ) + ( self.fraction / 10.0 ) ) */
      self->value = ( ( self->sign * self->whole ) + ( self->fraction / 10.0 ) );
    }
    /* ASSIGN key = expr.getkey() */
    key = calc_EXPR_op_getkey(expr);
    /* IF ( ( key > 0 ) ) */
    if ( ( key > 0 ) ) {
      /* GENERATE VAL2:symbol(code:key) TO self */
      { calc_VALevent2 * e = (calc_VALevent2 *) Escher_NewxtUMLEvent( self, &calc_VALevent2c );
        e->p_code = key;
        Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
      }
    }
  }
}

const Escher_xtUMLEventConstant_t calc_VALevent1c = {
  calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER, CALC_VALEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t calc_VALevent2c = {
  calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER, CALC_VALEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t calc_VALevent3c = {
  calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER, CALC_VALEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t calc_VAL_StateEventMatrix[ 3 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  calc_VAL_STATE_1 (toggling sign) */
  { calc_VAL_STATE_2, calc_VAL_STATE_1, calc_VAL_STATE_3 },
  /* row 2:  calc_VAL_STATE_2 (receiving whole part) */
  { EVENT_CANT_HAPPEN, calc_VAL_STATE_2, calc_VAL_STATE_3 },
  /* row 3:  calc_VAL_STATE_3 (receiving fraction) */
  { EVENT_CANT_HAPPEN, calc_VAL_STATE_3, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t calc_VAL_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) calc_VAL_act1,  /* toggling sign */
    (StateAction_t) calc_VAL_act2,  /* receiving whole part */
    (StateAction_t) calc_VAL_act3  /* receiving fraction */
  };

/*
 * instance state machine event dispatching
 */
void
calc_VAL_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = calc_VAL_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        /* Execute the state action and update the current state.  */
        ( *calc_VAL_acts[ next_state ] )( instance, event );
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


