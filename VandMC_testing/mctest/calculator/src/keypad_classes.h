/*----------------------------------------------------------------------------
 * File:  keypad_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  keypad
 *
 * your copyright statement can go here (from te_copyright.body)
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
void keypad_execute_initialization( void );

#define keypad_STATE_MODELS 1
/* Define constants to map to class numbers.  */
#define keypad_TEST_CLASS_NUMBER 0
#define keypad_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define keypad_TASK_NUMBERS  0

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
void keypad_testcase1( void );
void keypad_testcase2( void );
void keypad_testcase3( void );
void keypad_testcase4( void );

#include "LOG_bridge.h"
#include "ARCH_bridge.h"
#include "keypad.h"
#include "keypad_TEST_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* KEYPAD_CLASSES_H */
