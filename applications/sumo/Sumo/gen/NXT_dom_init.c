/*----------------------------------------------------------------------------
 * File:  NXT_dom_init.c
 *
 * Initialization services for the following domain:
 * Component:  NXT
 * (C) Copyright 1998-2010 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include <string.h>
#include "sys_types.h"
#include "NXT_classes.h"
#include "NXT_dom_init.h"
#include "NXT_ports.h"
#include "NXT_functions.h"
#include "kernel.h"
#include "kernel_id.h"
#include "ecrobot_interface.h"

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const NXT_class_info[ NXT_MAX_CLASS_NUMBERS ] = {
  NXT_CLASS_INFO_INIT
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t NXT_EventDispatcher[ NXT_STATE_MODELS ] = {
  NXT_class_dispatchers
};

void NXT_dom_init()
{
  /*
   * Initialization Function:  startWithDelay
   * Component:  NXT
   */
  NXT_startWithDelay();


}


EXTERNAL_BMP_DATA(splash);
typedef struct
{
	const char *bmp;
	int width;
	int height;
	int x;
	int y;
} BMP_DATA;

const BMP_DATA bmp_data = {BMP_DATA_START(splash), 100, 64, 0, 0};


/*
 * LEJOS NXJ development team fixed I2C issue on port S4.
 * This sample also verifies the updated I2C comm. functionality
 */
/* OSEK declarations */
DeclareCounter(SysTimerCnt);
DeclareTask(Task1);
DeclareTask(Task2);

/* LEJOS OSEK hooks */
void ecrobot_device_initialize()
{
	ecrobot_init_color_sensor(NXT_PORT_S3);
}
void ecrobot_device_terminate()
{
	ecrobot_term_color_sensor(NXT_PORT_S3);
}

/* LEJOS OSEK hook to be invoked from an ISR in category 2 */
void user_1ms_isr_type2(void)
{
  StatusType ercd;

  ercd = SignalCounter(SysTimerCnt); /* Increment OSEK Alarm Counter */
  if(ercd != E_OK)
  {
    ShutdownOS(ercd);
  }
}


//#define samples 1

/* Task1 executed every 50msec */
TASK(Task1)
{
	// draw the robot icon (Sumo/img/splash.bmp)
	// TODO: there is probably a better hook to use as
	// we only want to draw it once
	static U8 lcd[NXT_LCD_DEPTH*NXT_LCD_WIDTH];
	static bool disp = false;
	if (!disp) {
		memset(lcd, 0x00, sizeof(lcd));
		ecrobot_bmp2lcd(bmp_data.bmp, lcd, bmp_data.width, bmp_data.height);
		display_clear(0);
		display_bitmap_copy(lcd, 100, 8, bmp_data.x, bmp_data.y);
		display_update();
		disp = true;
	}

	static S16 light[3];
	light[0] = 0;
	light[1] = 0;
	light[2] = 0;

	ecrobot_get_color_sensor(NXT_PORT_S3, light);

	static bool line = false;
	static bool touchLeft = false;
	static bool touchRight = false;

	// the red component is the only one providing reliable values
	if (light[0] < 700)
	{
		// do not send another line signal if the
		// robot is still on the line (has not left
		// the line since last the line signal)
		if (!line) {
		    NXT_IO_lineDetected();
		}
		line = true;
	} else {
		line = false;
	}

	U8 left = ecrobot_get_touch_sensor(NXT_PORT_S4);
	U8 right = ecrobot_get_touch_sensor(NXT_PORT_S1);

	if (left) {
		// do not send another bumper signal if it hasn't
		// been released since the most recent  signal
		if (!touchLeft) {
			NXT_IO_touchLeft();
		}
		touchLeft = true;
	} else {
		touchLeft = false;
	}
	if (right) {
		// do not send another bumper signal if it hasn't
		// been released since the most recent  signal
		if (!touchRight) {
			NXT_IO_touchRight();
		}
		touchRight = true;
	} else {
		touchRight = false;
	}

	// uncomment to print averaged values from the color sensor
	/*

	static S16 ravg[samples];
	static S16 gavg[samples];
	static S16 bavg[samples];
	static S16 tavg[samples];
	static int idx = 0;

	ravg[idx] = light[0];
	gavg[idx] = light[1];
	bavg[idx] = light[2];
	tavg[idx++] = (light[0] + light[1] + light[2]) / (S16)3;

	if (idx == samples) {
		i_t r = 0;
		i_t g = 0;
		i_t b = 0;
		i_t t = 0;
		for (int i = 0; i < samples; i++) {
			r += ravg[i];
			g += gavg[i];
			b += bavg[i];
			t += tavg[i];
		}
		r /= (S16)samples;
		g /= (S16)samples;
		b /= (S16)samples;
		t /= (S16)samples;

		display_clear(0);

		display_goto_xy(0,0);
		display_string("red  :");
		display_goto_xy(7,0);
		display_int(r, 5);

		display_goto_xy(0,1);
		display_string("green:");
		display_goto_xy(7,1);
		display_int(g, 5);

		display_goto_xy(0,2);
		display_string("blue :");
		display_goto_xy(7,2);
		display_int(b, 5);

		display_goto_xy(0,3);
		display_string("total:");
		display_goto_xy(7,3);
		display_int(t, 5);

		display_update();
		if (r < 700)
		{
			NXT_IO_lineDetected();
		}
	}
	idx %= samples;
	*/

 	TerminateTask();
}

TASK(Task2)
{
    TerminateTask();
}

