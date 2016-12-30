/*----------------------------------------------------------------------------
 * File:  monitor_vitalsign_class.c
 *
 * Class:       vital sign  (vitalsign)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"


/*
 * RELATE patient TO vitalsign ACROSS R1
 */
void
monitor_vitalsign_R1_Link_has( monitor_patient * part, monitor_vitalsign * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "vitalsign", "monitor_vitalsign_R1_Link_has" );
    return;
  }
  /* Note:  vitalsign->patient[R1] not navigated */
  Escher_SetInsertElement( &part->vitalsign_R1_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE patient FROM vitalsign ACROSS R1
 */
void
monitor_vitalsign_R1_Unlink_has( monitor_patient * part, monitor_vitalsign * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "vitalsign", "monitor_vitalsign_R1_Unlink_has" );
    return;
  }
  /* Note:  vitalsign->patient[R1] not navigated */
  Escher_SetRemoveElement( &part->vitalsign_R1_has, (Escher_ObjectSet_s *) form );
}

/* Accessors to vitalsign[R2] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_vitalsign_container[ monitor_vitalsign_MAX_EXTENT_SIZE ];
static monitor_vitalsign monitor_vitalsign_instances[ monitor_vitalsign_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_vitalsign_extent = {
  {0}, {0}, &monitor_vitalsign_container[ 0 ],
  (Escher_iHandle_t) &monitor_vitalsign_instances,
  sizeof( monitor_vitalsign ), 0, monitor_vitalsign_MAX_EXTENT_SIZE
  };


