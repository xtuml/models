/*----------------------------------------------------------------------------
 * File:  dsl.c
 *
 * UML Component Port Messages
 * Component/Module Name:  dsl
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "client_application.h"
#include "dsl_classes.h"

/*
 * Interface:  DSLInputandOutput
 * Provided Port:  APP
 * To Provider Message:  load
 */
void
dsl_APP_load( i_t p_data[256], i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  /* PROGRAM::load( data:PARAM.data, length:PARAM.length, name:PARAM.name ) */
  dsl_PROGRAM_op_load( p_data, p_length, p_name );
}

/*
 * Interface:  DSLInputandOutput
 * Provided Port:  APP
 * To Provider Message:  run
 */
void
dsl_APP_run( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  dsl_PROGRAM * program=0; 
  /* SELECT any program FROM INSTANCES OF PROGRAM WHERE ( SELECTED.name == PARAM.name ) */
  program = 0;
  { dsl_PROGRAM * selected;
    Escher_Iterator_s iterprogramdsl_PROGRAM;
    Escher_IteratorReset( &iterprogramdsl_PROGRAM, &pG_dsl_PROGRAM_extent.active );
    while ( (selected = (dsl_PROGRAM *) Escher_IteratorNext( &iterprogramdsl_PROGRAM )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, p_name ) == 0 ) ) {
        program = selected;
        break;
      }
    }
  }
  /* IF ( not_empty program ) */
  if ( ( 0 != program ) ) {
    /* GENERATE PROGRAM3:run() TO program */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( program, &dsl_PROGRAMevent3c );
      Escher_SendEvent( e );
    }
  }
}

/*
 * Interface:  DSLInputandOutput
 * Provided Port:  APP
 * From Provider Message:  finished
 */
void
dsl_APP_finished( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  client_application_VM_finished(  p_name );
}

/*
 * Interface:  DSLInputandOutput
 * Provided Port:  APP
 * From Provider Message:  loaded
 */
void
dsl_APP_loaded( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  client_application_VM_loaded(  p_name );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if dsl_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const dsl_class_info[ dsl_MAX_CLASS_NUMBERS ] = {
  dsl_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t dsl_EventDispatcher[ dsl_STATE_MODELS ] = {
  dsl_class_dispatchers
};

void dsl_execute_initialization()
{
}
