/*----------------------------------------------------------------------------
 * File:  c2_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  c2
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef C2_CLASSES_H
#define C2_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  c2
 */
extern Escher_Extent_t * const c2_class_info[];
extern const EventTaker_t c2_EventDispatcher[];
extern void c2_execute_initialization( void );

#define c2_STATE_MODELS 2


/* Define constants to map to class numbers.  */
#define c2_TAC_A_CLASS_NUMBER 0
#define c2_TAC_A_CLASS_NUMBER_CB 1
#define c2_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define c2_TASK_NUMBERS  0, 0

#define c2_CLASS_INFO_INIT\
  &pG_c2_TAC_A_extent,\
  0

#define c2_class_dispatchers\
  0,\
  c2_TAC_A_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct c2_TAC_A c2_TAC_A;
typedef struct c2_TAC_A_CB c2_TAC_A_CB;

/* union of class declarations so we may derive largest class size */
#define c2_CLASS_U \
  char c2_dummy;\



#include "c2_ARCH_bridge.h"
#include "c2_LOG_bridge.h"
#include "c2.h"
#include "c2_TAC_A_class.h"


/*
 * roll-up of all events (with their parameters) for domain c2
 */
typedef union {
  c2_TAC_A_CB_Events_u c2_TAC_A_CB_Events_u_namespace;
} c2_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* C2_CLASSES_H */

