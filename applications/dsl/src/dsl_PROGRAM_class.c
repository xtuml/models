/*----------------------------------------------------------------------------
 * File:  dsl_PROGRAM_class.c
 *
 * Class:       program  (PROGRAM)
 * Component:   dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "dsl_classes.h"

/*
 * class operation:  load
 */
void
dsl_PROGRAM_op_load( i_t p_data[256], i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  dsl_PROGRAM * program; 
  /* CREATE OBJECT INSTANCE program OF PROGRAM */
  program = (dsl_PROGRAM *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_PROGRAM_CLASS_NUMBER );
  /* ASSIGN program.name = PARAM.name */
  Escher_strcpy( program->name, p_name );
  /* ASSIGN program.length = PARAM.length */
  program->length = p_length;
  /* ASSIGN program.PC = program.length */
  program->PC = program->length;
  /* WHILE ( ( program.PC > 0 ) ) */
  while ( ( program->PC > 0 ) ) {
    /* ASSIGN program.PC = ( program.PC - 1 ) */
    program->PC = ( program->PC - 1 );
    /* ASSIGN program.store[program->PC] = PARAM.data[program->PC] */
    Escher_memmove( (void * const) &(program->store[program->PC]), (void const * const) &(p_data[program->PC]), sizeof( p_data[program->PC] ) );
  }
  /* GENERATE PROGRAM1:load() TO program */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( program, &dsl_PROGRAMevent1c );
    Escher_SendEvent( e );
  }

}

/*
 * instance operation:  run
 */
void
dsl_PROGRAM_op_run( dsl_PROGRAM * self)
{

}

/*
 * instance operation:  pause
 */
void
dsl_PROGRAM_op_pause( dsl_PROGRAM * self)
{

}

/*
 * instance operation:  resume
 */
void
dsl_PROGRAM_op_resume( dsl_PROGRAM * self)
{

}


/*
 * RELATE INSTRUCTION TO PROGRAM ACROSS R1
 */
void
dsl_PROGRAM_R1_Link( dsl_INSTRUCTION * part, dsl_PROGRAM * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "PROGRAM", "dsl_PROGRAM_R1_Link" );
    return;
  }
  form->starting_location = part->location;
  form->INSTRUCTION_R1 = part;
  /* Note:  INSTRUCTION->PROGRAM[R1] not navigated */
}

/*
 * RELATE INSTRUCTION TO PROGRAM ACROSS R3
 */
void
dsl_PROGRAM_R3_Link( dsl_INSTRUCTION * part, dsl_PROGRAM * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "PROGRAM", "dsl_PROGRAM_R3_Link" );
    return;
  }
  form->current_location = part->location;
  form->INSTRUCTION_R3 = part;
  part->PROGRAM_R3 = form;
}

/*
 * UNRELATE INSTRUCTION FROM PROGRAM ACROSS R3
 */
void
dsl_PROGRAM_R3_Unlink( dsl_INSTRUCTION * part, dsl_PROGRAM * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "PROGRAM", "dsl_PROGRAM_R3_Unlink" );
    return;
  }
  form->current_location = 0;
  form->INSTRUCTION_R3 = 0;
  part->PROGRAM_R3 = 0;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      program  (PROGRAM)
 * Component:  dsl
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s dsl_PROGRAM_container[ dsl_PROGRAM_MAX_EXTENT_SIZE ];
static dsl_PROGRAM dsl_PROGRAM_instances[ dsl_PROGRAM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_dsl_PROGRAM_extent = {
  {0}, {0}, &dsl_PROGRAM_container[ 0 ],
  (Escher_iHandle_t) &dsl_PROGRAM_instances,
  sizeof( dsl_PROGRAM ), dsl_PROGRAM_STATE_1, dsl_PROGRAM_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      program  (PROGRAM)
 * Component:  dsl
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [loading instruction]
 */
static void dsl_PROGRAM_act1( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act1( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
  dsl_INSTRUCTION * first_instruction = 0; /* first_instruction (INSTRUCTION) */
 dsl_INSTRUCTION * previous_instruction = 0; /* previous_instruction (INSTRUCTION) */
 dsl_INSTRUCTION * instruction; 
  /* SELECT one first_instruction RELATED BY self->INSTRUCTION[R1] */
  first_instruction = self->INSTRUCTION_R1;
  /* SELECT one previous_instruction RELATED BY self->INSTRUCTION[R3] */
  previous_instruction = self->INSTRUCTION_R3;
  /* CREATE OBJECT INSTANCE instruction OF INSTRUCTION */
  instruction = (dsl_INSTRUCTION *) Escher_CreateInstance( dsl_DOMAIN_ID, dsl_INSTRUCTION_CLASS_NUMBER );
  /* ASSIGN instruction.location = self.PC */
  instruction->location = self->PC;
  /* IF ( empty first_instruction ) */
  if ( ( 0 == first_instruction ) ) {
    /* RELATE self TO instruction ACROSS R1 */
    dsl_PROGRAM_R1_Link( instruction, self );
  }
  /* IF ( not_empty previous_instruction ) */
  if ( ( 0 != previous_instruction ) ) {
    /* UNRELATE self FROM previous_instruction ACROSS R3 */
    dsl_PROGRAM_R3_Unlink( previous_instruction, self );
  }
  /* RELATE self TO instruction ACROSS R3 */
  dsl_PROGRAM_R3_Link( instruction, self );
  /* GENERATE INSTRUCTION1:load(previous_instruction:previous_instruction) TO instruction */
  { dsl_INSTRUCTIONevent1 * e = (dsl_INSTRUCTIONevent1 *) Escher_NewxtUMLEvent( instruction, &dsl_INSTRUCTIONevent1c );
    e->p_previous_instruction = previous_instruction;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * State 3:  [loaded]
 */
static void dsl_PROGRAM_act3( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act3( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
  dsl_INSTRUCTION * first_instruction = 0; /* first_instruction (INSTRUCTION) */
 dsl_INSTRUCTION * current_instruction = 0; /* current_instruction (INSTRUCTION) */
 Escher_ObjectSet_s forloops_space={0}; Escher_ObjectSet_s * forloops = &forloops_space; /* forloops (FORLOOP) */ dsl_FORLOOP * forloop=0; 
  /* ASSIGN self.PC = 0 */
  self->PC = 0;
  /* SELECT one first_instruction RELATED BY self->INSTRUCTION[R1] */
  first_instruction = self->INSTRUCTION_R1;
  /* SELECT one current_instruction RELATED BY self->INSTRUCTION[R3] */
  current_instruction = self->INSTRUCTION_R3;
  /* UNRELATE self FROM current_instruction ACROSS R3 */
  dsl_PROGRAM_R3_Unlink( current_instruction, self );
  /* RELATE self TO first_instruction ACROSS R3 */
  dsl_PROGRAM_R3_Link( first_instruction, self );
  /* SELECT many forloops FROM INSTANCES OF FORLOOP */
  Escher_CopySet( forloops, &pG_dsl_FORLOOP_extent.active );
  /* FOR EACH forloop IN forloops */
  { Escher_Iterator_s iterdsl_FORLOOPforloop;
  dsl_FORLOOP * dsl_FORLOOPiterdsl_FORLOOPforloop;
  Escher_IteratorReset( &iterdsl_FORLOOPforloop, forloops );
  while ( (dsl_FORLOOPiterdsl_FORLOOPforloop = (dsl_FORLOOP *)Escher_IteratorNext( &iterdsl_FORLOOPforloop )) != 0 ) {
    forloop = dsl_FORLOOPiterdsl_FORLOOPforloop; {
    /* forloop.resolve_branches() */
    dsl_FORLOOP_op_resolve_branches( forloop );
  }}}
  /*  SEND APP::loaded(name:self.name) */
  dsl_APP_loaded( self->name );
  Escher_ClearSet( forloops );
}

/*
 * State 4:  [executing]
 */
static void dsl_PROGRAM_act4( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act4( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
  dsl_INSTRUCTION * first_instruction = 0; /* first_instruction (INSTRUCTION) */
 
  /* SELECT one first_instruction RELATED BY self->INSTRUCTION[R1] */
  first_instruction = self->INSTRUCTION_R1;
  /* GENERATE INSTRUCTION3:run() TO first_instruction */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( first_instruction, &dsl_INSTRUCTIONevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * State 5:  [paused]
 */
static void dsl_PROGRAM_act5( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act5( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 6:  [finished]
 */
static void dsl_PROGRAM_act6( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act6( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
  /*  SEND APP::finished(name:self.name) */
  dsl_APP_finished( self->name );
}

/*
 * State 2:  [instruction loaded]
 */
static void dsl_PROGRAM_act2( dsl_PROGRAM *, const Escher_xtUMLEvent_t * const );
static void
dsl_PROGRAM_act2( dsl_PROGRAM * self, const Escher_xtUMLEvent_t * const event )
{
  dsl_PROGRAMevent5 * rcvd_evt = (dsl_PROGRAMevent5 *) event;
  /* ASSIGN self.PC = ( self.PC + PARAM.length ) */
  self->PC = ( self->PC + rcvd_evt->p_length );
  /* IF ( ( self.PC < self.length ) ) */
  if ( ( self->PC < self->length ) ) {
    /* GENERATE PROGRAM1:load() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &dsl_PROGRAMevent1c );
      Escher_SendSelfEvent( e );
    }
  }
  else {
    /* GENERATE PROGRAM2:done() TO self */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &dsl_PROGRAMevent2c );
      Escher_SendSelfEvent( e );
    }
  }
}

const Escher_xtUMLEventConstant_t dsl_PROGRAMevent1c = {
  dsl_DOMAIN_ID, dsl_PROGRAM_CLASS_NUMBER, DSL_PROGRAMEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t dsl_PROGRAMevent2c = {
  dsl_DOMAIN_ID, dsl_PROGRAM_CLASS_NUMBER, DSL_PROGRAMEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t dsl_PROGRAMevent3c = {
  dsl_DOMAIN_ID, dsl_PROGRAM_CLASS_NUMBER, DSL_PROGRAMEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };


const Escher_xtUMLEventConstant_t dsl_PROGRAMevent5c = {
  dsl_DOMAIN_ID, dsl_PROGRAM_CLASS_NUMBER, DSL_PROGRAMEVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT };




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t dsl_PROGRAM_StateEventMatrix[ 6 + 1 ][ 4 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  dsl_PROGRAM_STATE_1 (loading instruction) */
  { dsl_PROGRAM_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, dsl_PROGRAM_STATE_2 },
  /* row 2:  dsl_PROGRAM_STATE_2 (instruction loaded) */
  { dsl_PROGRAM_STATE_1, dsl_PROGRAM_STATE_3, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  dsl_PROGRAM_STATE_3 (loaded) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, dsl_PROGRAM_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  dsl_PROGRAM_STATE_4 (executing) */
  { EVENT_CANT_HAPPEN, dsl_PROGRAM_STATE_6, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 5:  dsl_PROGRAM_STATE_5 (paused) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 6:  dsl_PROGRAM_STATE_6 (finished) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t dsl_PROGRAM_acts[ 7 ] = {
    (StateAction_t) 0,
    (StateAction_t) dsl_PROGRAM_act1,  /* loading instruction */
    (StateAction_t) dsl_PROGRAM_act2,  /* instruction loaded */
    (StateAction_t) dsl_PROGRAM_act3,  /* loaded */
    (StateAction_t) dsl_PROGRAM_act4,  /* executing */
    (StateAction_t) dsl_PROGRAM_act5,  /* paused */
    (StateAction_t) dsl_PROGRAM_act6  /* finished */
  };

/*
 * instance state machine event dispatching
 */
void
dsl_PROGRAM_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 6 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = dsl_PROGRAM_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 6 ) {
        /* Execute the state action and update the current state.  */
        ( *dsl_PROGRAM_acts[ next_state ] )( instance, event );
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


