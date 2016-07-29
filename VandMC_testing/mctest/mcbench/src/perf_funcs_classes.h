/*----------------------------------------------------------------------------
 * File:  perf_funcs_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_CLASSES_H
#define PERF_FUNCS_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  perf_funcs
 */
extern Escher_Extent_t * const perf_funcs_class_info[];
extern const EventTaker_t perf_funcs_EventDispatcher[];
void perf_funcs_execute_initialization( void );

#define perf_funcs_STATE_MODELS 3
/* Define constants to map to class numbers.  */
#define perf_funcs_A_CLASS_NUMBER 0
#define perf_funcs_B_CLASS_NUMBER 1
#define perf_funcs_BENCHMARK_CLASS_NUMBER 2
#define perf_funcs_C_CLASS_NUMBER 3
#define perf_funcs_D_CLASS_NUMBER 4
#define perf_funcs_E_CLASS_NUMBER 5
#define perf_funcs_F_CLASS_NUMBER 6
#define perf_funcs_G_CLASS_NUMBER 7
#define perf_funcs_CBENCH_CLASS_NUMBER 8
#define perf_funcs_MAX_CLASS_NUMBERS 9

/* Provide a map of classes to task numbers.  */
#define perf_funcs_TASK_NUMBERS  0, 0, 0

#define perf_funcs_class_dispatchers\
  perf_funcs_A_Dispatch,\
  perf_funcs_B_Dispatch,\
  perf_funcs_BENCHMARK_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct perf_funcs_A perf_funcs_A;
typedef struct perf_funcs_B perf_funcs_B;
typedef struct perf_funcs_BENCHMARK perf_funcs_BENCHMARK;
typedef struct perf_funcs_C perf_funcs_C;
typedef struct perf_funcs_D perf_funcs_D;
typedef struct perf_funcs_E perf_funcs_E;
typedef struct perf_funcs_F perf_funcs_F;
typedef struct perf_funcs_G perf_funcs_G;
typedef struct perf_funcs_CBENCH perf_funcs_CBENCH;

/* union of class declarations so we may derive largest class size */
#define perf_funcs_CLASS_U \
  char perf_funcs_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
bool perf_funcs_perftest( const i_t, const i_t, const i_t, const i_t );
void perf_funcs_report( const i_t, const i_t, c_t[ESCHER_SYS_MAX_STRING_LEN] );
void perf_funcs_setup( void );
void perf_funcs_test( void );
void perf_funcs_xit( void );

#include "perf_funcs_CBENCHMARK_bridge.h"
#include "DELTA_bridge.h"
#include "ARCH_bridge.h"
#include "TIM_bridge.h"
#include "perf_funcs.h"
#include "perf_funcs_A_class.h"
#include "perf_funcs_B_class.h"
#include "perf_funcs_C_class.h"
#include "perf_funcs_D_class.h"
#include "perf_funcs_E_class.h"
#include "perf_funcs_F_class.h"
#include "perf_funcs_G_class.h"
#include "perf_funcs_BENCHMARK_class.h"
#include "perf_funcs_CBENCH_class.h"
/*
 * roll-up of all events (with their parameters) for component perf_funcs
 */
typedef union {
  perf_funcs_A_Events_u perf_funcs_A_Events_u_namespace;
  perf_funcs_B_Events_u perf_funcs_B_Events_u_namespace;
  perf_funcs_BENCHMARK_Events_u perf_funcs_BENCHMARK_Events_u_namespace;
} perf_funcs_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* PERF_FUNCS_CLASSES_H */
