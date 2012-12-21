/*----------------------------------------------------------------------------
 * File:  keypad_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  keypad
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef KEYPAD_CLASSES_H
#define KEYPAD_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  keypad
 */
extern Escher_Extent_t * const keypad_class_info[];
extern const EventTaker_t keypad_EventDispatcher[];
extern void keypad_execute_initialization( void );

#define keypad_STATE_MODELS 1


/* Define constants to map to class numbers.  */
#define keypad_TEST_CLASS_NUMBER 0
#define keypad_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define keypad_TASK_NUMBERS  0

#define keypad_CLASS_INFO_INIT\
  &pG_keypad_TEST_extent

#define keypad_class_dispatchers\
  keypad_TEST_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct keypad_TEST keypad_TEST;

/* union of class declarations so we may derive largest class size */
#define keypad_CLASS_U \
  char keypad_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void keypad_testcase1( void );
extern void keypad_testcase3( void );
extern void keypad_testcase4( void );
extern void keypad_testcase2( void );



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "keypad.h"
#include "keypad_TEST_class.h"


/*
 * roll-up of all events (with their parameters) for domain keypad
 */
typedef union {
} keypad_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* KEYPAD_CLASSES_H */

