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
extern Escher_Extent_t * const c1_class_info[];
extern const EventTaker_t c1_EventDispatcher[];
extern void c1_execute_initialization( void );

#define c1_STATE_MODELS 2


/* Define constants to map to class numbers.  */
#define c1_PING_CLASS_NUMBER 0
#define c1_PONG_CLASS_NUMBER 1
#define c1_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define c1_TASK_NUMBERS  0, 0

#define c1_CLASS_INFO_INIT\
  &pG_c1_PING_extent,\
  &pG_c1_PONG_extent

#define c1_class_dispatchers\
  c1_PING_Dispatch,\
  c1_PONG_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct c1_PING c1_PING;
typedef struct c1_PONG c1_PONG;

/* union of class declarations so we may derive largest class size */
#define c1_CLASS_U \
  char c1_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void c1_setup( void );
extern void c1_test( void );



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c1.h"
#include "c1_PING_class.h"
#include "c1_PONG_class.h"


/*
 * roll-up of all events (with their parameters) for domain c1
 */
typedef union {
  c1_PING_Events_u c1_PING_Events_u_namespace;
  c1_PONG_Events_u c1_PONG_Events_u_namespace;
} c1_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* C1_CLASSES_H */

