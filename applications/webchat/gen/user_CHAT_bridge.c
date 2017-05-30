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
  *p_error = 35;
  return -1;
}


/*
 * Bridge:  read
 */
i_t
user_CHAT_read( c_t p_data[ESCHER_SYS_MAX_STRING_LEN], i_t * p_error )
{
  i_t result = 0;
  /* Insert your implementation code here... */
  return result;
}

