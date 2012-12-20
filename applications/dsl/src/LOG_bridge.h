/*----------------------------------------------------------------------------
 * File:  LOG_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef LOG_BRIDGE_H
#define LOG_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "dsl_sys_types.h"

void LOG_LogSuccess( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void LOG_LogFailure( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void LOG_LogInfo( c_t[ESCHER_SYS_MAX_STRING_LEN] );
void LOG_LogDate( Escher_Date_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void LOG_LogTime( c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t );
void LOG_LogReal( c_t[ESCHER_SYS_MAX_STRING_LEN], r_t );
void LOG_LogInteger( i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* LOG_BRIDGE_H */
