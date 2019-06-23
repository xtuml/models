/*----------------------------------------------------------------------------
 * File:  ex2_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef EX2_CLASSES_H
#define EX2_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  ex2
 */
extern Escher_Extent_t * const ex2_class_info[];
extern const EventTaker_t ex2_EventDispatcher[];
void ex2_execute_initialization( void );

#define ex2_STATE_MODELS 2
/* Define constants to map to class numbers.  */
#define ex2_DR_CLASS_NUMBER 0
#define ex2_TCE_CLASS_NUMBER 1
#define ex2_A_CLASS_NUMBER 2
#define ex2_TRAN_CLASS_NUMBER 3
#define ex2_NOI_CLASS_NUMBER 4
#define ex2_MAX_CLASS_NUMBERS 5

/* Provide a map of classes to task numbers.  */
#define ex2_TASK_NUMBERS  0, 0

#define ex2_class_dispatchers\
  ex2_DR_Dispatch,\
  ex2_TCE_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct ex2_DR ex2_DR;
typedef struct ex2_TCE ex2_TCE;
typedef struct ex2_A ex2_A;
typedef struct ex2_TRAN ex2_TRAN;
typedef struct ex2_NOI ex2_NOI;

/* union of class declarations so we may derive largest class size */
#define ex2_CLASS_U \
  char ex2_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void ex2_setup( void );
void ex2_test( void );
void ex2_xit( void );

#include "ex2_BR_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "PERSIST_bridge.h"
#include "NVS_bridge.h"
#include "ARCH_bridge.h"
#include "ex2.h"
#include "ex2_DR_class.h"
#include "ex2_TCE_class.h"
#include "ex2_A_class.h"
#include "ex2_TRAN_class.h"
#include "ex2_NOI_class.h"
/*
 * roll-up of all events (with their parameters) for component ex2
 */
typedef union {
  ex2_DR_Events_u ex2_DR_Events_u_namespace;
  ex2_TCE_Events_u ex2_TCE_Events_u_namespace;
} ex2_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* EX2_CLASSES_H */
