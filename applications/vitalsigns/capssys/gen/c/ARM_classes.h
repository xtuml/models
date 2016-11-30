/*----------------------------------------------------------------------------
 * File:  ARM_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ARM_CLASSES_H
#define ARM_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  ARM
 */
extern Escher_Extent_t * const ARM_class_info[];
extern const EventTaker_t ARM_EventDispatcher[];
void ARM_execute_initialization( void );

#define ARM_STATE_MODELS 1
/* Define constants to map to class numbers.  */
#define ARM_training_CLASS_NUMBER 0
#define ARM_handset_CLASS_NUMBER 1
#define ARM_audio_CLASS_NUMBER 2
#define ARM_response_CLASS_NUMBER 3
#define ARM_MAX_CLASS_NUMBERS 4

/* Provide a map of classes to task numbers.  */
#define ARM_TASK_NUMBERS  0

#define ARM_class_dispatchers\
  ARM_training_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct ARM_training ARM_training;
typedef struct ARM_handset ARM_handset;
typedef struct ARM_audio ARM_audio;
typedef struct ARM_response ARM_response;

/* union of class declarations so we may derive largest class size */
#define ARM_CLASS_U \
  char ARM_dummy;\


#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "ARM.h"
#include "ARM_handset_class.h"
#include "ARM_audio_class.h"
#include "ARM_response_class.h"
#include "ARM_training_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* ARM_CLASSES_H */

