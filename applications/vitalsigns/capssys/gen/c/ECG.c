/*----------------------------------------------------------------------------
 * File:  ECG.c
 *
 * UML Component Port Messages
 * Component/Module Name:  ECG
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 electrocardiograph
 */

#include "capssys_sys_types.h"
#include "ECG.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor.h"

/*
 * Interface:  ECGif
 * Provided Port:  monitor
 * To Provider Message:  off
 */
void
ECG_monitor_off()
{
}

/*
 * Interface:  ECGif
 * Provided Port:  monitor
 * To Provider Message:  on
 */
void
ECG_monitor_on()
{
}

/*
 * Interface:  ECGif
 * Provided Port:  monitor
 * From Provider Message:  waveform
 */
void
ECG_monitor_waveform( const i_t p_amplitude, const i_t p_t )
{
  monitor_heart_waveform(  p_amplitude, p_t );
}

