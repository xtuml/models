/*----------------------------------------------------------------------------
 * File:  comp1_LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "test_set_operations_5007_sys_types.h"
#include "comp1_LOG_bridge.h"
#include "comp1_classes.h"
#include "comp1_LOG_bridge.h"
#include "test_set_operations_5007_sys_types.h"
#include <stdio.h>

/*
 * Bridge:  LogSuccess
 */
void
comp1_LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf( "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
comp1_LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  fprintf( stderr, "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
comp1_LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  printf( "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
comp1_LOG_LogDate( Escher_Date_t p_d, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogTime
 */
void
comp1_LOG_LogTime( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t p_t )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogReal
 */
void
comp1_LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], const r_t p_r )
{
  printf( "%s: %f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
comp1_LOG_LogInteger( const i_t p_message )
{
  printf( "%d\n", p_message );
}

