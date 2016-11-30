/*----------------------------------------------------------------------------
 * File:  monitor_etCO2_class.c
 *
 * Class:       etCO2  (etCO2)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO etCO2 ACROSS R2
 */
void
monitor_etCO2_R2_Link( monitor_vitalsign * supertype, monitor_etCO2 * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "etCO2", "monitor_etCO2_R2_Link" );
    return;
  }
  /* Optimized linkage for etCO2->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->etCO2[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_etCO2_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_etCO2_container[ monitor_etCO2_MAX_EXTENT_SIZE ];
static monitor_etCO2 monitor_etCO2_instances[ monitor_etCO2_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_etCO2_extent = {
  {0}, {0}, &monitor_etCO2_container[ 0 ],
  (Escher_iHandle_t) &monitor_etCO2_instances,
  sizeof( monitor_etCO2 ), 0, monitor_etCO2_MAX_EXTENT_SIZE
  };


