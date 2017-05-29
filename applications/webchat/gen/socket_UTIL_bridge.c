/*----------------------------------------------------------------------------
 * File:  socket_UTIL_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  utilities (UTIL)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "webchat_sys_types.h"
#include "CSV_bridge.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "TIM_bridge.h"
#include "socket_ERR_bridge.h"
#include "socket_SOCK_bridge.h"
#include "socket_SYS_bridge.h"
#include "socket_UTIL_bridge.h"
#include "socket_classes.h"
#include "socket_UTIL_bridge.h"
#include "webchat_sys_types.h"

#include <string.h>

/*
 * Bridge:  datatostring
 */
c_t *
socket_UTIL_datatostring( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_data[ESCHER_SYS_MAX_STRING_LEN], const i_t p_size )
{
  memcpy( A0xtumlsret, p_data, p_size );
  A0xtumlsret[p_size] = '\0';
  return A0xtumlsret;
}


/*
 * Bridge:  print
 */
void
socket_UTIL_print( c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
#ifdef DEBUG
  fprintf( stderr, "%s\n", p_s );
#endif
}

