/*----------------------------------------------------------------------------
 * File:  sschain_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  sschain
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SSCHAIN_CLASSES_H
#define SSCHAIN_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  sschain
 */
extern Escher_Extent_t * const sschain_class_info[];
extern void sschain_execute_initialization( void );

#define sschain_STATE_MODELS 0


/* Define constants to map to class numbers.  */
#define sschain_TOP_CLASS_NUMBER 0
#define sschain_SUPER_CLASS_NUMBER 1
#define sschain_SUBA_CLASS_NUMBER 2
#define sschain_SUBB_CLASS_NUMBER 3
#define sschain_MAX_CLASS_NUMBERS 4

/* Provide a map of classes to task numbers.  */
#define sschain_TASK_NUMBERS 

#define sschain_CLASS_INFO_INIT\
  &pG_sschain_TOP_extent,\
  &pG_sschain_SUPER_extent,\
  &pG_sschain_SUBA_extent,\
  &pG_sschain_SUBB_extent

#define sschain_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */

typedef struct sschain_TOP sschain_TOP;
typedef struct sschain_SUPER sschain_SUPER;
typedef struct sschain_SUBA sschain_SUBA;
typedef struct sschain_SUBB sschain_SUBB;

/* union of class declarations so we may derive largest class size */
#define sschain_CLASS_U \
  char sschain_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
extern void sschain_init( void );
extern void sschain_test( void );



#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain.h"
#include "sschain_TOP_class.h"
#include "sschain_SUPER_class.h"
#include "sschain_SUBA_class.h"
#include "sschain_SUBB_class.h"


/*
 * roll-up of all events (with their parameters) for domain sschain
 */
typedef union {
} sschain_DomainEvents_u;
#ifdef	__cplusplus
}
#endif

#endif  /* SSCHAIN_CLASSES_H */

