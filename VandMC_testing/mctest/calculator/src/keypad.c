/*----------------------------------------------------------------------------
 * File:  keypad.c
 *
 * UML Component Port Messages
 * Component/Module Name:  keypad
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "calculator_sys_types.h"
#include "keypad.h"
#include "LOG_bridge.h"
#include "ARCH_bridge.h"
#include "calc.h"
#include "keypad_classes.h"

/*
 * Interface:  keyIO
 * Provided Port:  tocalc
 * From Provider Message:  key
 */
void
keypad_tocalc_key( const i_t p_code )
{
  calc_kb_key(  p_code );
}

/*
 * Interface:  keyIO
 * Provided Port:  tocalc
 * To Provider Message:  result
 */
void
keypad_tocalc_result( const r_t p_value )
{
  /* LOG::LogReal( message:result, r:PARAM.value ) */
  LOG_LogReal( "result", p_value );
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
}

/*
 * Interface:  instrumentation
 * Provided Port:  instrumentation
 * To Provider Message:  start_test
 */
void
keypad_instrumentation_start_test()
{
  /* ::testcase1(  ) */
  keypad_testcase1();
}
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  testcase1
 */
void
keypad_testcase1()
{
  /* SEND tocalc::key(code:1) */
  keypad_tocalc_key( 1 );
  /* SEND tocalc::key(code:10) */
  keypad_tocalc_key( 10 );
  /* SEND tocalc::key(code:2) */
  keypad_tocalc_key( 2 );
  /* SEND tocalc::key(code:10) */
  keypad_tocalc_key( 10 );
}

/*
 * Domain Function:  testcase2
 */
void
keypad_testcase2()
{
  /* SEND tocalc::key(code:1) */
  keypad_tocalc_key( 1 );
  /* SEND tocalc::key(code:10) */
  keypad_tocalc_key( 10 );
  /* SEND tocalc::key(code:2) */
  keypad_tocalc_key( 2 );
  /* SEND tocalc::key(code:10) */
  keypad_tocalc_key( 10 );
  /* SEND tocalc::key(code:3) */
  keypad_tocalc_key( 3 );
  /* SEND tocalc::key(code:14) */
  keypad_tocalc_key( 14 );
}

/*
 * Domain Function:  testcase3
 */
void
keypad_testcase3()
{
  /* SEND tocalc::key(code:7) */
  keypad_tocalc_key( 7 );
  /* SEND tocalc::key(code:20) */
  keypad_tocalc_key( 20 );
  /* SEND tocalc::key(code:5) */
  keypad_tocalc_key( 5 );
  /* SEND tocalc::key(code:11) */
  keypad_tocalc_key( 11 );
  /* SEND tocalc::key(code:4) */
  keypad_tocalc_key( 4 );
  /* SEND tocalc::key(code:20) */
  keypad_tocalc_key( 20 );
  /* SEND tocalc::key(code:3) */
  keypad_tocalc_key( 3 );
  /* SEND tocalc::key(code:14) */
  keypad_tocalc_key( 14 );
}

/*
 * Domain Function:  testcase4
 */
void
keypad_testcase4()
{
  /* SEND tocalc::key(code:1) */
  keypad_tocalc_key( 1 );
  /* SEND tocalc::key(code:2) */
  keypad_tocalc_key( 2 );
  /* SEND tocalc::key(code:12) */
  keypad_tocalc_key( 12 );
  /* SEND tocalc::key(code:3) */
  keypad_tocalc_key( 3 );
  /* SEND tocalc::key(code:14) */
  keypad_tocalc_key( 14 );
}
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const keypad_class_info[ keypad_MAX_CLASS_NUMBERS ] = {
  &pG_keypad_TEST_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t keypad_EventDispatcher[ keypad_STATE_MODELS ] = {
  keypad_class_dispatchers
};

void keypad_execute_initialization()
{
  /*
   * Initialization Function:  testcase1
   * Component:  keypad
   */
  keypad_testcase1();

}
