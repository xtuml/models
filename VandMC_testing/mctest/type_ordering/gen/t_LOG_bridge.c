/*----------------------------------------------------------------------------
 * File:  t_LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "type_ordering_sys_types.h"
#include "t_LOG_bridge.h"
#include "t_typeminer_bridge.h"
#include "t_classes.h"
#include "t_LOG_bridge.h"
#include "type_ordering_sys_types.h"

/*
 * Bridge:  LogSuccess
 */
void
t_LOG_LogSuccess( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
t_LOG_LogFailure( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
t_LOG_LogInfo( c_t * p_message )
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
t_LOG_LogDate( Escher_Date_t p_d, c_t * p_message )
{
	printf( "%s %ld\n", p_message, p_d );
}


/*
 * Bridge:  LogTime
 */
void
t_LOG_LogTime( c_t * p_message, Escher_TimeStamp_t p_t )
{
	printf( "%s %ld\n", p_message, p_t );
}


/*
 * Bridge:  LogReal
 */
void
t_LOG_LogReal( c_t * p_message, const r_t p_r )
{
	printf( "%s%f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
t_LOG_LogInteger( const i_t p_message )
{
	printf( "%d\n", p_message );
}

