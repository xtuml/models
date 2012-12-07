/*----------------------------------------------------------------------------
 * File:  GUI_GuiBridge_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Graphical User Interface (GuiBridge)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GUI_GUIBRIDGE_BRIDGE_H
#define GUI_GUIBRIDGE_BRIDGE_H



class GUI_GuiBridge {
  public:
  static void feedSetTargetPressedEvent( GUI *, Escher_xtUMLEvent_t * );
  static void feedModePressedEvent( GUI *, Escher_xtUMLEvent_t * );
  static void feedLightPressedEvent( GUI *, Escher_xtUMLEvent_t * );
  static void feedLapResetPressedEvent( GUI *, Escher_xtUMLEvent_t * );
  static void feedStartStopPressedEvent( GUI *, Escher_xtUMLEvent_t * );
  static void setData( GUI *, i_t, r4_t );
  static void setTime( GUI *, i_t );
  static void connect( GUI *);
  static void sendModePressed( GUI *);
  static void sendLightPressed( GUI *);
  static void sendLapResetPressed( GUI *);
  static void sendStartStopPressed( GUI *);
  static void sendTargetPressed( GUI *);
  static void receive( GUI *);
};


#endif   /* GUI_GUIBRIDGE_BRIDGE_H */
