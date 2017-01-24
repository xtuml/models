/*----------------------------------------------------------------------------
 * File:  monitor_O2saturation_class.c
 *
 * Class:       O2saturation  (O2saturation)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"

/*
 * class operation:  init
 */
monitor_vitalsign *
monitor_O2saturation_op_init()
{
  monitor_O2saturation * O2saturation;monitor_vitalsign * vitalsign;
  /* CREATE OBJECT INSTANCE O2saturation OF O2saturation */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE O2saturation OF O2saturation" );
  O2saturation = (monitor_O2saturation *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_O2saturation_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE vitalsign OF vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE vitalsign OF vitalsign" );
  vitalsign = (monitor_vitalsign *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_vitalsign_CLASS_NUMBER );
  /* ASSIGN vitalsign.name = O2saturation */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.name = O2saturation" );
  Escher_strcpy( vitalsign->name, "O2saturation" );
  /* ASSIGN vitalsign.value = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.value = 0" );
  vitalsign->value = 0;
  /* ASSIGN vitalsign.yellow_threshold = 93 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.yellow_threshold = 93" );
  vitalsign->yellow_threshold = 93;
  /* ASSIGN vitalsign.red_threshold = 85 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.red_threshold = 85" );
  vitalsign->red_threshold = 85;
  /* RELATE O2saturation TO vitalsign ACROSS R2 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE O2saturation TO vitalsign ACROSS R2" );
  monitor_O2saturation_R2_Link( vitalsign, O2saturation );
  /* RETURN vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "RETURN vitalsign" );
  {monitor_vitalsign * xtumlOALrv = vitalsign;
  return xtumlOALrv;}

}

/*
 * class operation:  update
 */
void
monitor_O2saturation_op_update( const i_t p_O2saturation )
{
  monitor_O2saturation * O2saturation=0;monitor_vitalsign * vitalsign=0;
  /* SELECT any O2saturation FROM INSTANCES OF O2saturation */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any O2saturation FROM INSTANCES OF O2saturation" );
  O2saturation = (monitor_O2saturation *) Escher_SetGetAny( &pG_monitor_O2saturation_extent.active );
  /* SELECT one vitalsign RELATED BY O2saturation->vitalsign[R2] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one vitalsign RELATED BY O2saturation->vitalsign[R2]" );
  vitalsign = ( 0 != O2saturation ) ? O2saturation->vitalsign_R2 : 0;
  /* IF ( not_empty vitalsign ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty vitalsign )" );
  if ( ( 0 != vitalsign ) ) {
    /* ASSIGN vitalsign.value = PARAM.O2saturation */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN vitalsign.value = PARAM.O2saturation" );
    vitalsign->value = p_O2saturation;
    /* SEND UI::display(name:vitalsign.name, value:vitalsign.value) */
    XTUML_OAL_STMT_TRACE( 2, "SEND UI::display(name:vitalsign.name, value:vitalsign.value)" );
    monitor_UI_display( vitalsign->name, vitalsign->value );
  }

}


/*
 * RELATE vitalsign TO O2saturation ACROSS R2
 */
void
monitor_O2saturation_R2_Link( monitor_vitalsign * supertype, monitor_O2saturation * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "O2saturation", "monitor_O2saturation_R2_Link" );
    return;
  }
  /* Optimized linkage for O2saturation->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->O2saturation[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_O2saturation_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      O2saturation  (O2saturation)
 * Component:  monitor
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_O2saturation_container[ monitor_O2saturation_MAX_EXTENT_SIZE ];
static monitor_O2saturation monitor_O2saturation_instances[ monitor_O2saturation_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_O2saturation_extent = {
  {0}, {0}, &monitor_O2saturation_container[ 0 ],
  (Escher_iHandle_t) &monitor_O2saturation_instances,
  sizeof( monitor_O2saturation ), 0, monitor_O2saturation_MAX_EXTENT_SIZE
  };


