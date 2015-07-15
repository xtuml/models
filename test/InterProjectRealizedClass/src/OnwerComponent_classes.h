/*----------------------------------------------------------------------------
 * File:  OnwerComponent_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  OnwerComponent
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ONWERCOMPONENT_CLASSES_H
#define ONWERCOMPONENT_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  OnwerComponent
 */
void OnwerComponent_execute_initialization( void );

/*
 * UML Domain Functions (Synchronous Services)
 */
void OnwerComponent_test( void );


#include "RealizedClass_bridge.h"
#include "LOG_bridge.h"
#include "OnwerComponent.h"
#ifdef	__cplusplus
}
#endif
#endif  /* ONWERCOMPONENT_CLASSES_H */

