/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
 *
 * External Entity:  EV3TouchSensors (EV3TCH2)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Sumo_sys_types.h"
#include "EV3TCH2_bridge.h"
#include "ev3api.h"

/*
 * Bridge:  is_pressed
 */
bool
EV3TCH2_is_pressed( const i_t p_port )
{
  ev3_sensor_config(p_port-1, TOUCH_SENSOR);
  return ev3_touch_sensor_is_pressed(p_port-1);
}
