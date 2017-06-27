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

#include "test_ipc_sys_types.h"
#include "socket_SYS_bridge.h"

#include <unistd.h>
#include <errno.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>

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


/*
 * Bridge:  malloc
 */
void *
socket_SYS_malloc( const i_t p_size )
{
  return malloc( p_size );
}


/*
 * Bridge:  free
 */
void
socket_SYS_free( const void * p_ptr )
{
  free( p_ptr );
}


/*
 * Bridge:  memcpy
 */
void
socket_SYS_memcpy( const void * p_dst, const i_t p_size, const void * p_src )
{
  memcpy( p_dst, p_src, p_size );
}

