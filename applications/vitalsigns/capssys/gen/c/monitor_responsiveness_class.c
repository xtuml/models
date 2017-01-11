/*----------------------------------------------------------------------------
 * File:  monitor_responsiveness_class.c
 *
 * Class:       responsiveness  (responsiveness)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO responsiveness ACROSS R2
 */
void
monitor_responsiveness_R2_Link( monitor_vitalsign * supertype, monitor_responsiveness * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "responsiveness", "monitor_responsiveness_R2_Link" );
    return;
  }
  /* Optimized linkage for responsiveness->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->responsiveness[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_responsiveness_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_responsiveness_container[ monitor_responsiveness_MAX_EXTENT_SIZE ];
static monitor_responsiveness monitor_responsiveness_instances[ monitor_responsiveness_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_responsiveness_extent = {
  {0}, {0}, &monitor_responsiveness_container[ 0 ],
  (Escher_iHandle_t) &monitor_responsiveness_instances,
  sizeof( monitor_responsiveness ), 0, monitor_responsiveness_MAX_EXTENT_SIZE
  };


