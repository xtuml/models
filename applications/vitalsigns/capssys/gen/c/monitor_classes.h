/*----------------------------------------------------------------------------
 * File:  monitor_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MONITOR_CLASSES_H
#define MONITOR_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  monitor
 */
extern Escher_Extent_t * const monitor_class_info[];
extern const EventTaker_t monitor_EventDispatcher[];
void monitor_execute_initialization( void );

#define monitor_STATE_MODELS 2
/* Define constants to map to class numbers.  */
#define monitor_alarm_CLASS_NUMBER 0
#define monitor_patient_CLASS_NUMBER 1
#define monitor_advisory_CLASS_NUMBER 2
#define monitor_facility_CLASS_NUMBER 3
#define monitor_etCO2_CLASS_NUMBER 4
#define monitor_diastolicBP_CLASS_NUMBER 5
#define monitor_vitalsign_CLASS_NUMBER 6
#define monitor_pulse_CLASS_NUMBER 7
#define monitor_O2saturation_CLASS_NUMBER 8
#define monitor_systolicBP_CLASS_NUMBER 9
#define monitor_responsiveness_CLASS_NUMBER 10
#define monitor_electrocardiograph_CLASS_NUMBER 11
#define monitor_respiration_CLASS_NUMBER 12
#define monitor_MAX_CLASS_NUMBERS 13

/* Provide a map of classes to task numbers.  */
#define monitor_TASK_NUMBERS  0, 0

#define monitor_class_dispatchers\
  monitor_alarm_Dispatch,\
  monitor_patient_Dispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct monitor_alarm monitor_alarm;
typedef struct monitor_patient monitor_patient;
typedef struct monitor_advisory monitor_advisory;
typedef struct monitor_facility monitor_facility;
typedef struct monitor_etCO2 monitor_etCO2;
typedef struct monitor_diastolicBP monitor_diastolicBP;
typedef struct monitor_vitalsign monitor_vitalsign;
typedef struct monitor_pulse monitor_pulse;
typedef struct monitor_O2saturation monitor_O2saturation;
typedef struct monitor_systolicBP monitor_systolicBP;
typedef struct monitor_responsiveness monitor_responsiveness;
typedef struct monitor_electrocardiograph monitor_electrocardiograph;
typedef struct monitor_respiration monitor_respiration;

/* union of class declarations so we may derive largest class size */
#define monitor_CLASS_U \
  char monitor_dummy;\


#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"
#include "monitor_alarm_class.h"
#include "monitor_advisory_class.h"
#include "monitor_facility_class.h"
#include "monitor_etCO2_class.h"
#include "monitor_diastolicBP_class.h"
#include "monitor_patient_class.h"
#include "monitor_vitalsign_class.h"
#include "monitor_pulse_class.h"
#include "monitor_O2saturation_class.h"
#include "monitor_systolicBP_class.h"
#include "monitor_responsiveness_class.h"
#include "monitor_electrocardiograph_class.h"
#include "monitor_respiration_class.h"
/*
 * roll-up of all events (with their parameters) for component monitor
 */
typedef union {
  monitor_alarm_Events_u monitor_alarm_Events_u_namespace;
  monitor_patient_Events_u monitor_patient_Events_u_namespace;
} monitor_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* MONITOR_CLASSES_H */

