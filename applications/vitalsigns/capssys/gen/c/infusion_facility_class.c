/*----------------------------------------------------------------------------
 * File:  infusion_facility_class.c
 *
 * Class:       facility  (facility)
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
static Escher_SetElement_s infusion_facility_container[ infusion_facility_MAX_EXTENT_SIZE ];
static infusion_facility infusion_facility_instances[ infusion_facility_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_infusion_facility_extent = {
  {0}, {0}, &infusion_facility_container[ 0 ],
  (Escher_iHandle_t) &infusion_facility_instances,
  sizeof( infusion_facility ), 0, infusion_facility_MAX_EXTENT_SIZE
  };


