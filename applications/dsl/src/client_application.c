/*----------------------------------------------------------------------------
 * File:  client_application.c
 *
 * UML Component Port Messages
 * Component/Module Name:  client_application
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "dsl.h"
#include "client_application_classes.h"

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * From Provider Message:  finished
 */
void
client_application_VM_finished( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
}

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * To Provider Message:  load
 */
void
client_application_VM_load( i_t p_data[256], const i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  dsl_APP_load(  p_data, p_length, p_name );
}

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * From Provider Message:  loaded
 */
void
client_application_VM_loaded( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
}

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * To Provider Message:  run
 */
void
client_application_VM_run( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  dsl_APP_run(  p_name );
}

/*
 * Interface:  instrumentation
 * Provided Port:  instrumentation
 * To Provider Message:  start_test
 */
void
client_application_instrumentation_start_test()
{
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  test1
 */
void
client_application_test1()
{

}

#if client_application_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const client_application_class_info[ client_application_MAX_CLASS_NUMBERS ] = {
  client_application_CLASS_INFO_INIT
};
#endif


void client_application_execute_initialization()
{
  /*
   * Initialization Function:  test1
   * Component:  client_application
   */
  client_application_test1();

}
