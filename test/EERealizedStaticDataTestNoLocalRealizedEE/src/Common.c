/*----------------------------------------------------------------------------
 * File:  Common.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Common
 *
 * (C) Copyright 1998-2011 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_types.h"
#include "App.h"

/*
 * Interface:  AppLibInterface
 * Provided Port:  AppLibPort
 * To Provider Message:  To
 */
void
Common_AppLibPort_To( void )
{
  /* LOG::LogInfo( message:( 'Modified after callback: ' + ::() ) ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:( 'Modified after callback: ' + ::() ) )" );
}

/*
 * Interface:  AppLibInterface
 * Provided Port:  AppLibPort
 * From Provider Message:  From
 */
void
Common_AppLibPort_From( void )
{
  App_AppLibPort_From();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if Common_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Common_class_info[ Common_MAX_CLASS_NUMBERS ] = {
  Common_CLASS_INFO_INIT
};
#endif


void Common_execute_initialization()
{
}
