/*----------------------------------------------------------------------------
 * File:  ARCH_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Architecture (ARCH)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "ARCH_bridge.h"
#include "DELTA_bridge.h"
#include "TIM_bridge.h"
#include "ARCH_bridge.h"
#include "mcbench_sys_types.h"
extern bool Escher_run_flag; /* Turn this false to stop the event queues.  */

/*
 * Bridge:  shutdown
 */
void
ARCH_shutdown()
{
  Escher_run_flag = false; /* default automatic action for this bridge */
  return;
  /* Replace/Insert your implementation code here... */
}

