/*----------------------------------------------------------------------------
 * File:  UI_GuiBridge_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Graphical User Interface (GuiBridge)
 * 
 * (C) Copyright 1998-2014 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "GPSWatch_sys_types.h"
#include "UI_classes.h"
#include "UI_GuiBridge_bridge.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>


/*
 * Bridge:  feedSetTargetPressedEvent
 */
void
UI_GuiBridge_feedSetTargetPressedEvent( Escher_xtUMLEvent_t * p_evt )
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedModePressedEvent
 */
void
UI_GuiBridge_feedModePressedEvent( Escher_xtUMLEvent_t * p_evt )
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedLightPressedEvent
 */
void
UI_GuiBridge_feedLightPressedEvent( Escher_xtUMLEvent_t * p_evt )
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedLapResetPressedEvent
 */
void
UI_GuiBridge_feedLapResetPressedEvent( Escher_xtUMLEvent_t * p_evt )
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  feedStartStopPressedEvent
 */
void
UI_GuiBridge_feedStartStopPressedEvent( Escher_xtUMLEvent_t * p_evt )
{
  /* Replace the following instructions with your implementation code.  */
  {
  }
}


/*
 * Bridge:  setData
 */
void
UI_GuiBridge_setData( i_t p_unit, r_t p_value )
{
}

/*
 * Bridge:  setIndicator
 */
void
UI_GuiBridge_setIndicator( i_t p_value )
{
}
/*
 * Bridge:  setTime
 */
void
UI_GuiBridge_setTime( i_t p_time )
{
}


/*
 * Bridge:  connect
 */
void
UI_GuiBridge_connect( void )
{
}
 

/*
 * Bridge:  sendModePressed
 */
void
UI_GuiBridge_sendModePressed( void )
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::modePressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::modePressed()" );
  UI_UI_modePressed();
  }
}


/*
 * Bridge:  sendLightPressed
 */
void
UI_GuiBridge_sendLightPressed( void )
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::lightPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::lightPressed()" );
  UI_UI_lightPressed();
  }
}


/*
 * Bridge:  sendLapResetPressed
 */
void
UI_GuiBridge_sendLapResetPressed( void )
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::lapResetPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::lapResetPressed()" );
  UI_UI_lapResetPressed();
  }
}


/*
 * Bridge:  sendStartStopPressed
 */
void
UI_GuiBridge_sendStartStopPressed( void )
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::startStopPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::startStopPressed()" );
  UI_UI_startStopPressed();
  }
}


/*
 * Bridge:  sendTargetPressed
 */
void
UI_GuiBridge_sendTargetPressed( void )
{
  /* Replace the following instructions with your implementation code.  */
  {
  /*  SEND UI::setTargetPressed() */
  XTUML_OAL_STMT_TRACE( 1, " SEND UI::setTargetPressed()" );
  UI_UI_setTargetPressed();
  }
}




