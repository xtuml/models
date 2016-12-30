/*----------------------------------------------------------------------------
 * File:  PUI.c
 *
 * UML Component Port Messages
 * Component/Module Name:  PUI
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Patient Room Unit User Interface
 */

#include "capssys_sys_types.h"
#include "PUI.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"
#include "infusion.h"

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * From Provider Message:  button_press
 */
void
PUI_monitor_button_press( const i_t p_number )
{
  monitor_PRUUI_button_press(  p_number );
}

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * To Provider Message:  display
 */
void
PUI_monitor_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
}

/*
 * Interface:  UIbus
 * Provided Port:  monitor
 * From Provider Message:  patient
 */
void
PUI_monitor_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
  monitor_PRUUI_patient(  p_age, p_gender, p_identifier, p_name, p_weight );
}

/*
 * Interface:  UIbus
 * Provided Port:  infusion
 * From Provider Message:  button_press
 */
void
PUI_infusion_button_press( const i_t p_number )
{
  infusion_UI_button_press(  p_number );
}

/*
 * Interface:  UIbus
 * Provided Port:  infusion
 * To Provider Message:  display
 */
void
PUI_infusion_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
}

/*
 * Interface:  UIbus
 * Provided Port:  infusion
 * From Provider Message:  patient
 */
void
PUI_infusion_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
  infusion_UI_patient(  p_age, p_gender, p_identifier, p_name, p_weight );
}

