/*----------------------------------------------------------------------------
 * File:  monitor_respiration_class.c
 *
 * Class:       respiration  (respiration)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"

/*
 * class operation:  update
 */
void
monitor_respiration_op_update( const i_t p_respiration_rate )
{
  monitor_respiration * respiration=0;monitor_vitalsign * vitalsign=0;
  /* SELECT any respiration FROM INSTANCES OF respiration */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any respiration FROM INSTANCES OF respiration" );
  respiration = (monitor_respiration *) Escher_SetGetAny( &pG_monitor_respiration_extent.active );
  /* SELECT one vitalsign RELATED BY respiration->vitalsign[R2] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one vitalsign RELATED BY respiration->vitalsign[R2]" );
  vitalsign = ( 0 != respiration ) ? respiration->vitalsign_R2 : 0;
  /* IF ( not_empty vitalsign ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty vitalsign )" );
  if ( ( 0 != vitalsign ) ) {
    /* ASSIGN vitalsign.value = PARAM.respiration_rate */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN vitalsign.value = PARAM.respiration_rate" );
    vitalsign->value = p_respiration_rate;
    /* SEND UI::display(name:vitalsign.name, value:vitalsign.value) */
    XTUML_OAL_STMT_TRACE( 2, "SEND UI::display(name:vitalsign.name, value:vitalsign.value)" );
    monitor_UI_display( vitalsign->name, vitalsign->value );
  }

}

/*
 * class operation:  init
 */
monitor_vitalsign *
monitor_respiration_op_init()
{
  monitor_respiration * respiration;monitor_vitalsign * vitalsign;
  /* CREATE OBJECT INSTANCE respiration OF respiration */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE respiration OF respiration" );
  respiration = (monitor_respiration *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_respiration_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE vitalsign OF vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE vitalsign OF vitalsign" );
  vitalsign = (monitor_vitalsign *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_vitalsign_CLASS_NUMBER );
  /* ASSIGN vitalsign.name = respiration */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.name = respiration" );
  Escher_strcpy( vitalsign->name, "respiration" );
  /* ASSIGN vitalsign.value = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.value = 0" );
  vitalsign->value = 0;
  /* ASSIGN vitalsign.yellow_threshold = 30 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.yellow_threshold = 30" );
  vitalsign->yellow_threshold = 30;
  /* ASSIGN vitalsign.red_threshold = 60 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.red_threshold = 60" );
  vitalsign->red_threshold = 60;
  /* RELATE respiration TO vitalsign ACROSS R2 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE respiration TO vitalsign ACROSS R2" );
  monitor_respiration_R2_Link( vitalsign, respiration );
  /* RETURN vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "RETURN vitalsign" );
  {monitor_vitalsign * xtumlOALrv = vitalsign;
  return xtumlOALrv;}

}


/*
 * RELATE vitalsign TO respiration ACROSS R2
 */
void
monitor_respiration_R2_Link( monitor_vitalsign * supertype, monitor_respiration * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "respiration", "monitor_respiration_R2_Link" );
    return;
  }
  /* Optimized linkage for respiration->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->respiration[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_respiration_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      respiration  (respiration)
 * Component:  monitor
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_respiration_container[ monitor_respiration_MAX_EXTENT_SIZE ];
static monitor_respiration monitor_respiration_instances[ monitor_respiration_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_respiration_extent = {
  {0}, {0}, &monitor_respiration_container[ 0 ],
  (Escher_iHandle_t) &monitor_respiration_instances,
  sizeof( monitor_respiration ), 0, monitor_respiration_MAX_EXTENT_SIZE
  };


