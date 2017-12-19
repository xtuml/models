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

#include "typeminer_sys_types.h"
#include "testrunner_LOG_bridge.h"
#include <stdio.h>

/*
 * Bridge:  LogSuccess
 */
void
testrunner_LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
testrunner_LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
testrunner_LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
testrunner_LOG_LogDate( Escher_Date_t p_d, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
	printf( "%s %ld\n", p_message, p_d );
}


/*
 * Bridge:  LogTime
 */
void
testrunner_LOG_LogTime( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t p_t )
{
	printf( "%s %ld\n", p_message, p_t );
}


/*
 * Bridge:  LogReal
 */
void
testrunner_LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const r_t p_r )
{
	printf( "%s%f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
testrunner_LOG_LogInteger( const i_t p_message )
{
	printf( "%d\n", p_message );
}

