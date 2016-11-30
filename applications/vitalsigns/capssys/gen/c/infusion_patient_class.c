/*----------------------------------------------------------------------------
 * File:  infusion_patient_class.c
 *
 * Class:       patient  (patient)
 * Component:   infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s infusion_patient_container[ infusion_patient_MAX_EXTENT_SIZE ];
static infusion_patient infusion_patient_instances[ infusion_patient_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_patient_extent = {
  {0}, {0}, &infusion_patient_container[ 0 ],
  (Escher_iHandle_t) &infusion_patient_instances,
  sizeof( infusion_patient ), 0, infusion_patient_MAX_EXTENT_SIZE
  };


