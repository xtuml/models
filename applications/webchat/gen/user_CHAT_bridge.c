/*----------------------------------------------------------------------------
 * File:  user_CHAT_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  chat (CHAT)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "webchat_sys_types.h"
#include "CSV_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "user_CHAT_bridge.h"
#include "user_classes.h"
#include "user_CHAT_bridge.h"
#include "webchat_sys_types.h"

#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>

#define STDIN 0

/*
 * Bridge:  input
 */
i_t
user_CHAT_input( i_t * p_error, c_t p_input[ESCHER_SYS_MAX_STRING_LEN] )
{
  // read the input
  i_t bytes_read = 0;
  i_t ret_val = -1;
  c_t * newline;
  do {
    ret_val = read( STDIN, &p_input[bytes_read], ESCHER_SYS_MAX_STRING_LEN-bytes_read );
    if ( -1 == ret_val ) {
      *p_error = errno;
      return ret_val;
    }
    bytes_read += ret_val;
  } while ( ret_val > 0 && bytes_read < ESCHER_SYS_MAX_STRING_LEN && !(newline=strstr( p_input, "\n" )) );

  // null terminate
  *newline = '\0';

  return 0;
}


/*
 * Bridge:  checkread
 */
i_t
user_CHAT_checkread( i_t * p_error )
{
  // clear fd sets
  fd_set readfds;
  FD_ZERO( &readfds );
  FD_SET( STDIN, &readfds );

  // set timeout of 100ms (non-blocking)
  struct timeval timeout;
  memset( &timeout, 0, sizeof(struct timeval) );
  timeout.tv_usec = 100000;

  // call select
  i_t ret_val = select( STDIN+1, &readfds, NULL, NULL, &timeout );
  if ( -1 == ret_val ) {
    *p_error = errno;
    return ret_val;
  }

  // check if is readable
  if ( FD_ISSET( STDIN, &readfds ) ) {
    // no errors filedes is readable
    *p_error = 0;
    return 0;
  }
  else {
    *p_error = EWOULDBLOCK;
    return -1;
  }
}
