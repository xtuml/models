/*----------------------------------------------------------------------------
 * File:  socket_SYS_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  system (SYS)
 * This external entity is for system calls
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "webchat_sys_types.h"
#include "CSV_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "socket_SOCK_bridge.h"
#include "socket_SYS_bridge.h"
#include "socket_classes.h"
#include "socket_SYS_bridge.h"
#include "webchat_sys_types.h"

#include <unistd.h>
#include <errno.h>
#include <time.h>
#include <string.h>

/*
 * Bridge:  close
 */
i_t
socket_SYS_close( i_t * p_error, const i_t p_file_descriptor )
{
  i_t ret_val = close( p_file_descriptor );
  *p_error = errno;
  return ret_val;
}


/*
 * Bridge:  sleep
 */
i_t
socket_SYS_sleep( i_t * p_error, const i_t p_milliseconds )
{
  // set up sleeptime
  struct timespec sleeptime;
  memset( &sleeptime, 0, sizeof(struct timespec) );
  sleeptime.tv_nsec = p_milliseconds * 1000000;

  // sleep
  i_t ret_val = nanosleep( &sleeptime, NULL );
  *p_error = errno;
  return ret_val;
}

