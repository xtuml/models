/*----------------------------------------------------------------------------
 * File:  client_application.c
 *
 * UML Component Port Messages
 * Component/Module Name:  client_application
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "dsl_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
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
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
}

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * From Provider Message:  loaded
 */
void
client_application_VM_loaded( c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  /*  SEND VM::run(name:'test1') */
  client_application_VM_run( "test1" );
}

/*
 * Interface:  DSLInputandOutput
 * Required Port:  VM
 * To Provider Message:  load
 */
void
client_application_VM_load( i_t p_data[256], i_t p_length, c_t p_name[ESCHER_SYS_MAX_STRING_LEN])
{
  dsl_APP_load(  p_data, p_length, p_name );
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
  /* ::test1(  ) */
  client_application_test1();
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
  i_t op[17]; 
  /* ASSIGN op[16] = 0 */
  op[16] = 0;
  /* ASSIGN op[0] = opneedleup */
  op[0] = 33;
  /* ASSIGN op[1] = opcarhome */
  op[1] = 31;
  /* ASSIGN op[2] = opfor */
  op[2] = 2;
  /* ASSIGN op[3] = 5 */
  op[3] = 5;
  /* ASSIGN op[4] = 0 */
  op[4] = 0;
  /* ASSIGN op[5] = 4 */
  op[5] = 4;
  /* ASSIGN op[6] = 0 */
  op[6] = 0;
  /* ASSIGN op[7] = opneedleup */
  op[7] = 33;
  /* ASSIGN op[8] = opcarnext */
  op[8] = 32;
  /* ASSIGN op[9] = opneedledown */
  op[9] = 34;
  /* ASSIGN op[10] = opdelay */
  op[10] = 4;
  /* ASSIGN op[11] = 0 */
  op[11] = 0;
  /* ASSIGN op[12] = 20 */
  op[12] = 20;
  /* ASSIGN op[13] = 0 */
  op[13] = 0;
  /* ASSIGN op[14] = 0 */
  op[14] = 0;
  /* ASSIGN op[15] = opneedleup */
  op[15] = 33;
  /* ASSIGN op[16] = opcarhome */
  op[16] = 31;
  /*  SEND VM::load(data:op, length:17, name:'test1') */
  client_application_VM_load( op, 17, "test1" );

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
