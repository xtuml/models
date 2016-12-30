/*----------------------------------------------------------------------------
 * File:  monitor_diastolicBP_class.c
 *
 * Class:       diastolic BP  (diastolicBP)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO diastolicBP ACROSS R2
 */
void
monitor_diastolicBP_R2_Link( monitor_vitalsign * supertype, monitor_diastolicBP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "diastolicBP", "monitor_diastolicBP_R2_Link" );
    return;
  }
  /* Optimized linkage for diastolicBP->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->diastolicBP[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_diastolicBP_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_diastolicBP_container[ monitor_diastolicBP_MAX_EXTENT_SIZE ];
static monitor_diastolicBP monitor_diastolicBP_instances[ monitor_diastolicBP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_diastolicBP_extent = {
  {0}, {0}, &monitor_diastolicBP_container[ 0 ],
  (Escher_iHandle_t) &monitor_diastolicBP_instances,
  sizeof( monitor_diastolicBP ), 0, monitor_diastolicBP_MAX_EXTENT_SIZE
  };


