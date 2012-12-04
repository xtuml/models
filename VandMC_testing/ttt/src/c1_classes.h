/*----------------------------------------------------------------------------
 * File:  c1_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  c1
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C1_CLASSES_H
#define C1_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  c1
 */
extern void c1_execute_initialization( void );

#define c1_STATE_MODELS 0


/* Define constants to map to class numbers.  */
#define c1_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define c1_TASK_NUMBERS 

#define c1_CLASS_INFO_INIT

#define c1_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define c1_CLASS_U \
  char c1_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void c1_setup( void );
extern void c1_test( void );



#include "c1_LOG_bridge.h"
#include "c1.h"


/*
 * roll-up of all events (with their parameters) for domain c1
 */
typedef union {
} c1_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* C1_CLASSES_H */

