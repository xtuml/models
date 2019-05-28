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
#include "EV3B_bridge.h"
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>

#define MAX_LINES 15
void RComm_display_message( char * s ) {
  static char display_block[MAX_LINES][256];
  static int current_line;
  // fill current line
  memcpy(display_block[current_line], s, 256);
  // increment line number
  current_line = (current_line + 1) % MAX_LINES;
  // fill display
  int32_t font_width;
  int32_t font_height;
  ev3_font_get_size(EV3_FONT_SMALL, &font_width, &font_height);
  ev3_lcd_fill_rect(0, 0, EV3_LCD_WIDTH, EV3_LCD_HEIGHT, EV3_LCD_WHITE);
  int k = current_line;
  for ( int i = 0; i < MAX_LINES; i++ ) {
    ev3_lcd_draw_string(display_block[k], 0, EV3_LCD_HEIGHT - ((i + 1) * font_height));
    k = (k + 1) % MAX_LINES;
  }
}

extern FILE * rover_bt;
void
bluetooth_task(intptr_t extinf) {
  static char buf[256];
  if (NULL == rover_bt) rover_bt = ev3_serial_open_file(EV3_SERIAL_BT);
  while (fgets(buf, 256, rover_bt)) {

    // display reply on screen
    char * ptr;
    if (NULL != (ptr=strstr(buf,"\n"))) *ptr = '\0';
    RComm_display_message(buf);

    // parse response
    r_t arg1 = 0.0;
    r_t arg2 = 0.0;
    char * numStart;
    numStart = strstr(buf, "Leader,");
    if (numStart != NULL) {
      numStart = buf + strlen("Leader,");
      arg1 = strtod(numStart, &ptr);
      numStart = ptr + strlen(",");
      if (',' == *ptr) {
        arg2 = strtod(numStart, &ptr);
        RComm_Location_leaderGPS(arg1, arg2);
      }
      else {
        RComm_Location_leaderDistance(arg1);
      }
    }
    else {
      numStart = strstr(buf, "Rover,");
      if (numStart != NULL) {
        numStart = buf + strlen("Rover,");
        arg1 = strtod(numStart, &ptr);
        numStart = ptr + strlen(",");
        if (',' == *ptr) {
          arg2 = strtod(numStart, &ptr);
          RComm_Location_roverGPS(arg1, arg2);
        }
        else {
          RComm_Location_roverCompass(arg1);
        }
      }
    }

  }
  assert(!ev3_bluetooth_is_connected());
}

void
RComm_send_bt_message( const char * restrict format, ... )
{
  // make sure bluetooth is connected
  assert(EV3B_bluetooth_is_connected());
  if (NULL == rover_bt) rover_bt = ev3_serial_open_file(EV3_SERIAL_BT);

  // send message
  va_list args;
  va_start(args, format);
  char buf[256]; buf[0] = '\0';
  vsnprintf(buf, 256, format, args);
  va_end(args);
  fprintf(rover_bt, "MSG:%s\n", buf);
  fflush(rover_bt);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  brake
 */
void
RComm_RComm_brake( const i_t p_power )
{
  RComm_send_bt_message("Rover,brake(%d)", p_power);
  EV3M_stop( TRUE, DEV_MOTOR_LEFT );
  EV3M_stop( TRUE, DEV_MOTOR_RIGHT );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  incrementPower
 */
void
RComm_RComm_incrementPower( const i_t p_power )
{
  RComm_send_bt_message("Rover,incrementPower(%d)", p_power);
  i_t current_l_power = EV3M_get_power( DEV_MOTOR_LEFT );
  i_t current_r_power = EV3M_get_power( DEV_MOTOR_RIGHT );
  EV3M_set_power( DEV_MOTOR_LEFT, current_l_power + p_power > 100 ? 100 : current_l_power + p_power );
  EV3M_set_power( DEV_MOTOR_RIGHT, current_r_power + p_power > 100 ? 100 : current_r_power + p_power );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderDistance
 */
void
RComm_RComm_pollLeaderDistance()
{
  RComm_send_bt_message("Leader,Distance()");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderGPS
 */
void
RComm_RComm_pollLeaderGPS()
{
  RComm_send_bt_message("Leader,GPS()");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverCompass
 */
void
RComm_RComm_pollRoverCompass()
{
  RComm_send_bt_message("Rover,getCompass()");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverGPS
 */
void
RComm_RComm_pollRoverGPS()
{
  RComm_send_bt_message("Rover,GPS()");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  ready
 */
void
RComm_RComm_ready()
{
  RComm_send_bt_message("ready");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setForwardPower
 */
void
RComm_RComm_setForwardPower( const i_t p_power )
{
  RComm_send_bt_message("Rover,setForwardPower(%d)", p_power);
  EV3M_set_power( DEV_MOTOR_LEFT, p_power );
  EV3M_set_power( DEV_MOTOR_RIGHT, p_power );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setLRPower
 */
void
RComm_RComm_setLRPower( const i_t p_lpower, const i_t p_rpower )
{
  RComm_send_bt_message("Rover,setLRPower(%d,%d)", p_lpower, p_rpower);
  EV3M_set_power( DEV_MOTOR_LEFT, p_lpower );
  EV3M_set_power( DEV_MOTOR_RIGHT, p_rpower );
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

void RComm_execute_initialization()
{
}
