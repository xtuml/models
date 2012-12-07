/*----------------------------------------------------------------------------
 * File:  GUI_GuiBridge_bridge.cpp
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Graphical User Interface (GuiBridge)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSsysc_sys_types.h"
#include "GUI.h"
#include "GUI_GuiBridge_bridge.h"
#include "socketome.h"
#include <string.h>
#define SIGNAL_NO_SET_DATA 0
#define SIGNAL_NO_SET_TIME 1

/*
 * Bridge:  feedSetTargetPressedEvent
 */
void
GUI_GuiBridge::feedSetTargetPressedEvent( GUI * thismodule, Escher_xtUMLEvent_t * p_evt)
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedModePressedEvent
 */
void
GUI_GuiBridge::feedModePressedEvent( GUI * thismodule, Escher_xtUMLEvent_t * p_evt)
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedLightPressedEvent
 */
void
GUI_GuiBridge::feedLightPressedEvent( GUI * thismodule, Escher_xtUMLEvent_t * p_evt)
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedLapResetPressedEvent
 */
void
GUI_GuiBridge::feedLapResetPressedEvent( GUI * thismodule, Escher_xtUMLEvent_t * p_evt)
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedStartStopPressedEvent
 */
void
GUI_GuiBridge::feedStartStopPressedEvent( GUI * thismodule, Escher_xtUMLEvent_t * p_evt)
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  setData
 */
void
GUI_GuiBridge::setData( GUI * thismodule, i_t p_unit, r4_t p_value)
{
  char buf[50];
  sprintf(buf, "%d,%f,%d", SIGNAL_NO_SET_DATA, p_value, p_unit );
  Escher_socket_send( buf, strlen( buf ) );
}


/*
 * Bridge:  setTime
 */
void
GUI_GuiBridge::setTime( GUI * thismodule, i_t p_time)
{
  char buf[50];
  sprintf(buf, "%d,%d", SIGNAL_NO_SET_TIME, p_time);
  Escher_socket_send( buf, strlen( buf ) );
}


/*
 * Bridge:  connect
 */
void
GUI_GuiBridge::connect( GUI * thismodule)
{
  Escher_socket_init( "127.0.0.1", 2003 );
}
 

/*
 * Bridge:  sendModePressed
 */
void
GUI_GuiBridge::sendModePressed( GUI * thismodule)
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::modePressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::modePressed()" );
  thismodule->UI->UIif_modePressed();
  }
}


/*
 * Bridge:  sendLightPressed
 */
void
GUI_GuiBridge::sendLightPressed( GUI * thismodule)
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::lightPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::lightPressed()" );
  thismodule->UI->UIif_lightPressed();
  }
}


/*
 * Bridge:  sendLapResetPressed
 */
void
GUI_GuiBridge::sendLapResetPressed( GUI * thismodule)
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::lapResetPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::lapResetPressed()" );
  thismodule->UI->UIif_lapResetPressed();
  }
}


/*
 * Bridge:  sendStartStopPressed
 */
void
GUI_GuiBridge::sendStartStopPressed( GUI * thismodule)
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::startStopPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::startStopPressed()" );
  thismodule->UI->UIif_startStopPressed();
  }
}


/*
 * Bridge:  sendTargetPressed
 */
void
GUI_GuiBridge::sendTargetPressed( GUI * thismodule)
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::setTargetPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::setTargetPressed()" );
  thismodule->UI->UIif_setTargetPressed();
  }
}


/*
 * Bridge:  receive
 */
void
GUI_GuiBridge::receive( GUI * thismodule)
{
  char * b;
  while ( ( b = Escher_socket_receive() ) > 0 ) {
    switch ( b[0] ) {
    case '0':
      thismodule->UI->UIif_startStopPressed();
      break;
    case '1':
      thismodule->UI->UIif_setTargetPressed();
      break;
    case '2':
      thismodule->UI->UIif_lapResetPressed();
      break;
    case '3':
      thismodule->UI->UIif_lightPressed();
      break;
    case '4':
      thismodule->UI->UIif_modePressed();
      break;
    }
  }
}


