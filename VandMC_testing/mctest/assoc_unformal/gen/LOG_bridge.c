/*----------------------------------------------------------------------------
 * File:  LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "assoc_unformal_sys_types.h"
#include "LOG_bridge.h"

static char failure = 0;

/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf( "LOG::LogInfo:  %s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf( "LOG::LogFailure:  %s\n", p_message );
  failure = 1;
}


/*
 * Bridge:  LogSuccess
 */
void
LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  if ( failure ) {
    printf( "FAILED\n" );
  } else {
    printf( "PASSED - LOG::LogSuccess:  %s\n", p_message );
  }
}

