/*----------------------------------------------------------------------------
 * File:  EV3B_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  EV3Body (EV3B)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ev3api.h"
#include "app.h"

#if defined(BUILD_MODULE)
#include "module_cfg.h"
#else
#include "kernel_cfg.h"
#endif

#include "Sumo_sys_types.h"
#include "EV3B_bridge.h"


#include "EV3M_bridge.h"
#include "EV3COL_bridge.h"
#include "EV3GYR_bridge.h"
#include "EV3TCH_bridge.h"
#include "EV3ULS_bridge.h"
#include <stdlib.h>
#include <string.h>
#include "syssvc/serial.h"


void EV3B_Initialize(void)
{
  EV3M_Initialize();
  EV3COL_Initialize();
  EV3TCH_Initialize();
  EV3GYR_Initialize();
  EV3ULS_Initialize();
}
/*
 * Bridge:  get_battery_voltage
 */
i_t
EV3B_get_battery_voltage()
{
  return ev3_battery_voltage_mV();
}


/*
 * Bridge:  get_battery_current
 */
i_t
EV3B_get_battery_current()
{
  return ev3_battery_current_mA();
}


/*
 * Bridge:  is_button_pressed
 */
bool
  EV3B_is_button_pressed( const button_t p_button )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN TRUE */
  return ev3_button_is_pressed(p_button) ? TRUE : FALSE;

}


/*
 * Bridge:  led_set_color
 */
void
EV3B_led_set_color( const ledcolor_t p_color )
{
  /* Replace/Insert your implementation code here... */

  ev3_led_set_color(p_color);
}


/*
 * Bridge:  speaker_play_file
 */
 static memfile_t fgSpeakerMem;
void
EV3B_speaker_play_file( const i_t p_duration, c_t p_file[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */

  /* if speaker file is already opend, close it first */
  if ( fgSpeakerMem.buffer != NULL ) {
    ev3_memfile_free(&fgSpeakerMem);
  }

  ER ret = ev3_memfile_load(p_file,&fgSpeakerMem);
  if ( ret == E_OK ) {
    ev3_speaker_play_file(&fgSpeakerMem,p_duration);
  }

}


/*
 * Bridge:  speaker_play_tone
 */
void
EV3B_speaker_play_tone( const i_t p_duration, i_t  p_frequency )
{
  /* Replace/Insert your implementation code here... */
  ev3_speaker_play_tone(p_frequency,p_duration);

}


/*
 * Bridge:  speaker_set_volume
 */
void
EV3B_speaker_set_volume( const i_t p_volume )
{
  /* Replace/Insert your implementation code here... */

  ev3_speaker_set_volume(p_volume);
}


/*
 * Bridge:  speaker_stop
 */
void
EV3B_speaker_stop()
{
  /* Replace/Insert your implementation code here... */

  ev3_speaker_stop();

}


/*
 * Bridge:  bluetooth_is_connected
 */
bool
EV3B_bluetooth_is_connected()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN TRUE */

  /* TODO :implement later */

  return ev3_bluetooth_is_connected();
}


/*
 * Bridge:  image_load
 */
mclm_result_t
EV3B_image_load( c_t p_filename[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert the following instructions with your implementation code.  */
  /* RETURN OK */
  /* TODO :implement later */

  return MCLM_RESULT_OK;
}


/*
 * Bridge:  draw_image
 */
 static memfile_t fgImageMem;
 static image_t fgImage;
void
EV3B_draw_image( c_t p_filename[ESCHER_SYS_MAX_STRING_LEN], const i_t p_x, const i_t p_y )
{
  if ( fgImage.data ) {
    ev3_image_free(&fgImage);
    if ( fgImageMem.buffer ) {
      ev3_memfile_free(&fgImageMem);
    }
  }
  
  if ( ev3_memfile_load(p_filename,&fgImageMem) == E_OK ) {
    if ( ev3_image_load(&fgImageMem,&fgImage) == E_OK ) {
      ev3_lcd_draw_image(&fgImage,p_x,p_y);
    } else {
      ev3_memfile_free(&fgImageMem);
    }
  }

  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  lcd_draw_line
 */
void
EV3B_lcd_draw_line( const i_t p_x0, const i_t p_x1, const i_t p_y0, const i_t p_y1 )
{
  /* TODO :implement later */

  ev3_lcd_draw_line(p_x0,p_y0,p_x1,p_y1);

}


/*
 * Bridge:  lcd_draw_string
 */
void
EV3B_lcd_draw_string( c_t p_string[ESCHER_SYS_MAX_STRING_LEN], const i_t p_x, const i_t p_y )
{

  ev3_lcd_draw_string(p_string, p_x, p_y);

}


/*
 * Bridge:  lcd_fill_rect
 */
void
EV3B_lcd_fill_rect( const lcdcolor_t p_color, const i_t p_h, const i_t p_w, const i_t p_x, const i_t p_y )
{
  /* Replace/Insert your implementation code here... */
  ev3_lcd_fill_rect(p_x,p_y,p_w,p_h,p_color);

}


/*
 * Bridge:  lcd_set_font
 */
void
EV3B_lcd_set_font( const lcdfont_t p_font )
{
  /* Replace/Insert your implementation code here... */
  ev3_lcd_set_font(p_font);

}

void EV3B_bluetooth_write( c_t str[ESCHER_SYS_MAX_STRING_LEN] )
{
  serial_wri_dat(SIO_PORT_BT,str,strlen(str)+1);
}

c_t * EV3B_int_to_str( c_t str[ESCHER_SYS_MAX_STRING_LEN], const i_t val)
{
  sprintf(str,"%d",val);
  return str;
}



