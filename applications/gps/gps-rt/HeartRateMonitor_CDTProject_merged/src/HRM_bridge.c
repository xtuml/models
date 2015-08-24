/*----------------------------------------------------------------------------
 * File:  HRM_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  HearRateMonitor (HRM)
 * Realized version of the HeartRateMonitor component used in the standard example version of this model.
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
#include <stdint.h>
#include "GPSWatch_sys_types.h"
#include "HRM_bridge.h"
#include "LOG_bridge.h"
#include "MATH_bridge.h"
#include "TIM_bridge.h"
#include "HRM_bridge.h"
#include "GPSWatch_sys_types.h"

extern "C" {
   void call_sendRegisterListener();
   void call_sendUnRegisterListener();
}

/*
 * Bridge:  registerListener
 */
void
HRM_registerListener()
{
  /* Replace/Insert your implementation code here... */
  call_sendRegisterListener();
}


/*
 * Bridge:  unregisterListener
 */
void
HRM_unregisterListener()
{
  /* Replace/Insert your implementation code here... */
   call_sendUnRegisterListener();
}


