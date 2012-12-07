/*----------------------------------------------------------------------------
 * File:  GUI_UI_class.h
 *
 * Class:       UI  (UI)
 * Component:   GUI
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef GUI_UI_CLASS_H
#define GUI_UI_CLASS_H



class GUI; // forward reference
/*
 * Structural representation of application analysis class:
 *   UI  (UI)
 */
class GUI_UI {
  public:

  /* application analysis class attributes */

  static void GUI_UI_op_connect(  GUI *);


};

#define GUI_UI_MAX_EXTENT_SIZE 200
extern sys_sets::Escher_Extent_t pG_GUI_UI_extent;

/*
 * class-based event:  UI_A3:'setTargetPressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_UI_CBevent3;
extern const Escher_xtUMLEventConstant_t GUI_UI_CBevent3c;

/*
 * class-based event:  UI_A4:'startStopPressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_UI_CBevent4;
extern const Escher_xtUMLEventConstant_t GUI_UI_CBevent4c;

/*
 * class-based event:  UI_A5:'lapResetPressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_UI_CBevent5;
extern const Escher_xtUMLEventConstant_t GUI_UI_CBevent5c;

/*
 * class-based event:  UI_A6:'lightPressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_UI_CBevent6;
extern const Escher_xtUMLEventConstant_t GUI_UI_CBevent6c;

/*
 * class-based event:  UI_A7:'modePressed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} GUI_UI_CBevent7;
extern const Escher_xtUMLEventConstant_t GUI_UI_CBevent7c;

/*
 * union of events targeted towards 'UI' state machine
 */
typedef union {
  GUI_UI_CBevent3 ui31;  
  GUI_UI_CBevent4 ui42;  
  GUI_UI_CBevent5 ui53;  
  GUI_UI_CBevent6 ui64;  
  GUI_UI_CBevent7 ui75;  
} GUI_UI_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define GUI_UI_CB_STATE_1 1  /* state [1]:  (running) */

/*
 * enumeration of state model event numbers
 */
#define GUI_UI_CBEVENT3NUM 0  /* UI_A3:'setTargetPressed' */
#define GUI_UI_CBEVENT4NUM 1  /* UI_A4:'startStopPressed' */
#define GUI_UI_CBEVENT5NUM 2  /* UI_A5:'lapResetPressed' */
#define GUI_UI_CBEVENT6NUM 3  /* UI_A6:'lightPressed' */
#define GUI_UI_CBEVENT7NUM 4  /* UI_A7:'modePressed' */

extern void GUI_UI_CBDispatch( Escher_xtUMLEvent_t * );




#endif  /* GUI_UI_CLASS_H */


