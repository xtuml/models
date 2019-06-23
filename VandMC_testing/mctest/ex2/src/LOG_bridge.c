/*----------------------------------------------------------------------------
 * File:  LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "LOG_bridge.h"
static char failure = 0;

/*
 * Bridge:  LogSuccess
 */
void
LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
  if ( failure ) {
    printf( "FAILED\n" );
  } else {
    printf( "PASSED - LOG::LogSuccess:  %s\n", p_message );
  }
}


/*
 * Bridge:  LogFailure
 */
void
LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
  printf( "LOG::LogFailure:  %s\n", p_message );
  failure = 1;
}


/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
  printf( "LOG::LogInfo:  %s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
LOG_LogDate( Escher_Date_t p_d, c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
  printf( "LOG::LogDate:  %lu %s\n", p_d, p_message );
}


/*
 * Bridge:  LogTime
 */
void
LOG_LogTime( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t p_t)
{
  printf( "LOG::LogTime:  %ld %s\n", p_t, p_message );
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], r_t p_r)
{
  printf( "LOG::LogTime:  %f %s\n", p_r, p_message );
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( i_t p_message)
{
  printf( "LOG::LogInteger:  %d\n", p_message );
}


