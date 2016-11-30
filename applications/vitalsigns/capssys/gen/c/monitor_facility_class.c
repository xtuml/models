/*----------------------------------------------------------------------------
 * File:  monitor_facility_class.c
 *
 * Class:       facility  (facility)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_facility_container[ monitor_facility_MAX_EXTENT_SIZE ];
static monitor_facility monitor_facility_instances[ monitor_facility_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_facility_extent = {
  {0}, {0}, &monitor_facility_container[ 0 ],
  (Escher_iHandle_t) &monitor_facility_instances,
  sizeof( monitor_facility ), 0, monitor_facility_MAX_EXTENT_SIZE
  };


