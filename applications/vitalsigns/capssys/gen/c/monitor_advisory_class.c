/*----------------------------------------------------------------------------
 * File:  monitor_advisory_class.c
 *
 * Class:       advisory  (advisory)
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
static Escher_SetElement_s monitor_advisory_container[ monitor_advisory_MAX_EXTENT_SIZE ];
static monitor_advisory monitor_advisory_instances[ monitor_advisory_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_advisory_extent = {
  {0}, {0}, &monitor_advisory_container[ 0 ],
  (Escher_iHandle_t) &monitor_advisory_instances,
  sizeof( monitor_advisory ), 0, monitor_advisory_MAX_EXTENT_SIZE
  };


