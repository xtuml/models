/*----------------------------------------------------------------------------
 * File:  GUI_HEARTBEAT_class.h
 *
 * Class:       UI Heartbeat  (HEARTBEAT)
 * Component:   GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GUI_HEARTBEAT_CLASS_H
#define GUI_HEARTBEAT_CLASS_H



class GUI; // forward reference
/*
 * Structural representation of application analysis class:
 *   UI Heartbeat  (HEARTBEAT)
 */
class GUI_HEARTBEAT {
  public:
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */



};

#define GUI_HEARTBEAT_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_GUI_HEARTBEAT_extent;

/*
 * instance event:  HEARTBEAT1:'lubdub'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_HEARTBEATevent1;
extern const Escher_xtUMLEventConstant_t GUI_HEARTBEATevent1c;

/*
 * union of events targeted towards 'HEARTBEAT' state machine
 */
typedef union {
  GUI_HEARTBEATevent1 heartbeat11;  
} GUI_HEARTBEAT_Events_u;

/*
 * enumeration of state model states for class
 */
#define GUI_HEARTBEAT_STATE_1 1  /* state [1]:  (beating) */
/*
 * enumeration of state model event numbers
 */
#define GUI_HEARTBEATEVENT1NUM 0  /* HEARTBEAT1:'lubdub' */
extern void GUI_HEARTBEAT_Dispatch( Escher_xtUMLEvent_t * );



#endif  /* GUI_HEARTBEAT_CLASS_H */


