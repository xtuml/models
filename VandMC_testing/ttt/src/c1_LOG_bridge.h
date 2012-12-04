/*----------------------------------------------------------------------------
 * File:  c1_LOG_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C1_LOG_BRIDGE_H
#define C1_LOG_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ttt_sys_types.h"

void c1_LOG_LogSuccess( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c1_LOG_LogFailure( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c1_LOG_LogInfo( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c1_LOG_LogDate( Escher_Date_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c1_LOG_LogTime( c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t );
void c1_LOG_LogReal( c_t[ESCHER_SYS_MAX_STRING_LEN], r_t );
void c1_LOG_LogInteger( i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* C1_LOG_BRIDGE_H */
