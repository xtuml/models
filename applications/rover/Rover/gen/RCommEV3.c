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
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>

const int left_motor = EV3_PORT_B, right_motor = EV3_PORT_C;
bool RComm_motors_configured = FALSE;
FILE * bt = NULL;

void
RComm_configure_motors()
{
  ev3_motor_config( left_motor, LARGE_MOTOR );
  ev3_motor_config( right_motor, LARGE_MOTOR );
  RComm_motors_configured = TRUE;
}

c_t
RComm_send_bt_message( c_t * reply_buf, i_t len, const char * restrict format, ... )
{
  // make sure bluetooth is connected
  assert(ev3_bluetooth_is_connected());
  if (NULL == bt) bt = ev3_serial_open_file(EV3_SERIAL_BT);

  // send message
  va_list args;
  va_start(args, format);
  vfprintf(bt, format, args);
  va_end(args);

  // receive reply
  reply_buf[0] = '\0';
  fgets(reply_buf, len, bt);
  c_t * ptr;
  if ((ptr = strstr(reply_buf, "\n")) != NULL ) *ptr = '\0';

  // display reply on screen
	ev3_lcd_fill_rect(0, 0, EV3_LCD_WIDTH, EV3_LCD_HEIGHT, EV3_LCD_WHITE);
	ev3_lcd_set_font(EV3_FONT_MEDIUM);
  ev3_lcd_draw_string(reply_buf, 0, 0);

  return reply_buf;
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  brake
 */
void
RComm_RComm_brake( const i_t p_power )
{
  if ( !RComm_motors_configured ) RComm_configure_motors();
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,brake(%d)\n", p_power);
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
  if ( !RComm_motors_configured ) RComm_configure_motors();
  int current_l_power = ev3_motor_get_power( left_motor );
  int current_r_power = ev3_motor_get_power( right_motor );
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,incrementPower(%d)\n", p_power);
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
  char buf[256];
  RComm_send_bt_message(buf, 256, "Leader,Distance()\n");

  r_t ret = 0.0;
  char *numStart;

  numStart = strstr(buf, "Leader,");
  if (numStart != NULL) {
      char *ptr;
      numStart = buf + strlen("Leader,");
      ret = strtod(numStart, &ptr);
  }
  else {
    printf( "Bad response: '%s'\n", buf );
    exit(1);
  }

  RComm_Location_leaderDistance(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderGPS
 */
void
RComm_RComm_pollLeaderGPS()
{
  char buf[256];
  RComm_send_bt_message(buf, 256, "Leader,GPS()\n");

  r_t posx = 0.0;
  r_t posz = 0.0;
  char *numStart;

  numStart = strstr(buf, "Leader,");
  if (numStart != NULL) {
      char *ptr;
      numStart = buf + strlen("Leader,");
      posx = strtod(numStart, &ptr);
      numStart = ptr + strlen(",");
      posz = strtod(numStart, &ptr);
  }
  else {
    printf( "Bad response: '%s'\n", buf );
    exit(1);
  }

  RComm_Location_leaderGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverCompass
 */
void
RComm_RComm_pollRoverCompass()
{
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,getCompass()\n");

  r_t ret = 0.0;
  char *numStart;

  numStart = strstr(buf, "Rover,");
  if (numStart != NULL) {
      char *ptr;
      numStart = buf + strlen("Rover,");
      ret = strtod(numStart, &ptr);
  }
  else {
    printf( "Bad response: '%s'\n", buf );
    exit(1);
  }

  RComm_Location_roverCompass(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverGPS
 */
void
RComm_RComm_pollRoverGPS()
{
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,GPS()\n");
  r_t posx = 0.0;
  r_t posz = 0.0;
  char *numStart;

  numStart = strstr(buf, "Rover,");
  if (numStart != NULL) {
      char *ptr;
      numStart = buf + strlen("Rover,");
      posx = strtod(numStart, &ptr);
      numStart = ptr + strlen(",");
      posz = strtod(numStart, &ptr);
  }
  else {
    printf( "Bad response: '%s'\n", buf );
    exit(1);
  }

  RComm_Location_roverGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  ready
 */
void
RComm_RComm_ready()
{
  char buf[256];
  RComm_send_bt_message(buf, 256, "ready\n");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setForwardPower
 */
void
RComm_RComm_setForwardPower( const i_t p_power )
{
  if ( !RComm_motors_configured ) RComm_configure_motors();
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,setForwardPower(%d)\n", p_power);
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
  if ( !RComm_motors_configured ) RComm_configure_motors();
  char buf[256];
  RComm_send_bt_message(buf, 256, "Rover,setLRPower(%d,%d)\n", p_lpower, p_rpower);
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

