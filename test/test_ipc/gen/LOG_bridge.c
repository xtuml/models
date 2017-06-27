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

#include "test_ipc_sys_types.h"
#include "LOG_bridge.h"

/*
 * Bridge:  LogSuccess
 */
void
LOG_LogSuccess( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
LOG_LogFailure( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
LOG_LogDate( Escher_Date_t p_d, c_t * p_message )
{
	printf( "%s %ld\n", p_message, p_d );
}


/*
 * Bridge:  LogTime
 */
void
LOG_LogTime( c_t * p_message, Escher_TimeStamp_t p_t )
{
	printf( "%s %u\n", p_message, p_t );
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t * p_message, const r_t p_r )
{
	printf( "%s%f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( const i_t p_message )
{
	printf( "%d\n", p_message );
}

