/*----------------------------------------------------------------------------
 * File:  Select_Me2.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Select_Me2
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
Select_Me2_AppLibPort_To( void )
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
Select_Me2_AppLibPort_From( void )
{
  App_AppLibPort_From();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if Select_Me2_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Select_Me2_class_info[ Select_Me2_MAX_CLASS_NUMBERS ] = {
  Select_Me2_CLASS_INFO_INIT
};
#endif


void Select_Me2_execute_initialization()
{
}
