/*----------------------------------------------------------------------------
 * File:  udt_assignment_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  udt_assignment
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef UDT_ASSIGNMENT_CLASSES_H
#define UDT_ASSIGNMENT_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  udt_assignment
 */
extern Escher_Extent_t * const udt_assignment_class_info[];
extern void udt_assignment_execute_initialization( void );

#define udt_assignment_STATE_MODELS 0


/* Define constants to map to class numbers.  */
#define udt_assignment_KEY_CLASS_NUMBER 0
#define udt_assignment_KEY_CLASS_NUMBER 1
#define udt_assignment_MAX_CLASS_NUMBERS 2

/* Provide a map of classes to task numbers.  */
#define udt_assignment_TASK_NUMBERS 

#define udt_assignment_CLASS_INFO_INIT\
  &pG_udt_assignment_KEY_extent,\
  &pG_udt_assignment_KEY_extent

#define udt_assignment_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */

typedef struct udt_assignment_KEY udt_assignment_KEY;
typedef struct udt_assignment_KEY udt_assignment_KEY;

/* union of class declarations so we may derive largest class size */
#define udt_assignment_CLASS_U \
  char udt_assignment_dummy;\

/*
 * Internal enumerated and structured data types for component:  udt_assignment
 */

/*
 * Enumerated Data Type:  EDT
 */
#define udt_assignment_EDT__UNINITIALIZED__e -1
#define udt_assignment_EDT_enum_e 0

/*
 * SDT:
 */
typedef struct {
  i_t member;
} udt_assignment_sdt_SDT;



#include "udt_assignment.h"
#include "udt_assignment_KEY_class.h"
#include "udt_assignment_KEY_class.h"


/*
 * roll-up of all events (with their parameters) for domain udt_assignment
 */
typedef union {
} udt_assignment_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* UDT_ASSIGNMENT_CLASSES_H */

