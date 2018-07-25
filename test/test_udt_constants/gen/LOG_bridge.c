/*----------------------------------------------------------------------------
 * File:  LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 *--------------------------------------------------------------------------*/

#include "test_udt_constants_sys_types.h"
#include "LOG_bridge.h"

#include <stdio.h>


/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf( "%s\n", p_message );
}

