/*----------------------------------------------------------------------------
 * File:  c2_ARCH_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Architecture (ARCH)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ttt_sys_types.h"
#include "c2_ARCH_bridge.h"
#include "c2_LOG_bridge.h"
#include "c2_classes.h"
#include "c2_ARCH_bridge.h"
#include "ttt_sys_types.h"
extern bool Escher_run_flag; /* Turn this false to stop the event queues.  */

/*
 * Bridge:  shutdown
 */
void
c2_ARCH_shutdown()
{
  Escher_run_flag = false; /* default automatic action for this bridge */
  return;
  /* Replace/Insert your implementation code here... */
  /* CONTROL */
  XTUML_OAL_STMT_TRACE( 1, "CONTROL" );
  ARCH_shutdown();
}


