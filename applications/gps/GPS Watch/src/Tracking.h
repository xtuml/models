/*----------------------------------------------------------------------------
 * File:  Tracking.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_H
#define TRACKING_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
The Tracking component encapsulates the entire application software. This is the 
only component in the system from which code will be generated for the final 
product.
*/

#include "GPSWatch_sys_types.h"
void Tracking_UI_lapResetPressed( void );
void Tracking_UI_lightPressed( void );
void Tracking_UI_modePressed( void );
void Tracking_UI_newGoalSpec( const GPSWatch_GoalCriteria_t, const r_t, const r_t, const i_t, const r_t, const GPSWatch_GoalSpan_t );
void Tracking_UI_setData( const GPSWatch_Unit_t, const r_t );
void Tracking_UI_setIndicator( const GPSWatch_Indicator_t );
void Tracking_UI_setTargetPressed( void );
void Tracking_UI_setTime( const i_t );
void Tracking_UI_startStopPressed( void );
void Tracking_UI_startTest( void );
void Tracking_LOC_getLocation( r_t *, r_t * );
void Tracking_LOC_registerListener( void );
void Tracking_LOC_unregisterListener( void );
void Tracking_HR_heartRateChanged( const i_t );
void Tracking_HR_registerListener( void );
void Tracking_HR_unregisterListener( void );
r_t Tracking_UTIL_getDistance( const r_t, const r_t, const r_t, const r_t );


#ifdef	__cplusplus
}
#endif
#endif  /* TRACKING_H */
