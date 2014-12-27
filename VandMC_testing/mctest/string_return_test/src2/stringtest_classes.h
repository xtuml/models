/*----------------------------------------------------------------------------
 * File:  stringtest_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_CLASSES_H
#define STRINGTEST_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  stringtest
 */
extern Escher_Extent_t * const stringtest_class_info[];
extern const EventTaker_t stringtest_EventDispatcher[];
void stringtest_execute_initialization( void );

#define stringtest_STATE_MODELS 4
/* Define constants to map to class numbers.  */
#define stringtest_host_CLASS_NUMBER 0
#define stringtest_device_CLASS_NUMBER 1
#define stringtest_ping_CLASS_NUMBER 2
#define stringtest_pong_CLASS_NUMBER 3
#define stringtest_buffer_CLASS_NUMBER 4
#define stringtest_MAX_CLASS_NUMBERS 5

/* Provide a map of classes to task numbers.  */
#define stringtest_TASK_NUMBERS  1, 1, 2, 2

#define stringtest_class_dispatchers\
  stringtest_host_Dispatch,\
  stringtest_device_Dispatch,\
  stringtest_ping_Dispatch,\
  stringtest_pong_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct stringtest_host stringtest_host;
typedef struct stringtest_device stringtest_device;
typedef struct stringtest_ping stringtest_ping;
typedef struct stringtest_pong stringtest_pong;
typedef struct stringtest_buffer stringtest_buffer;

/* union of class declarations so we may derive largest class size */
#define stringtest_CLASS_U \
  char stringtest_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void stringtest_init( void );


#include "LOG_bridge.h"
#include "stringtest.h"
#include "stringtest_host_class.h"
#include "stringtest_device_class.h"
#include "stringtest_buffer_class.h"
#include "stringtest_ping_class.h"
#include "stringtest_pong_class.h"
/*
 * roll-up of all events (with their parameters) for component stringtest
 */
typedef union {
  stringtest_host_Events_u stringtest_host_Events_u_namespace;
  stringtest_device_Events_u stringtest_device_Events_u_namespace;
  stringtest_ping_Events_u stringtest_ping_Events_u_namespace;
  stringtest_pong_Events_u stringtest_pong_Events_u_namespace;
} stringtest_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* STRINGTEST_CLASSES_H */

