/*----------------------------------------------------------------------------
 * File:  dsl_INSTRUCTION_class.c
 *
 * Class:       instruction  (INSTRUCTION)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "dsl_classes.h"


/* Accessors to INSTRUCTION[R2] subtypes */


/*
 * RELATE <left> INSTRUCTION TO <right> INSTRUCTION ACROSS R4.'follows'
 */
void
dsl_INSTRUCTION_R4_Link_follows( dsl_INSTRUCTION * left, dsl_INSTRUCTION * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "INSTRUCTION", "dsl_INSTRUCTION_R4_Link_follows" );
    return;
  }
  left->INSTRUCTION_R4_follows = right; /* SR L1 */
  right->INSTRUCTION_R4 = left; /* SR L2 */
}

/* Note:  R4.'follows' never unrelated (or not needed).  */

/*
 * RELATE <left> INSTRUCTION TO <right> INSTRUCTION ACROSS R4.''
 */
void
dsl_INSTRUCTION_R4_Link( dsl_INSTRUCTION * left, dsl_INSTRUCTION * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "INSTRUCTION", "dsl_INSTRUCTION_R4_Link" );
    return;
  }
  right->INSTRUCTION_R4_follows = left; /* SR L4 */
  left->INSTRUCTION_R4 = right; /* SR L5 */
}

/* Note:  R4.'' never unrelated (or not needed).  */

/*
 * RELATE <left> INSTRUCTION TO <right> INSTRUCTION ACROSS R5.''
 */
void
dsl_INSTRUCTION_R5_Link( dsl_INSTRUCTION * left, dsl_INSTRUCTION * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "INSTRUCTION", "dsl_INSTRUCTION_R5_Link" );
    return;
  }
  left->INSTRUCTION_R5 = right; /* SR L1 */
  right->INSTRUCTION_R5_branches_to = left; /* SR L2 */
}

/* Note:  R5.'' never unrelated (or not needed).  */

/*
 * RELATE <left> INSTRUCTION TO <right> INSTRUCTION ACROSS R5.'branches to'
 */
void
dsl_INSTRUCTION_R5_Link_branches_to( dsl_INSTRUCTION * left, dsl_INSTRUCTION * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "INSTRUCTION", "dsl_INSTRUCTION_R5_Link_branches_to" );
    return;
  }
  right->INSTRUCTION_R5 = left; /* SR L4 */
  left->INSTRUCTION_R5_branches_to = right; /* SR L5 */
}

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
  dsl_INSTRUCTIONevent1 * rcvd_evt = (dsl_INSTRUCTIONevent1 *) event;
  dsl_INSTRUCTION * pi; dsl_PROGRAM * program = 0; /* program (PROGRAM) */
 
  /* ASSIGN pi = PARAM.previous_instruction */
  pi = rcvd_evt->p_previous_instruction;
  /* IF ( not_empty pi ) */
  if ( ( 0 != pi ) ) {
    /* RELATE pi TO self ACROSS R4 */
    dsl_INSTRUCTION_R4_Link_follows( pi, self );
  }
  /* SELECT one program RELATED BY self->PROGRAM[R3] */
  program = self->PROGRAM_R3;
  /* ASSIGN self.opcode = program.store[program->PC] */
  self->opcode = program->store[program->PC];
  /* ASSIGN self.length = 0 */
  self->length = 0;
  /* IF ( ( opif == self.opcode ) ) */
  if ( ( 1 == self->opcode ) ) {
    /* ASSIGN self.length = OPIF::load(instruction:self, program:program) */
    self->length = dsl_OPIF_op_load(self, program);
  }
  else if ( ( 2 == self->opcode ) ) {
    /* ASSIGN self.length = FORLOOP::load(instruction:self, program:program) */
    self->length = dsl_FORLOOP_op_load(self, program);
  }
  else if ( ( 3 == self->opcode ) ) {
    /* ASSIGN self.length = WHILELOOP::load(instruction:self, program:program) */
    self->length = dsl_WHILELOOP_op_load(self, program);
  }
  else if ( ( 4 == self->opcode ) ) {
    /* ASSIGN self.length = DELAY::load(instruction:self, program:program) */
    self->length = dsl_DELAY_op_load(self, program);
  }
  else if ( ( 5 == self->opcode ) ) {
    /* ASSIGN self.length = 1 */
    self->length = 1;
  }
  else if ( ( 6 == self->opcode ) ) {
    /* ASSIGN self.length = 1 */
    self->length = 1;
  }
  else if ( ( 7 == self->opcode ) ) {
    /* ASSIGN self.length = 1 */
    self->length = 1;
  }
  else if ( ( ( 8 <= self->opcode ) && ( self->opcode <= 12 ) ) ) {
    /* ASSIGN self.length = STEP::load(instruction:self, program:program) */
    self->length = dsl_STEP_op_load(self, program);
  }
  else if ( ( ( 21 <= self->opcode ) && ( self->opcode <= 24 ) ) ) {
    /* ASSIGN self.length = LEDCMD::load(instruction:self, program:program) */
    self->length = dsl_LEDCMD_op_load(self, program);
  }
  else if ( ( ( 31 <= self->opcode ) && ( self->opcode <= 34 ) ) ) {
    /* ASSIGN self.length = ASCMD::load(instruction:self, program:program) */
    self->length = dsl_ASCMD_op_load(self, program);
  }
  else {
    /* LOG::LogFailure( message:'tried to load invalid opcode' ) */
    LOG_LogFailure( "tried to load invalid opcode" );
  }
  /* GENERATE PROGRAM5:instruction_loaded(length:self.length) TO program */
  { dsl_PROGRAMevent5 * e = (dsl_PROGRAMevent5 *) Escher_NewxtUMLEvent( program, &dsl_PROGRAMevent5c );
    e->p_length = self->length;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* GENERATE INSTRUCTION4:loaded() TO self */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &dsl_INSTRUCTIONevent4c );
    Escher_SendSelfEvent( e );
  }
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
  dsl_PROGRAM * program = 0; /* program (PROGRAM) */
 dsl_INSTRUCTION * next_instruction = 0; /* next_instruction (INSTRUCTION) */
 
  /* SELECT one program RELATED BY self->PROGRAM[R3] */
  program = self->PROGRAM_R3;
  /* SELECT one next_instruction RELATED BY self->INSTRUCTION[R5.branches to] */
  next_instruction = self->INSTRUCTION_R5_branches_to;
  /* IF ( empty next_instruction ) */
  if ( ( 0 == next_instruction ) ) {
    /* SELECT one next_instruction RELATED BY self->INSTRUCTION[R4.follows] */
    next_instruction = self->INSTRUCTION_R4_follows;
  }
  /* IF ( ( opif == self.opcode ) ) */
  if ( ( 1 == self->opcode ) ) {
    dsl_OPIF * sub = 0; /* sub (OPIF) */
 
    /* SELECT one sub RELATED BY self->OPIF[R2] */
    sub = 0;
    if ( dsl_OPIF_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_OPIF *) self->R2_subtype;
    /* sub.run() */
    dsl_OPIF_op_run( sub );
    /* GENERATE INSTRUCTION2:done(next:next_instruction) TO self */
    { dsl_INSTRUCTIONevent2 * e = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( self, &dsl_INSTRUCTIONevent2c );
      e->p_next = next_instruction;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( 2 == self->opcode ) ) {
    dsl_FORLOOP * sub = 0; /* sub (FORLOOP) */
 
    /* SELECT one sub RELATED BY self->FORLOOP[R2] */
    sub = 0;
    if ( dsl_FORLOOP_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_FORLOOP *) self->R2_subtype;
    /* IF ( sub.run() ) */
    if ( dsl_FORLOOP_op_run(sub) ) {
      /* SELECT one next_instruction RELATED BY sub->INSTRUCTION[R6.proceeds to] */
      next_instruction = sub->INSTRUCTION_R6;
    }
    /* GENERATE INSTRUCTION2:done(next:next_instruction) TO self */
    { dsl_INSTRUCTIONevent2 * e = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( self, &dsl_INSTRUCTIONevent2c );
      e->p_next = next_instruction;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( 3 == self->opcode ) ) {
    dsl_WHILELOOP * sub = 0; /* sub (WHILELOOP) */
 
    /* SELECT one sub RELATED BY self->WHILELOOP[R2] */
    sub = 0;
    if ( dsl_WHILELOOP_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_WHILELOOP *) self->R2_subtype;
    /* sub.run() */
    dsl_WHILELOOP_op_run( sub );
    /* GENERATE INSTRUCTION2:done(next:next_instruction) TO self */
    { dsl_INSTRUCTIONevent2 * e = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( self, &dsl_INSTRUCTIONevent2c );
      e->p_next = next_instruction;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( 4 == self->opcode ) ) {
    dsl_DELAY * sub = 0; /* sub (DELAY) */
 dsl_INSTRUCTIONevent2 * completion_event;  /* completion_event */ 
    /* SELECT one sub RELATED BY self->DELAY[R2] */
    sub = 0;
    if ( dsl_DELAY_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_DELAY *) self->R2_subtype;
    /* CREATE EVENT INSTANCE completion_event( next:next_instruction ) TO self */
    completion_event = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( (void *) self, &dsl_INSTRUCTIONevent2c );
          completion_event->p_next = next_instruction;    /* sub.run( completion_event:completion_event ) */
    dsl_DELAY_op_run( sub,  (Escher_xtUMLEvent_t *)completion_event );
  }
  else if ( ( 5 == self->opcode ) ) {
  }
  else if ( ( 6 == self->opcode ) ) {
  }
  else if ( ( 7 == self->opcode ) ) {
  }
  else if ( ( ( 8 <= self->opcode ) && ( self->opcode <= 12 ) ) ) {
    dsl_STEP * sub = 0; /* sub (STEP) */
 dsl_INSTRUCTIONevent2 * completion_event;  /* completion_event */ bool b; 
    /* SELECT one sub RELATED BY self->STEP[R2] */
    sub = 0;
    if ( dsl_STEP_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_STEP *) self->R2_subtype;
    /* CREATE EVENT INSTANCE completion_event( next:next_instruction ) TO self */
    completion_event = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( (void *) self, &dsl_INSTRUCTIONevent2c );
          completion_event->p_next = next_instruction;    /* ASSIGN b = sub.run(completion_event:completion_event) */
    b = dsl_STEP_op_run(sub, (Escher_xtUMLEvent_t *)completion_event);
  }
  else if ( ( ( 21 <= self->opcode ) && ( self->opcode <= 24 ) ) ) {
    dsl_LEDCMD * sub = 0; /* sub (LEDCMD) */
 dsl_INSTRUCTIONevent2 * completion_event;  /* completion_event */ bool b; 
    /* SELECT one sub RELATED BY self->LEDCMD[R2] */
    sub = 0;
    if ( dsl_LEDCMD_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_LEDCMD *) self->R2_subtype;
    /* CREATE EVENT INSTANCE completion_event( next:next_instruction ) TO self */
    completion_event = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( (void *) self, &dsl_INSTRUCTIONevent2c );
          completion_event->p_next = next_instruction;    /* ASSIGN b = sub.run(completion_event:completion_event) */
    b = dsl_LEDCMD_op_run(sub, (Escher_xtUMLEvent_t *)completion_event);
  }
  else if ( ( ( 31 <= self->opcode ) && ( self->opcode <= 34 ) ) ) {
    dsl_ASCMD * sub = 0; /* sub (ASCMD) */
 dsl_INSTRUCTIONevent2 * completion_event;  /* completion_event */ bool b; 
    /* SELECT one sub RELATED BY self->ASCMD[R2] */
    sub = 0;
    if ( dsl_ASCMD_CLASS_NUMBER == self->R2_object_id )    sub = (dsl_ASCMD *) self->R2_subtype;
    /* CREATE EVENT INSTANCE completion_event( next:next_instruction ) TO self */
    completion_event = (dsl_INSTRUCTIONevent2 *) Escher_NewxtUMLEvent( (void *) self, &dsl_INSTRUCTIONevent2c );
          completion_event->p_next = next_instruction;    /* ASSIGN b = sub.run(completion_event:completion_event) */
    b = dsl_ASCMD_op_run(sub, (Escher_xtUMLEvent_t *)completion_event);
  }
  else {
    /* LOG::LogFailure( message:'tried to run invalid opcode' ) */
    LOG_LogFailure( "tried to run invalid opcode" );
  }
}

/*
 */
static void dsl_INSTRUCTION_xact1( dsl_INSTRUCTION *, const Escher_xtUMLEvent_t * const );
static void
dsl_INSTRUCTION_xact1( dsl_INSTRUCTION * self, const Escher_xtUMLEvent_t * const event )
{
  dsl_INSTRUCTIONevent2 * rcvd_evt = (dsl_INSTRUCTIONevent2 *) event;
  dsl_INSTRUCTION * next_instruction; dsl_PROGRAM * program = 0; /* program (PROGRAM) */
 
  /* ASSIGN next_instruction = PARAM.next */
  next_instruction = rcvd_evt->p_next;
  /* SELECT one program RELATED BY self->PROGRAM[R3] */
  program = self->PROGRAM_R3;
  /* IF ( not_empty next_instruction ) */
  if ( ( 0 != next_instruction ) ) {
    /* UNRELATE self FROM program ACROSS R3 */
    dsl_PROGRAM_R3_Unlink( self, program );
    /* RELATE next_instruction TO program ACROSS R3 */
    dsl_PROGRAM_R3_Link( next_instruction, program );
    /* GENERATE INSTRUCTION3:run() TO next_instruction */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( next_instruction, &dsl_INSTRUCTIONevent3c );
      Escher_SendEvent( e );
    }
  }
  else {
    /* GENERATE PROGRAM2:done() TO program */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( program, &dsl_PROGRAMevent2c );
      Escher_SendEvent( e );
    }
  }
}

const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent1c = {
  dsl_DOMAIN_ID, dsl_INSTRUCTION_CLASS_NUMBER, DSL_INSTRUCTIONEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent2c = {
  dsl_DOMAIN_ID, dsl_INSTRUCTION_CLASS_NUMBER, DSL_INSTRUCTIONEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent3c = {
  dsl_DOMAIN_ID, dsl_INSTRUCTION_CLASS_NUMBER, DSL_INSTRUCTIONEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t dsl_INSTRUCTIONevent4c = {
  dsl_DOMAIN_ID, dsl_INSTRUCTION_CLASS_NUMBER, DSL_INSTRUCTIONEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t dsl_INSTRUCTION_StateEventMatrix[ 3 + 1 ][ 4 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  dsl_INSTRUCTION_STATE_1 (loading) */
  { dsl_INSTRUCTION_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, dsl_INSTRUCTION_STATE_2 },
  /* row 2:  dsl_INSTRUCTION_STATE_2 (loaded) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, dsl_INSTRUCTION_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  dsl_INSTRUCTION_STATE_3 (executing) */
  { EVENT_CANT_HAPPEN, (1<<8) + dsl_INSTRUCTION_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
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
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t dsl_INSTRUCTION_xacts[ 1 ] = {
    (StateAction_t) dsl_INSTRUCTION_xact1
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
  Escher_SEMcell_t next_state;
  
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
        ( *dsl_INSTRUCTION_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *dsl_INSTRUCTION_acts[ next_state ] )( instance, event );
      }
    }
  }
}


