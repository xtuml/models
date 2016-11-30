/*----------------------------------------------------------------------------
 * File:  SpO2.c
 *
 * UML Component Port Messages
 * Component/Module Name:  SpO2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Pulse Oximeter
 */

#include "capssys_sys_types.h"
#include "SpO2.h"
#include "SpO2_SpO2_IO_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"
#include "SpO2_classes.h"

/*
 * Interface:  SpO2if
 * Provided Port:  monitor
 * To Provider Message:  off
 */
void
SpO2_monitor_off()
{
  /* finger::off() */
  XTUML_OAL_STMT_TRACE( 1, "finger::off()" );
  SpO2_finger_op_off();
}

/*
 * Interface:  SpO2if
 * Provided Port:  monitor
 * To Provider Message:  on
 */
void
SpO2_monitor_on()
{
  /* finger::on() */
  XTUML_OAL_STMT_TRACE( 1, "finger::on()" );
  SpO2_finger_op_on();
}

/*
 * Interface:  SpO2if
 * Provided Port:  monitor
 * From Provider Message:  reading
 */
void
SpO2_monitor_reading( const i_t p_O2saturation, const i_t p_pulse )
{
  monitor_pulsox_reading(  p_O2saturation, p_pulse );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  init
 */
void
SpO2_init()
{
  /* finger::init() */
  XTUML_OAL_STMT_TRACE( 1, "finger::init()" );
  SpO2_finger_op_init();

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const SpO2_class_info[ SpO2_MAX_CLASS_NUMBERS ] = {
  &pG_SpO2_finger_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t SpO2_EventDispatcher[ SpO2_STATE_MODELS ] = {
  SpO2_class_dispatchers
};

void SpO2_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  SpO2
   */
  SpO2_init();

}
