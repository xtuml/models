/*----------------------------------------------------------------------------
 * File:  RComm.c
 *
 * UML Component Port Messages
 * Component/Module Name:  RComm
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Rover_sys_types.h"
#include "RComm.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "Rover.h"
#include "ev3api.h"

const int left_motor = EV3_PORT_B, right_motor = EV3_PORT_C;
bool motors_configured = FALSE;

void
configure_motors()
{
  ev3_motor_config( left_motor, LARGE_MOTOR );
  ev3_motor_config( right_motor, LARGE_MOTOR );
  motors_configured = TRUE;
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  brake
 */
void
RComm_RComm_brake( const i_t p_power )
{
  if ( !motors_configured ) configure_motors();
  ev3_motor_set_power( left_motor, 0 );
  ev3_motor_set_power( right_motor, 0 );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  incrementPower
 */
void
RComm_RComm_incrementPower( const i_t p_power )
{
  if ( !motors_configured ) configure_motors();
  int current_l_power = ev3_motor_get_power( left_motor );
  int current_r_power = ev3_motor_get_power( right_motor );
  ev3_motor_set_power( left_motor, current_l_power + p_power > 100 ? 100 : current_l_power + p_power );
  ev3_motor_set_power( right_motor, current_r_power + p_power > 100 ? 100 : current_r_power + p_power );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderDistance
 */
void
RComm_RComm_pollLeaderDistance()
{
  RComm_Location_leaderDistance( 13 ); // TODO
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderGPS
 */
void
RComm_RComm_pollLeaderGPS()
{
  RComm_Location_leaderGPS( 0, 13 ); // TODO
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverCompass
 */
void
RComm_RComm_pollRoverCompass()
{
  RComm_Location_roverCompass( 0 ); // TODO
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverGPS
 */
void
RComm_RComm_pollRoverGPS()
{
  RComm_Location_roverGPS( 0, 0 ); // TODO
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  ready
 */
void
RComm_RComm_ready()
{
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setForwardPower
 */
void
RComm_RComm_setForwardPower( const i_t p_power )
{
  if ( !motors_configured ) configure_motors();
  ev3_motor_set_power( left_motor, p_power );
  ev3_motor_set_power( right_motor, p_power );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setLRPower
 */
void
RComm_RComm_setLRPower( const i_t p_lpower, const i_t p_rpower )
{
  if ( !motors_configured ) configure_motors();
  ev3_motor_set_power( left_motor, p_lpower );
  ev3_motor_set_power( right_motor, p_rpower );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  leaderDistance
 */
void
RComm_Location_leaderDistance( const r_t p_dist )
{
  Rover_RComm__Location_leaderDistance(  p_dist );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  leaderGPS
 */
void
RComm_Location_leaderGPS( const r_t p_x, const r_t p_z )
{
  Rover_RComm__Location_leaderGPS(  p_x, p_z );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  roverCompass
 */
void
RComm_Location_roverCompass( const r_t p_degrees )
{
  Rover_RComm__Location_roverCompass(  p_degrees );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  roverGPS
 */
void
RComm_Location_roverGPS( const r_t p_x, const r_t p_z )
{
  Rover_RComm__Location_roverGPS(  p_x, p_z );
}
