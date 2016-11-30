/*----------------------------------------------------------------------------
 * File:  SpO2_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  SpO2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SPO2_CLASSES_H
#define SPO2_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  SpO2
 */
extern Escher_Extent_t * const SpO2_class_info[];
extern const EventTaker_t SpO2_EventDispatcher[];
void SpO2_execute_initialization( void );

#define SpO2_STATE_MODELS 1
/* Define constants to map to class numbers.  */
#define SpO2_finger_CLASS_NUMBER 0
#define SpO2_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define SpO2_TASK_NUMBERS  0

#define SpO2_class_dispatchers\
  SpO2_finger_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct SpO2_finger SpO2_finger;

/* union of class declarations so we may derive largest class size */
#define SpO2_CLASS_U \
  char SpO2_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void SpO2_init( void );


#include "SpO2_SpO2_IO_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "SpO2.h"
#include "SpO2_finger_class.h"
/*
 * roll-up of all events (with their parameters) for component SpO2
 */
typedef union {
  SpO2_finger_Events_u SpO2_finger_Events_u_namespace;
} SpO2_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* SPO2_CLASSES_H */

