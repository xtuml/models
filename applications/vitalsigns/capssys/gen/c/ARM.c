/*----------------------------------------------------------------------------
 * File:  ARM.c
 *
 * UML Component Port Messages
 * Component/Module Name:  ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 automated response monitor
 */

#include "capssys_sys_types.h"
#include "ARM.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"
#include "ARM_classes.h"

/*
 * Interface:  ARMif
 * Provided Port:  monitor
 * To Provider Message:  interval
 */
void
ARM_monitor_interval( const i_t p_t )
{
}

/*
 * Interface:  ARMif
 * Provided Port:  monitor
 * To Provider Message:  off
 */
void
ARM_monitor_off()
{
}

/*
 * Interface:  ARMif
 * Provided Port:  monitor
 * To Provider Message:  on
 */
void
ARM_monitor_on()
{
}

/*
 * Interface:  ARMif
 * Provided Port:  monitor
 * From Provider Message:  responsiveness
 */
void
ARM_monitor_responsiveness( const i_t p_response_time )
{
  monitor_arm_responsiveness(  p_response_time );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const ARM_class_info[ ARM_MAX_CLASS_NUMBERS ] = {
  &pG_ARM_training_extent,
  &pG_ARM_handset_extent,
  &pG_ARM_audio_extent,
  &pG_ARM_response_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t ARM_EventDispatcher[ ARM_STATE_MODELS ] = {
  ARM_class_dispatchers
};

void ARM_execute_initialization()
{
}
