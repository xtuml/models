/*----------------------------------------------------------------------------
 * File:  c3_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  c3
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C3_CLASSES_H
#define C3_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  c3
 */
extern Escher_Extent_t * const c3_class_info[];
extern const EventTaker_t c3_EventDispatcher[];
extern void c3_execute_initialization( void );

#define c3_STATE_MODELS 2


/* Define constants to map to class numbers.  */
#define c3_TOE_A_CLASS_NUMBER 0
#define c3_TOE_A_CLASS_NUMBER_CB 1
#define c3_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define c3_TASK_NUMBERS  0, 0

#define c3_CLASS_INFO_INIT\
  &pG_c3_TOE_A_extent,\
  0

#define c3_class_dispatchers\
  0,\
  c3_TOE_A_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct c3_TOE_A c3_TOE_A;
typedef struct c3_TOE_A_CB c3_TOE_A_CB;

/* union of class declarations so we may derive largest class size */
#define c3_CLASS_U \
  char c3_dummy;\



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "c3.h"
#include "c3_TOE_A_class.h"


/*
 * roll-up of all events (with their parameters) for domain c3
 */
typedef union {
  c3_TOE_A_CB_Events_u c3_TOE_A_CB_Events_u_namespace;
} c3_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* C3_CLASSES_H */

