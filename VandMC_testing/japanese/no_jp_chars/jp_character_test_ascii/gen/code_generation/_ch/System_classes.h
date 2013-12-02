/*----------------------------------------------------------------------------
 * File:  System_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  System
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SYSTEM_CLASSES_H
#define SYSTEM_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  System
 */
extern Escher_Extent_t * const System_class_info[];
extern const EventTaker_t System_EventDispatcher[];
void System_execute_initialization( void );

#define System_STATE_MODELS 1
/* Define constants to map to class numbers.  */
#define System_class1_CLASS_NUMBER 0
#define System_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define System_TASK_NUMBERS  0

#define System_class_dispatchers\
  System_class1_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct System_class1 System_class1;

/* union of class declarations so we may derive largest class size */
#define System_CLASS_U \
  char System_dummy;\


#include "System.h"
#include "System_class1_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* SYSTEM_CLASSES_H */

