/*----------------------------------------------------------------------------
 * File:  Common_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  Common
 *
 * (C) Copyright 1998-2011 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef COMMON_CLASSES_H
#define COMMON_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  Common
 */
extern void Common_execute_initialization( void );

#define Common_STATE_MODELS 0

/* Define constants to map to class numbers.  */
#define Common_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define Common_TASK_NUMBERS 

#define Common_CLASS_INFO_INIT

#define Common_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define Common_CLASS_U \
  char Common_dummy;\



#include "Common.h"


/*
 * roll-up of all events (with their parameters) for domain Common
 */
typedef union {
} Common_DomainEvents_u;

#ifdef	__cplusplus
}
#endif

#endif  /* COMMON_CLASSES_H */

