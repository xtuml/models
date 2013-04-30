/*----------------------------------------------------------------------------
 * File:  App_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  App
 *
 * (C) Copyright 1998-2011 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef APP_CLASSES_H
#define APP_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  App
 */
extern void App_execute_initialization( void );

#define App_STATE_MODELS 0

/* Define constants to map to class numbers.  */
#define App_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define App_TASK_NUMBERS 

#define App_CLASS_INFO_INIT

#define App_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define App_CLASS_U \
  char App_dummy;\



#include "App.h"


/*
 * roll-up of all events (with their parameters) for domain App
 */
typedef union {
} App_DomainEvents_u;

#ifdef	__cplusplus
}
#endif

#endif  /* APP_CLASSES_H */

