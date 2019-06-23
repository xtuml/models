/*----------------------------------------------------------------------------
 * File:  perf_testloop_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  perf_testloop
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_TESTLOOP_CLASSES_H
#define PERF_TESTLOOP_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  perf_testloop
 */
extern Escher_Extent_t * const perf_testloop_class_info[];
extern const EventTaker_t perf_testloop_EventDispatcher[];
void perf_testloop_execute_initialization( void );

#define perf_testloop_STATE_MODELS 1
/* Define constants to map to class numbers.  */
#define perf_testloop_LOOP_CLASS_NUMBER 0
#define perf_testloop_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define perf_testloop_TASK_NUMBERS  0

#define perf_testloop_class_dispatchers\
  perf_testloop_LOOP_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct perf_testloop_LOOP perf_testloop_LOOP;

/* union of class declarations so we may derive largest class size */
#define perf_testloop_CLASS_U \
  char perf_testloop_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
i_t perf_testloop_bridge_integer_integer( const i_t );
void perf_testloop_bridge_void_integer( const i_t );
void perf_testloop_bridge_void_void( void );
void perf_testloop_runtest( const i_t, const i_t );

#include "DELTA_bridge.h"
#include "ARCH_bridge.h"
#include "TIM_bridge.h"
#include "perf_testloop.h"
#include "perf_testloop_LOOP_class.h"
/*
 * roll-up of all events (with their parameters) for component perf_testloop
 */
typedef union {
  perf_testloop_LOOP_Events_u perf_testloop_LOOP_Events_u_namespace;
} perf_testloop_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* PERF_TESTLOOP_CLASSES_H */
