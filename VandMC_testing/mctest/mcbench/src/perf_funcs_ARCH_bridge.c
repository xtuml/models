/*----------------------------------------------------------------------------
 * File:  perf_funcs_ARCH_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Architecture (ARCH)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"
#include "perf_funcs_ARCH_bridge.h"
#include "mcbench_sys_types.h"
extern bool Escher_run_flag; /* Turn this false to stop the event queues.  */

/*
 * Bridge:  shutdown
 */
void
perf_funcs_ARCH_shutdown()
{
  Escher_run_flag = false; /* default automatic action for this bridge */
  return;
  /* Replace/Insert your implementation code here... */
}


