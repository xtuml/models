/*----------------------------------------------------------------------------
 * File:  calc_EXPR_class.c
 *
 * Class:       expression  (EXPR)
 * Component:   calc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "calc_classes.h"

/*
 * instance operation:  getkey
 */
i_t
calc_EXPR_op_getkey( calc_EXPR * self)
{
  i_t key; 
  /* ASSIGN key = - 1 */
  key = -1;
  /* IF ( ( self.outdex < self.index ) ) */
  if ( ( self->outdex < self->index ) ) {
    /* ASSIGN key = self.raw[self->outdex] */
    key = self->raw[self->outdex];
    /* ASSIGN self.outdex = ( self.outdex + 1 ) */
    self->outdex = ( self->outdex + 1 );
  }
  /* RETURN key */
  return key;

}

/*
 * instance operation:  init
 */
void
calc_EXPR_op_init( calc_EXPR * self)
{
  /* ASSIGN self.evaluation = 0 */
  self->evaluation = 0;
  /* ASSIGN self.index = 0 */
  self->index = 0;
  /* ASSIGN self.outdex = 0 */
  self->outdex = 0;

}

/*
 * instance operation:  addkey
 */
void
calc_EXPR_op_addkey( calc_EXPR * self, i_t p_code)
{
  /* IF ( ( self.index == self.outdex ) ) */
  if ( ( self->index == self->outdex ) ) {
    /* GENERATE EXPR4:symbol(code:PARAM.code) TO self */
    { calc_EXPRevent4 * e = (calc_EXPRevent4 *) Escher_NewxtUMLEvent( self, &calc_EXPRevent4c );
      e->p_code = p_code;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  /* ASSIGN self.raw[self->index] = PARAM.code */
  self->raw[self->index] = p_code;
  /* ASSIGN self.index = ( self.index + 1 ) */
  self->index = ( self->index + 1 );

}

/*
 * instance operation:  combine
 */
void
calc_EXPR_op_combine( calc_EXPR * self, i_t p_code)
{
  calc_OP * op = 0; /* op (OP) */
 calc_VAL * operand1 = 0; /* operand1 (VAL) */
 calc_VAL * operand2 = 0; /* operand2 (VAL) */
 
  /* SELECT one op RELATED BY self->OP[R1] */
  op = self->OP_R1;
  /* SELECT one operand1 RELATED BY op->VAL[R2] */
  operand1 = op->VAL_R2;
  /* SELECT one operand2 RELATED BY op->VAL[R3] */
  operand2 = op->VAL_R3;
  /* IF ( ( 10 == op.op ) ) */
  if ( ( 10 == op->op ) ) {
    /* ASSIGN self.evaluation = ( operand1.value + operand2.value ) */
    self->evaluation = ( operand1->value + operand2->value );
  }
  else if ( ( 11 == op->op ) ) {
    /* ASSIGN self.evaluation = ( operand1.value - operand2.value ) */
    self->evaluation = ( operand1->value - operand2->value );
  }
  else if ( ( 12 == op->op ) ) {
    /* ASSIGN self.evaluation = ( operand1.value * operand2.value ) */
    self->evaluation = ( operand1->value * operand2->value );
  }
  else if ( ( 13 == op->op ) ) {
    /* ASSIGN self.evaluation = ( operand1.value / operand2.value ) */
    self->evaluation = ( operand1->value / operand2->value );
  }
  else {
  }
  /* ASSIGN operand1.value = self.evaluation */
  operand1->value = self->evaluation;
  /* ASSIGN op.op = PARAM.code */
  op->op = p_code;
  /* UNRELATE op FROM operand2 ACROSS R3 */
  calc_OP_R3_Unlink( operand2, op );
  /* DELETE OBJECT INSTANCE operand2 */
  if ( 0 == operand2 ) {
    XTUML_EMPTY_HANDLE_TRACE( "VAL", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) operand2, calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER );

}


/*
 * RELATE OP TO EXPR ACROSS R1
 */
void
calc_EXPR_R1_Link( calc_OP * part, calc_EXPR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "EXPR", "calc_EXPR_R1_Link" );
    return;
  }
  form->OP_R1 = part;
  /* Note:  OP->EXPR[R1] not navigated */
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      expression  (EXPR)
 * Component:  calc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s calc_EXPR_container[ calc_EXPR_MAX_EXTENT_SIZE ];
static calc_EXPR calc_EXPR_instances[ calc_EXPR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_calc_EXPR_extent = {
  {0}, {0}, &calc_EXPR_container[ 0 ],
  (Escher_iHandle_t) &calc_EXPR_instances,
  sizeof( calc_EXPR ), calc_EXPR_STATE_1, calc_EXPR_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      expression  (EXPR)
 * Component:  calc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [entering op1]
 */
static void calc_EXPR_act1( calc_EXPR *, const Escher_xtUMLEvent_t * const );
static void
calc_EXPR_act1( calc_EXPR * self, const Escher_xtUMLEvent_t * const event )
{
  calc_EXPRevent4 * rcvd_evt = (calc_EXPRevent4 *) event;
  i_t key; calc_VAL * operand1 = 0; /* operand1 (VAL) */
 
  /* ASSIGN key = self.getkey() */
  key = calc_EXPR_op_getkey(self);
  /* SELECT one operand1 RELATED BY self->OP[R1]->VAL[R2] */
  operand1 = 0;
  {  if ( 0 != self ) {
  calc_OP * OP_R1 = self->OP_R1;
  if ( 0 != OP_R1 ) {
  operand1 = OP_R1->VAL_R2;
}}}
  /* GENERATE VAL2:symbol(code:key) TO operand1 */
  { calc_VALevent2 * e = (calc_VALevent2 *) Escher_NewxtUMLEvent( operand1, &calc_VALevent2c );
    e->p_code = key;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 2:  [entering operator]
 */
static void calc_EXPR_act2( calc_EXPR *, const Escher_xtUMLEvent_t * const );
static void
calc_EXPR_act2( calc_EXPR * self, const Escher_xtUMLEvent_t * const event )
{
  calc_EXPRevent2 * rcvd_evt = (calc_EXPRevent2 *) event;
  calc_OP * op = 0; /* op (OP) */
 calc_VAL * operand2; i_t key; 
  /* SELECT one op RELATED BY self->OP[R1] */
  op = self->OP_R1;
  /* ASSIGN op.op = PARAM.code */
  op->op = rcvd_evt->p_code;
  /* CREATE OBJECT INSTANCE operand2 OF VAL */
  operand2 = (calc_VAL *) Escher_CreateInstance( calc_DOMAIN_ID, calc_VAL_CLASS_NUMBER );
  /* operand2.init() */
  calc_VAL_op_init( operand2 );
  /* RELATE operand2 TO op ACROSS R3 */
  calc_OP_R3_Link( operand2, op );
  /* ASSIGN key = self.getkey() */
  key = calc_EXPR_op_getkey(self);
  /* IF ( ( key > 0 ) ) */
  if ( ( key > 0 ) ) {
    /* GENERATE EXPR4:symbol(code:key) TO self */
    { calc_EXPRevent4 * e = (calc_EXPRevent4 *) Escher_NewxtUMLEvent( self, &calc_EXPRevent4c );
      e->p_code = key;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

/*
 * State 3:  [entering op2]
 */
static void calc_EXPR_act3( calc_EXPR *, const Escher_xtUMLEvent_t * const );
static void
calc_EXPR_act3( calc_EXPR * self, const Escher_xtUMLEvent_t * const event )
{
  calc_EXPRevent4 * rcvd_evt = (calc_EXPRevent4 *) event;
  calc_VAL * operand2 = 0; /* operand2 (VAL) */
 
  /* SELECT one operand2 RELATED BY self->OP[R1]->VAL[R3] */
  operand2 = 0;
  {  if ( 0 != self ) {
  calc_OP * OP_R1 = self->OP_R1;
  if ( 0 != OP_R1 ) {
  operand2 = OP_R1->VAL_R3;
}}}
  /* GENERATE VAL2:symbol(code:PARAM.code) TO operand2 */
  { calc_VALevent2 * e = (calc_VALevent2 *) Escher_NewxtUMLEvent( operand2, &calc_VALevent2c );
    e->p_code = rcvd_evt->p_code;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 4:  [combining]
 */
static void calc_EXPR_act4( calc_EXPR *, const Escher_xtUMLEvent_t * const );
static void
calc_EXPR_act4( calc_EXPR * self, const Escher_xtUMLEvent_t * const event )
{
  calc_EXPRevent2 * rcvd_evt = (calc_EXPRevent2 *) event;
  /* self.combine( code:PARAM.code ) */
  calc_EXPR_op_combine( self,  rcvd_evt->p_code );
  /*  SEND kb::result(value:self.evaluation) */
  calc_kb_result( self->evaluation );
  /* IF ( ( PARAM.code != 14 ) ) */
  if ( ( rcvd_evt->p_code != 14 ) ) {
    /* GENERATE EXPR2:op(code:PARAM.code) TO self */
    { calc_EXPRevent2 * e = (calc_EXPRevent2 *) Escher_NewxtUMLEvent( self, &calc_EXPRevent2c );
      e->p_code = rcvd_evt->p_code;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

const Escher_xtUMLEventConstant_t calc_EXPRevent2c = {
  calc_DOMAIN_ID, calc_EXPR_CLASS_NUMBER, CALC_EXPREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t calc_EXPRevent4c = {
  calc_DOMAIN_ID, calc_EXPR_CLASS_NUMBER, CALC_EXPREVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t calc_EXPR_StateEventMatrix[ 4 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  calc_EXPR_STATE_1 (entering op1) */
  { calc_EXPR_STATE_2, calc_EXPR_STATE_1 },
  /* row 2:  calc_EXPR_STATE_2 (entering operator) */
  { EVENT_CANT_HAPPEN, calc_EXPR_STATE_3 },
  /* row 3:  calc_EXPR_STATE_3 (entering op2) */
  { calc_EXPR_STATE_4, calc_EXPR_STATE_3 },
  /* row 4:  calc_EXPR_STATE_4 (combining) */
  { calc_EXPR_STATE_2, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t calc_EXPR_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) calc_EXPR_act1,  /* entering op1 */
    (StateAction_t) calc_EXPR_act2,  /* entering operator */
    (StateAction_t) calc_EXPR_act3,  /* entering op2 */
    (StateAction_t) calc_EXPR_act4  /* combining */
  };

/*
 * instance state machine event dispatching
 */
void
calc_EXPR_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = calc_EXPR_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        /* Execute the state action and update the current state.  */
        ( *calc_EXPR_acts[ next_state ] )( instance, event );
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


