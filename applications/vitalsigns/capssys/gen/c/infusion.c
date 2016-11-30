/*----------------------------------------------------------------------------
 * File:  infusion.c
 *
 * UML Component Port Messages
 * Component/Module Name:  infusion
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 drug infusion application
 */

#include "capssys_sys_types.h"
#include "infusion.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "pump.h"
#include "PUI.h"
#include "monitor.h"
#include "infusion_classes.h"

/*
 * Interface:  pumpif
 * Required Port:  pump
 * To Provider Message:  flow
 */
void
infusion_pump_flow( const i_t p_rate )
{
  pump_Port1_flow(  p_rate );
}

/*
 * Interface:  pumpif
 * Required Port:  pump
 * To Provider Message:  off
 */
void
infusion_pump_off()
{
  pump_Port1_off();
}

/*
 * Interface:  pumpif
 * Required Port:  pump
 * To Provider Message:  on
 */
void
infusion_pump_on()
{
  pump_Port1_on();
}

/*
 * Interface:  pumpif
 * Required Port:  pump
 * From Provider Message:  status
 */
void
infusion_pump_status( const i_t p_exception, const i_t p_flow )
{
}

/*
 * Interface:  UIbus
 * Required Port:  UI
 * From Provider Message:  button_press
 */
void
infusion_UI_button_press( const i_t p_number )
{
}

/*
 * Interface:  UIbus
 * Required Port:  UI
 * To Provider Message:  display
 */
void
infusion_UI_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
  PUI_infusion_display(  p_name, p_value );
}

/*
 * Interface:  UIbus
 * Required Port:  UI
 * From Provider Message:  patient
 */
void
infusion_UI_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const infusion_class_info[ infusion_MAX_CLASS_NUMBERS ] = {
  &pG_infusion_infusion_extent,
  &pG_infusion_pump_extent,
  &pG_infusion_dose_extent,
  &pG_infusion_patient_extent,
  &pG_infusion_vial_extent,
  &pG_infusion_facility_extent,
  &pG_infusion_PRN_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t infusion_EventDispatcher[ infusion_STATE_MODELS ] = {
  infusion_class_dispatchers
};

void infusion_execute_initialization()
{
}
