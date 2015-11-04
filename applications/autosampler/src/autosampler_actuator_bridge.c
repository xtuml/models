/*----------------------------------------------------------------------------
 * File:  autosampler_actuator_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  actuator (actuator)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "autosampler_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "autosampler_actuator_bridge.h"
#include "autosampler_classes.h"
#include "autosampler_actuator_bridge.h"
#include "autosampler_sys_types.h"

/*
 * Bridge:  spin
 */
void
autosampler_actuator_spin( const i_t p_capacity, const i_t p_position )
{
  /* Replace/Insert your implementation code here... */
  /* spinner::arrived() */
  autosampler_spinner_op_arrived();
}


/*
 * Bridge:  raise
 */
void
autosampler_actuator_raise()
{
  /* Replace/Insert your implementation code here... */
  /* probe::top() */
  autosampler_probe_op_top();
}


/*
 * Bridge:  lower
 */
void
autosampler_actuator_lower()
{
  /* Replace/Insert your implementation code here... */
  /* probe::bottom() */
  autosampler_probe_op_bottom();
}


