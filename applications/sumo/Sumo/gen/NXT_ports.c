/*----------------------------------------------------------------------------
 * File:  RCX_ports.c
 *
 * UML Component Port Messages
 * Component Name:                       RCX
 * Domain Name (if modeled internally):  RCX
 *
 * (C) Copyright 1998-2009 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_types.h"
#include "NXT_ports.h"
#include "sumo_ports.h"
#include "ecrobot_interface.h"

// allow the drive to be cached
int motion = 0;

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Client to Server Message:  go
 */
void
NXT_IO_go( s2_t p_direction )
{
	switch ( p_direction ) {
	case sys_Direction_backward_e:
		motion = -100;
		nxt_motor_set_speed(NXT_PORT_B, motion, 1);
		nxt_motor_set_speed(NXT_PORT_C, motion, 1);
	  break;
	case sys_Direction_stop_e:
		motion = 0;
		nxt_motor_set_speed(NXT_PORT_B, motion, 1);
		nxt_motor_set_speed(NXT_PORT_C, motion, 1);
	  break;
	case sys_Direction_forward_e:
		motion = 100;
		nxt_motor_set_speed(NXT_PORT_B, motion, 1);
		nxt_motor_set_speed(NXT_PORT_C, motion, 1);
	  break;
	default:
		nxt_motor_set_speed(NXT_PORT_B, 0, 1);
		nxt_motor_set_speed(NXT_PORT_C, 0, 1);
	}
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Server to Client Message:  lineDetected
 */
void
NXT_IO_lineDetected( void )
{
  sumo_IO_lineDetected();
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Server to Client Message:  touchLeft
 */
void
NXT_IO_touchLeft( void )
{
  sumo_IO_touchLeft();
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Server to Client Message:  init
 */
void
NXT_IO_init( void )
{
	sumo_IO_init();
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Client to Server Message:  setName
 */
void
NXT_IO_setName( c_t p_name[ESCHER_SYS_MAX_STRING_LEN] )
{
	// optimized out, has no meaning in generated code
}


/*
 * Interface:  platform
 * Provided Port:  IO
 * To Provider Message:  stop
 */
void
NXT_IO_stop( void )
{
	motion = 0;
	nxt_motor_set_speed(NXT_PORT_B, motion, 1);
	nxt_motor_set_speed(NXT_PORT_C, motion, 1);
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Server to Client Message:  touchRight
 */
void
NXT_IO_touchRight()
{
  sumo_IO_touchRight();
}

/*
 * Interface:                 platform
 * Provided Port:             IO
 * Client to Server Message:  turn
 */
void
NXT_IO_turn( s2_t p_orientation )
{
	switch ( p_orientation ) {
	  case sys_Orientation_left_e:
		nxt_motor_set_speed(NXT_PORT_B,  100, 1);
		nxt_motor_set_speed(NXT_PORT_C, -100, 1);
	    break;
	  case sys_Orientation_right_e:
		nxt_motor_set_speed(NXT_PORT_B, -100, 1);
		nxt_motor_set_speed(NXT_PORT_C,  100, 1);
	    break;
	  case sys_Orientation_straight_e:
		nxt_motor_set_speed(NXT_PORT_B, motion, 1);
		nxt_motor_set_speed(NXT_PORT_C, motion, 1);
	    break;
	  default:
		nxt_motor_set_speed(NXT_PORT_B, 0, 1);
		nxt_motor_set_speed(NXT_PORT_C, 0, 1);
	  }
}


