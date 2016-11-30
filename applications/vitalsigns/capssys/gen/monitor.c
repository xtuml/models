/*----------------------------------------------------------------------------
 * File:  monitor.c
 *
 * UML Component Port Messages
 * Component/Module Name:  monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include <string.h>
#include "capssys_sys_types.h"
#include "monitor.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "infusion.h"
#include "BUI.h"
#include "SpO2.h"
#include "ECG.h"
#include "NIBP.h"
#include "ARM.h"
#include "capnometer.h"
#include "PUI.h"
#include "monitor_classes.h"

/*
 * Interface:  UIbus
 * Required Port:  UI
 * From Provider Message:  button_press
 */
void
monitor_UI_button_press( const i_t p_number )
{
}

/*
 * Interface:  UIbus
 * Required Port:  UI
 * To Provider Message:  display
 */
void
monitor_UI_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
  BUI_monitor_display(  p_name, p_value );
  char buf[50];
  printf( "XXX   %s,%d\n", p_name, p_value);
  sprintf(buf, "%s,%d", p_name, p_value);
  Escher_socket_send( buf, strlen( buf ), 2003 );
  Escher_socket_send( buf, strlen( buf ), 2004 );
}

/*
 * Interface:  UIbus
 * Required Port:  UI
 * From Provider Message:  patient
 */
void
monitor_UI_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
  /* patient::init( age:50, gender:male, identifier:12345, name:Fred, weight:185 ) */
  XTUML_OAL_STMT_TRACE( 1, "patient::init( age:50, gender:male, identifier:12345, name:Fred, weight:185 )" );
  monitor_patient_op_init( 50, capssys_gender_male_e, 12345, "Fred", 185 );
}

/*
 * Interface:  SpO2if
 * Required Port:  pulsox
 * To Provider Message:  off
 */
void
monitor_pulsox_off()
{
  SpO2_monitor_off();
}

/*
 * Interface:  SpO2if
 * Required Port:  pulsox
 * To Provider Message:  on
 */
void
monitor_pulsox_on()
{
  SpO2_monitor_on();
}

/*
 * Interface:  SpO2if
 * Required Port:  pulsox
 * From Provider Message:  reading
 */
void
monitor_pulsox_reading( const i_t p_O2saturation, const i_t p_pulse )
{
  /* O2saturation::update( O2saturation:PARAM.O2saturation ) */
  XTUML_OAL_STMT_TRACE( 1, "O2saturation::update( O2saturation:PARAM.O2saturation )" );
  monitor_O2saturation_op_update( p_O2saturation );
  /* pulse::update( pulse:PARAM.pulse ) */
  XTUML_OAL_STMT_TRACE( 1, "pulse::update( pulse:PARAM.pulse )" );
  monitor_pulse_op_update( p_pulse );
}

/*
 * Interface:  ECGif
 * Required Port:  heart
 * To Provider Message:  off
 */
void
monitor_heart_off()
{
  ECG_monitor_off();
}

/*
 * Interface:  ECGif
 * Required Port:  heart
 * To Provider Message:  on
 */
void
monitor_heart_on()
{
  ECG_monitor_on();
}

/*
 * Interface:  ECGif
 * Required Port:  heart
 * From Provider Message:  waveform
 */
void
monitor_heart_waveform( const i_t p_amplitude, const i_t p_heartrate, const i_t p_t )
{
  /* electrocardiograph::update( heartrate:PARAM.heartrate ) */
  XTUML_OAL_STMT_TRACE( 1, "electrocardiograph::update( heartrate:PARAM.heartrate )" );
  monitor_electrocardiograph_op_update( p_heartrate );
}

/*
 * Interface:  NIBPif
 * Required Port:  cuff
 * To Provider Message:  off
 */
void
monitor_cuff_off()
{
  NIBP_monitor_off();
}

/*
 * Interface:  NIBPif
 * Required Port:  cuff
 * To Provider Message:  on
 */
void
monitor_cuff_on()
{
  NIBP_monitor_on();
}

/*
 * Interface:  NIBPif
 * Required Port:  cuff
 * From Provider Message:  reading
 */
void
monitor_cuff_reading( const i_t p_diastolic, const i_t p_systolic )
{
  /* systolicBP::update( systolic:PARAM.systolic ) */
  XTUML_OAL_STMT_TRACE( 1, "systolicBP::update( systolic:PARAM.systolic )" );
  monitor_systolicBP_op_update( p_systolic );
  /* diastolicBP::update( diastolic:PARAM.diastolic ) */
  XTUML_OAL_STMT_TRACE( 1, "diastolicBP::update( diastolic:PARAM.diastolic )" );
  monitor_diastolicBP_op_update( p_diastolic );
}

/*
 * Interface:  ARMif
 * Required Port:  arm
 * To Provider Message:  interval
 */
void
monitor_arm_interval( const i_t p_t )
{
  ARM_monitor_interval(  p_t );
}

/*
 * Interface:  ARMif
 * Required Port:  arm
 * To Provider Message:  off
 */
void
monitor_arm_off()
{
  ARM_monitor_off();
}

/*
 * Interface:  ARMif
 * Required Port:  arm
 * To Provider Message:  on
 */
void
monitor_arm_on()
{
  ARM_monitor_on();
}

/*
 * Interface:  ARMif
 * Required Port:  arm
 * From Provider Message:  responsiveness
 */
void
monitor_arm_responsiveness( const i_t p_pressure, const i_t p_response_time )
{
  /* responsiveness::update( response_time:PARAM.response_time ) */
  XTUML_OAL_STMT_TRACE( 1, "responsiveness::update( response_time:PARAM.response_time )" );
  monitor_responsiveness_op_update( p_response_time );
}

/*
 * Interface:  capnoif
 * Required Port:  capno
 * To Provider Message:  off
 */
void
monitor_capno_off()
{
  capnometer_monitor_off();
}

/*
 * Interface:  capnoif
 * Required Port:  capno
 * To Provider Message:  on
 */
void
monitor_capno_on()
{
  capnometer_monitor_on();
}

/*
 * Interface:  capnoif
 * Required Port:  capno
 * From Provider Message:  respiration
 */
void
monitor_capno_respiration( const i_t p_etCO2, const i_t p_expiration, const i_t p_inspiration, const i_t p_period )
{
  /* respiration::update( period:PARAM.period ) */
  XTUML_OAL_STMT_TRACE( 1, "respiration::update( period:PARAM.period )" );
  monitor_respiration_op_update( p_period );
  /* etCO2::update( etCO2:PARAM.etCO2 ) */
  XTUML_OAL_STMT_TRACE( 1, "etCO2::update( etCO2:PARAM.etCO2 )" );
  monitor_etCO2_op_update( p_etCO2 );
}

/*
 * Interface:  UIbus
 * Required Port:  PRUUI
 * From Provider Message:  button_press
 */
void
monitor_PRUUI_button_press( const i_t p_number )
{
}

/*
 * Interface:  UIbus
 * Required Port:  PRUUI
 * To Provider Message:  display
 */
void
monitor_PRUUI_display( c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_value )
{
  PUI_monitor_display(  p_name, p_value );
}

/*
 * Interface:  UIbus
 * Required Port:  PRUUI
 * From Provider Message:  patient
 */
void
monitor_PRUUI_patient( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const monitor_class_info[ monitor_MAX_CLASS_NUMBERS ] = {
  &pG_monitor_alarm_extent,
  &pG_monitor_patient_extent,
  &pG_monitor_vitalsign_extent,
  0,
  &pG_monitor_advisory_extent,
  &pG_monitor_facility_extent,
  &pG_monitor_etCO2_extent,
  &pG_monitor_diastolicBP_extent,
  &pG_monitor_pulse_extent,
  &pG_monitor_O2saturation_extent,
  &pG_monitor_systolicBP_extent,
  &pG_monitor_responsiveness_extent,
  &pG_monitor_electrocardiograph_extent,
  &pG_monitor_respiration_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t monitor_EventDispatcher[ monitor_STATE_MODELS ] = {
  monitor_class_dispatchers
};

void monitor_execute_initialization()
{
}
