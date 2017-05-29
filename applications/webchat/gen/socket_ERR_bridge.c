/*----------------------------------------------------------------------------
 * File:  socket_ERR_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  error (ERR)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "webchat_sys_types.h"
#include "CSV_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "socket_ERR_bridge.h"
#include "socket_SOCK_bridge.h"
#include "socket_SYS_bridge.h"
#include "socket_classes.h"
#include "socket_ERR_bridge.h"
#include "webchat_sys_types.h"

#include <stdio.h>

/*
 * Bridge:  report
 */
void
socket_ERR_report( const i_t p_code, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  fprintf( stderr, "%s: %d\n", p_message, p_code );
}

