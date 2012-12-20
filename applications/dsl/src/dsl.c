/*----------------------------------------------------------------------------
 * File:  dsl.c
 *
 * UML Component Port Messages
 * Component/Module Name:  dsl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "client_application.h"
#include "dsl_classes.h"

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
 * To Provider Message:  load
 */
void
dsl_APP_load( i_t p_data[256], const i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
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
 * Interface:  DSLInputandOutput
 * Provided Port:  APP
 * To Provider Message:  run
 */
void
dsl_APP_run( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
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
