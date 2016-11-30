/*----------------------------------------------------------------------------
 * File:  BUI.c
 *
 * UML Component Port Messages
 * Component/Module Name:  BUI
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Bedside Monitoring Unit User Interface
 */

#include "capssys_sys_types.h"
#include "BUI.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"
#include "BUI_classes.h"

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * From Provider Message:  button_press
 */
void
BUI_monitor_button_press( const i_t p_number )
{
  monitor_UI_button_press(  p_number );
}

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * To Provider Message:  display
 */
void
BUI_monitor_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
  /* LOG::LogInfo( message:PARAM.name ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInfo( message:PARAM.name )" );
  LOG_LogInfo( p_name );
  /* LOG::LogInteger( message:PARAM.value ) */
  XTUML_OAL_STMT_TRACE( 1, "LOG::LogInteger( message:PARAM.value )" );
  LOG_LogInteger( p_value );
}

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * From Provider Message:  patient
 */
void
BUI_monitor_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
  monitor_UI_patient(  p_age, p_gender, p_identifier, p_name, p_weight );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  init
 */
void
BUI_init()
{
  /* SEND monitor::patient(age:50, gender:male, identifier:12345, name:Fred, weight:185) */
  XTUML_OAL_STMT_TRACE( 1, "SEND monitor::patient(age:50, gender:male, identifier:12345, name:Fred, weight:185)" );
  BUI_monitor_patient( 50, capssys_gender_male_e, 12345, "Fred", 185 );

}

void BUI_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  BUI
   */
  BUI_init();

}
