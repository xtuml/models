/*----------------------------------------------------------------------------
 * File:  TestComponent_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  TestComponent
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TESTCOMPONENT_CLASSES_H
#define TESTCOMPONENT_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  TestComponent
 */
void TestComponent_execute_initialization( void );

/*
 * UML Domain Functions (Synchronous Services)
 */
void TestComponent_InterProjectRealizedFunction( void );


#include "RealizedClass_bridge.h"
#include "LOG_bridge.h"
#include "TestComponent.h"
#ifdef	__cplusplus
}
#endif
#endif  /* TESTCOMPONENT_CLASSES_H */

