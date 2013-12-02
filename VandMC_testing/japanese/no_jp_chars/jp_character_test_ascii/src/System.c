/*----------------------------------------------------------------------------
 * File:  System.c
 *
 * UML Component Port Messages
 * Component/Module Name:  System
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "jp_character_test_ascii_sys_types.h"
#include "System.h"
#include "System_classes.h"

/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const System_class_info[ System_MAX_CLASS_NUMBERS ] = {
  &pG_System_class1_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t System_EventDispatcher[ System_STATE_MODELS ] = {
  System_class_dispatchers
};

void System_execute_initialization()
{
}
