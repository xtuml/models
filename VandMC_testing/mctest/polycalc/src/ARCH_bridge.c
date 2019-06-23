/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  Architecture (ARCH)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
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
  /* CONTROL */
  ARCH_shutdown();
}

