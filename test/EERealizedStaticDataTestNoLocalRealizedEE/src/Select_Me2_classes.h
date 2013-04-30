/*----------------------------------------------------------------------------
 * File:  Select_Me2_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  Select_Me2
 *
 * (C) Copyright 1998-2011 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SELECT_ME2_CLASSES_H
#define SELECT_ME2_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  Select_Me2
 */
extern void Select_Me2_execute_initialization( void );

#define Select_Me2_STATE_MODELS 0

/* Define constants to map to class numbers.  */
#define Select_Me2_MAX_CLASS_NUMBERS 0

/* Provide a map of classes to task numbers.  */
#define Select_Me2_TASK_NUMBERS 

#define Select_Me2_CLASS_INFO_INIT

#define Select_Me2_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */


/* union of class declarations so we may derive largest class size */
#define Select_Me2_CLASS_U \
  char Select_Me2_dummy;\



#include "Select_Me2.h"


/*
 * roll-up of all events (with their parameters) for domain Select_Me2
 */
typedef union {
} Select_Me2_DomainEvents_u;

#ifdef	__cplusplus
}
#endif

#endif  /* SELECT_ME2_CLASSES_H */

