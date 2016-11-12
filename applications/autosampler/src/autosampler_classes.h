/*----------------------------------------------------------------------------
 * File:  autosampler_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AUTOSAMPLER_CLASSES_H
#define AUTOSAMPLER_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  autosampler
 */
extern Escher_Extent_t * const autosampler_class_info[];
extern const EventTaker_t autosampler_EventDispatcher[];
void autosampler_execute_initialization( void );

#define autosampler_STATE_MODELS 3
/* Define constants to map to class numbers.  */
#define autosampler_probe_CLASS_NUMBER 0
#define autosampler_batch_CLASS_NUMBER 1
#define autosampler_spinner_CLASS_NUMBER 2
#define autosampler_MAX_CLASS_NUMBERS 3

/* Provide a map of classes to task numbers.  */
#define autosampler_TASK_NUMBERS  0, 0, 0

#define autosampler_class_dispatchers\
  autosampler_probe_Dispatch,\
  autosampler_batch_Dispatch,\
  autosampler_spinner_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct autosampler_probe autosampler_probe;
typedef struct autosampler_batch autosampler_batch;
typedef struct autosampler_spinner autosampler_spinner;

/* union of class declarations so we may derive largest class size */
#define autosampler_CLASS_U \
  char autosampler_dummy;\

/*
 * Internal enumerated and structured data types for component:  autosampler
 */

/*
 * Enumerated Data Type:  probeposition
 */
typedef enum {
 autosampler_probeposition__UNINITIALIZED__e = -1,
 autosampler_probeposition_up_e = 0,
 autosampler_probeposition_down_e = 1,
 autosampler_probeposition_middle_e = 2
} autosampler_probeposition_t;


/*
 * UML Domain Functions (Synchronous Services)
 */
void autosampler_cleanup( void );
void autosampler_init( void );
void autosampler_runbatch( void );


#include "autosampler_actuator_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "autosampler.h"
#include "autosampler_probe_class.h"
#include "autosampler_batch_class.h"
#include "autosampler_spinner_class.h"
/*
 * roll-up of all events (with their parameters) for component autosampler
 */
typedef union {
  autosampler_probe_Events_u autosampler_probe_Events_u_namespace;
  autosampler_batch_Events_u autosampler_batch_Events_u_namespace;
  autosampler_spinner_Events_u autosampler_spinner_Events_u_namespace;
} autosampler_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* AUTOSAMPLER_CLASSES_H */

