/*----------------------------------------------------------------------------
 * File:  infusion_dose_class.c
 *
 * Class:       dose  (dose)
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
static Escher_SetElement_s infusion_dose_container[ infusion_dose_MAX_EXTENT_SIZE ];
static infusion_dose infusion_dose_instances[ infusion_dose_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_dose_extent = {
  {0}, {0}, &infusion_dose_container[ 0 ],
  (Escher_iHandle_t) &infusion_dose_instances,
  sizeof( infusion_dose ), 0, infusion_dose_MAX_EXTENT_SIZE
  };


