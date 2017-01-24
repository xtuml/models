/*----------------------------------------------------------------------------
 * File:  monitor_systolicBP_class.c
 *
 * Class:       systolic BP  (systolicBP)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE vitalsign TO systolicBP ACROSS R2
 */
void
monitor_systolicBP_R2_Link( monitor_vitalsign * supertype, monitor_systolicBP * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "systolicBP", "monitor_systolicBP_R2_Link" );
    return;
  }
  /* Optimized linkage for systolicBP->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->systolicBP[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_systolicBP_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_systolicBP_container[ monitor_systolicBP_MAX_EXTENT_SIZE ];
static monitor_systolicBP monitor_systolicBP_instances[ monitor_systolicBP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_systolicBP_extent = {
  {0}, {0}, &monitor_systolicBP_container[ 0 ],
  (Escher_iHandle_t) &monitor_systolicBP_instances,
  sizeof( monitor_systolicBP ), 0, monitor_systolicBP_MAX_EXTENT_SIZE
  };


