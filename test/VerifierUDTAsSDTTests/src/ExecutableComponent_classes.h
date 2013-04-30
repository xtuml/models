/*----------------------------------------------------------------------------
 * File:  ExecutableComponent_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ExecutableComponent
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef EXECUTABLECOMPONENT_CLASSES_H
#define EXECUTABLECOMPONENT_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  ExecutableComponent
 */
extern Escher_Extent_t * const ExecutableComponent_class_info[];
extern void ExecutableComponent_execute_initialization( void );

#define ExecutableComponent_STATE_MODELS 0


/* Define constants to map to class numbers.  */
#define ExecutableComponent_KEY_CLASS_NUMBER 0
#define ExecutableComponent_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define ExecutableComponent_TASK_NUMBERS 

#define ExecutableComponent_CLASS_INFO_INIT\
  &pG_ExecutableComponent_KEY_extent

#define ExecutableComponent_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */

typedef struct ExecutableComponent_KEY ExecutableComponent_KEY;

/* union of class declarations so we may derive largest class size */
#define ExecutableComponent_CLASS_U \
  char ExecutableComponent_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void ExecutableComponent_initialize( void );



#include "ExecutableComponent.h"
#include "ExecutableComponent_KEY_class.h"


/*
 * roll-up of all events (with their parameters) for domain ExecutableComponent
 */
typedef union {
} ExecutableComponent_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* EXECUTABLECOMPONENT_CLASSES_H */

