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



class LOG {
  public:
  static void LogSuccess( c_t[ESCHER_SYS_MAX_STRING_LEN] );
  static void LogFailure( c_t[ESCHER_SYS_MAX_STRING_LEN] );
  static void LogInfo( c_t[ESCHER_SYS_MAX_STRING_LEN] );
  static void LogDate( Escher_Date_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
  static void LogTime( c_t[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t );
  static void LogReal( c_t[ESCHER_SYS_MAX_STRING_LEN], r4_t );
  static void LogInteger( i_t );
};


#endif   /* LOG_BRIDGE_H */
