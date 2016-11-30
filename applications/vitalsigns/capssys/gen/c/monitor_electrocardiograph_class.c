/*----------------------------------------------------------------------------
 * File:  monitor_electrocardiograph_class.c
 *
 * Class:       electrocardiograph  (electrocardiograph)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO electrocardiograph ACROSS R2
 */
void
monitor_electrocardiograph_R2_Link( monitor_vitalsign * supertype, monitor_electrocardiograph * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "electrocardiograph", "monitor_electrocardiograph_R2_Link" );
    return;
  }
  /* Optimized linkage for electrocardiograph->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->electrocardiograph[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_electrocardiograph_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_electrocardiograph_container[ monitor_electrocardiograph_MAX_EXTENT_SIZE ];
static monitor_electrocardiograph monitor_electrocardiograph_instances[ monitor_electrocardiograph_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_electrocardiograph_extent = {
  {0}, {0}, &monitor_electrocardiograph_container[ 0 ],
  (Escher_iHandle_t) &monitor_electrocardiograph_instances,
  sizeof( monitor_electrocardiograph ), 0, monitor_electrocardiograph_MAX_EXTENT_SIZE
  };


