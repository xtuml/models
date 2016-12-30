/*----------------------------------------------------------------------------
 * File:  monitor_pulse_class.c
 *
 * Class:       pulse  (pulse)
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
monitor_pulse_op_init()
{
  monitor_pulse * pulse;monitor_vitalsign * vitalsign;
  /* CREATE OBJECT INSTANCE pulse OF pulse */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE pulse OF pulse" );
  pulse = (monitor_pulse *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_pulse_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE vitalsign OF vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE vitalsign OF vitalsign" );
  vitalsign = (monitor_vitalsign *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_vitalsign_CLASS_NUMBER );
  /* ASSIGN vitalsign.name = pulse */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.name = pulse" );
  Escher_strcpy( vitalsign->name, "pulse" );
  /* ASSIGN vitalsign.value = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.value = 0" );
  vitalsign->value = 0;
  /* ASSIGN vitalsign.yellow_threshold = 20 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.yellow_threshold = 20" );
  vitalsign->yellow_threshold = 20;
  /* ASSIGN vitalsign.red_threshold = 10 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN vitalsign.red_threshold = 10" );
  vitalsign->red_threshold = 10;
  /* RELATE pulse TO vitalsign ACROSS R2 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE pulse TO vitalsign ACROSS R2" );
  monitor_pulse_R2_Link( vitalsign, pulse );
  /* RETURN vitalsign */
  XTUML_OAL_STMT_TRACE( 1, "RETURN vitalsign" );
  {monitor_vitalsign * xtumlOALrv = vitalsign;
  return xtumlOALrv;}

}

/*
 * class operation:  update
 */
void
monitor_pulse_op_update( const i_t p_pulse )
{
  monitor_pulse * pulse=0;monitor_vitalsign * vitalsign=0;
  /* SELECT any pulse FROM INSTANCES OF pulse */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any pulse FROM INSTANCES OF pulse" );
  pulse = (monitor_pulse *) Escher_SetGetAny( &pG_monitor_pulse_extent.active );
  /* SELECT one vitalsign RELATED BY pulse->vitalsign[R2] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one vitalsign RELATED BY pulse->vitalsign[R2]" );
  vitalsign = ( 0 != pulse ) ? pulse->vitalsign_R2 : 0;
  /* IF ( not_empty vitalsign ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty vitalsign )" );
  if ( ( 0 != vitalsign ) ) {
    monitor_alarm * redalarm=0;monitor_alarm * yellowalarm=0;
    /* ASSIGN vitalsign.value = PARAM.pulse */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN vitalsign.value = PARAM.pulse" );
    vitalsign->value = p_pulse;
    /* SEND UI::display(name:vitalsign.name, value:vitalsign.value) */
    XTUML_OAL_STMT_TRACE( 2, "SEND UI::display(name:vitalsign.name, value:vitalsign.value)" );
    monitor_UI_display( vitalsign->name, vitalsign->value );
    /* SELECT one redalarm RELATED BY vitalsign->alarm[R7] WHERE ( ( SELECTED.color == red ) ) */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one redalarm RELATED BY vitalsign->alarm[R7] WHERE ( ( SELECTED.color == red ) )" );
    {redalarm = 0;
    {monitor_alarm * selected = ( 0 != vitalsign ) ? vitalsign->alarm_R7_sounds : 0;
    if ( ( 0 != selected ) && ( selected->color == capssys_color_red_e ) ) {
      redalarm = selected;
    }}}
    /* SELECT one yellowalarm RELATED BY vitalsign->alarm[R7] WHERE ( ( SELECTED.color == yellow ) ) */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one yellowalarm RELATED BY vitalsign->alarm[R7] WHERE ( ( SELECTED.color == yellow ) )" );
    {yellowalarm = 0;
    {monitor_alarm * selected = ( 0 != vitalsign ) ? vitalsign->alarm_R7_sounds : 0;
    if ( ( 0 != selected ) && ( selected->color == capssys_color_yellow_e ) ) {
      yellowalarm = selected;
    }}}
    /* IF ( ( vitalsign.value < vitalsign.yellow_threshold ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( vitalsign.value < vitalsign.yellow_threshold ) )" );
    if ( ( vitalsign->value < vitalsign->yellow_threshold ) ) {
      /* IF ( empty redalarm ) */
      XTUML_OAL_STMT_TRACE( 3, "IF ( empty redalarm )" );
      if ( ( 0 == redalarm ) ) {
        /* IF ( not_empty yellowalarm ) */
        XTUML_OAL_STMT_TRACE( 4, "IF ( not_empty yellowalarm )" );
        if ( ( 0 != yellowalarm ) ) {
          /* UNRELATE yellowalarm FROM vitalsign ACROSS R7 */
          XTUML_OAL_STMT_TRACE( 5, "UNRELATE yellowalarm FROM vitalsign ACROSS R7" );
          monitor_alarm_R7_Unlink_sounds( vitalsign, yellowalarm );
          /* DELETE OBJECT INSTANCE yellowalarm */
          XTUML_OAL_STMT_TRACE( 5, "DELETE OBJECT INSTANCE yellowalarm" );
          if ( 0 == yellowalarm ) {
            XTUML_EMPTY_HANDLE_TRACE( "alarm", "Escher_DeleteInstance" );
          }
          Escher_DeleteInstance( (Escher_iHandle_t) yellowalarm, monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER );
        }
        /* CREATE OBJECT INSTANCE redalarm OF alarm */
        XTUML_OAL_STMT_TRACE( 4, "CREATE OBJECT INSTANCE redalarm OF alarm" );
        redalarm = (monitor_alarm *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER );
        /* ASSIGN redalarm.color = red */
        XTUML_OAL_STMT_TRACE( 4, "ASSIGN redalarm.color = red" );
        redalarm->color = capssys_color_red_e;
        /* RELATE redalarm TO vitalsign ACROSS R7 */
        XTUML_OAL_STMT_TRACE( 4, "RELATE redalarm TO vitalsign ACROSS R7" );
        monitor_alarm_R7_Link_sounds( vitalsign, redalarm );
      }
    }
    else if ( ( vitalsign->value < vitalsign->yellow_threshold ) ) {
      /* IF ( empty yellowalarm ) */
      XTUML_OAL_STMT_TRACE( 3, "IF ( empty yellowalarm )" );
      if ( ( 0 == yellowalarm ) ) {
        /* CREATE OBJECT INSTANCE yellowalarm OF alarm */
        XTUML_OAL_STMT_TRACE( 4, "CREATE OBJECT INSTANCE yellowalarm OF alarm" );
        yellowalarm = (monitor_alarm *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_alarm_CLASS_NUMBER );
        /* ASSIGN yellowalarm.color = yellow */
        XTUML_OAL_STMT_TRACE( 4, "ASSIGN yellowalarm.color = yellow" );
        yellowalarm->color = capssys_color_yellow_e;
        /* RELATE yellowalarm TO vitalsign ACROSS R7 */
        XTUML_OAL_STMT_TRACE( 4, "RELATE yellowalarm TO vitalsign ACROSS R7" );
        monitor_alarm_R7_Link_sounds( vitalsign, yellowalarm );
      }
    }
    else {
    }
  }

}


/*
 * RELATE vitalsign TO pulse ACROSS R2
 */
void
monitor_pulse_R2_Link( monitor_vitalsign * supertype, monitor_pulse * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "pulse", "monitor_pulse_R2_Link" );
    return;
  }
  /* Optimized linkage for pulse->vitalsign[R2] */
  subtype->vitalsign_R2 = supertype;
  /* Optimized linkage for vitalsign->pulse[R2] */
  supertype->R2_subtype = subtype;
  supertype->R2_object_id = monitor_pulse_CLASS_NUMBER;
}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      pulse  (pulse)
 * Component:  monitor
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_pulse_container[ monitor_pulse_MAX_EXTENT_SIZE ];
static monitor_pulse monitor_pulse_instances[ monitor_pulse_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_pulse_extent = {
  {0}, {0}, &monitor_pulse_container[ 0 ],
  (Escher_iHandle_t) &monitor_pulse_instances,
  sizeof( monitor_pulse ), 0, monitor_pulse_MAX_EXTENT_SIZE
  };


