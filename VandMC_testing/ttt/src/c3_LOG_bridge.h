/*----------------------------------------------------------------------------
 * File:  c3_LOG_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C3_LOG_BRIDGE_H
#define C3_LOG_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "ttt_sys_types.h"

void c3_LOG_LogSuccess( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c3_LOG_LogFailure( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c3_LOG_LogInfo( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c3_LOG_LogDate( Escher_Date_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void c3_LOG_LogTime( c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t );
void c3_LOG_LogReal( c_t[ESCHER_SYS_MAX_STRING_LEN], r_t );
void c3_LOG_LogInteger( i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* C3_LOG_BRIDGE_H */
