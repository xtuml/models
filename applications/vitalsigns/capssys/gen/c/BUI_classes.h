/*----------------------------------------------------------------------------
 * File:  BUI_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  BUI
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef BUI_CLASSES_H
#define BUI_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  BUI
 */
void BUI_execute_initialization( void );

/*
 * UML Domain Functions (Synchronous Services)
 */
void BUI_init( void );


#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "BUI.h"
#ifdef	__cplusplus
}
#endif
#endif  /* BUI_CLASSES_H */

