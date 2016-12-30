/*----------------------------------------------------------------------------
 * File:  infusion_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef INFUSION_CLASSES_H
#define INFUSION_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  infusion
 */
extern Escher_Extent_t * const infusion_class_info[];
extern const EventTaker_t infusion_EventDispatcher[];
void infusion_execute_initialization( void );

#define infusion_STATE_MODELS 2
/* Define constants to map to class numbers.  */
#define infusion_infusion_CLASS_NUMBER 0
#define infusion_pump_CLASS_NUMBER 1
#define infusion_dose_CLASS_NUMBER 2
#define infusion_patient_CLASS_NUMBER 3
#define infusion_vial_CLASS_NUMBER 4
#define infusion_facility_CLASS_NUMBER 5
#define infusion_PRN_CLASS_NUMBER 6
#define infusion_MAX_CLASS_NUMBERS 7

/* Provide a map of classes to task numbers.  */
#define infusion_TASK_NUMBERS  0, 0

#define infusion_class_dispatchers\
  infusion_infusion_Dispatch,\
  infusion_pump_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct infusion_infusion infusion_infusion;
typedef struct infusion_pump infusion_pump;
typedef struct infusion_dose infusion_dose;
typedef struct infusion_patient infusion_patient;
typedef struct infusion_vial infusion_vial;
typedef struct infusion_facility infusion_facility;
typedef struct infusion_PRN infusion_PRN;

/* union of class declarations so we may derive largest class size */
#define infusion_CLASS_U \
  char infusion_dummy;\


#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion.h"
#include "infusion_infusion_class.h"
#include "infusion_dose_class.h"
#include "infusion_patient_class.h"
#include "infusion_pump_class.h"
#include "infusion_vial_class.h"
#include "infusion_facility_class.h"
#include "infusion_PRN_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* INFUSION_CLASSES_H */

