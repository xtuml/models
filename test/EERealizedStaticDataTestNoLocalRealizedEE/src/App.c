/*----------------------------------------------------------------------------
 * File:  App.c
 *
 * UML Component Port Messages
 * Component/Module Name:  App
 *
 * (C) Copyright 1998-2011 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_types.h"
#include "Select_Me2.h"

/*
 * Interface:  AppLibInterface
 * Required Port:  AppLibPort
 * To Provider Message:  To
 */
void
App_AppLibPort_To( void )
{
  Select_Me2_AppLibPort_To();
}

/*
 * Interface:  AppLibInterface
 * Required Port:  AppLibPort
 * From Provider Message:  From
 */
void
App_AppLibPort_From( void )
{
}

/*
 * UML Domain Functions (Synchronous Services)
 */

#if App_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const App_class_info[ App_MAX_CLASS_NUMBERS ] = {
  App_CLASS_INFO_INIT
};
#endif


void App_execute_initialization()
{
}
