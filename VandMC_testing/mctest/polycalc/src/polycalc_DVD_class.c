/*----------------------------------------------------------------------------
 * File:  polycalc_DVD_class.c
 *
 * Class:       video disc drive  (DVD)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"


/*
 * RELATE DRIVE TO DVD ACROSS R200
 */
void
polycalc_DVD_R200_Link( polycalc_DRIVE * supertype, polycalc_DVD * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVD", "polycalc_DVD_R200_Link" );
    return;
  }
  /* Optimized linkage for DVD->DRIVE[R200] */
  subtype->DRIVE_R200 = supertype;
  /* Optimized linkage for DRIVE->DVD[R200] */
  supertype->R200_subtype = subtype;
  supertype->R200_object_id = polycalc_DVD_CLASS_NUMBER;
}


/*
 * UNRELATE DRIVE FROM DVD ACROSS R200
 */
void
polycalc_DVD_R200_Unlink( polycalc_DRIVE * supertype, polycalc_DVD * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVD", "polycalc_DVD_R200_Unlink" );
    return;
  }
  subtype->DRIVE_R200 = 0;
  supertype->R200_subtype = 0;
  supertype->R200_object_id = 0;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_DVD_container[ polycalc_DVD_MAX_EXTENT_SIZE ];
static polycalc_DVD polycalc_DVD_instances[ polycalc_DVD_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_DVD_extent = {
  {0}, {0}, &polycalc_DVD_container[ 0 ],
  (Escher_iHandle_t) &polycalc_DVD_instances,
  sizeof( polycalc_DVD ), polycalc_DVD_STATE_1, polycalc_DVD_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      video disc drive  (DVD)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [mounting dvd]
 */
static void polycalc_DVD_act1( polycalc_DVD *, const Escher_xtUMLEvent_t * const );
static void
polycalc_DVD_act1( polycalc_DVD * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_LOCATION * location = 0; /* location (LOCATION) */
 
  /* LOG::LogInfo( message:'dvd mounting' ) */
  LOG_LogInfo( "dvd mounting" );
  /* SELECT one location RELATED BY self->DRIVE[R200]->LOCATION[R100] */
  location = 0;
  {  if ( 0 != self ) {
  polycalc_DRIVE * DRIVE_R200 = (polycalc_DRIVE *) self->DRIVE_R200;
  if ( 0 != DRIVE_R200 ) {
  location = DRIVE_R200->LOCATION_R100;
}}}
  /* GENERATE LOCATION1:mounted() TO location */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( location, &polycalc_LOCATIONevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [deinstalling]
 */
static void polycalc_DVD_act2( polycalc_DVD *, const Escher_xtUMLEvent_t * const );
static void
polycalc_DVD_act2( polycalc_DVD * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PORTAL * portal = 0; /* portal (PORTAL) */
 
  /* LOG::LogInfo( message:'deinstalling (received remove event)' ) */
  LOG_LogInfo( "deinstalling (received remove event)" );
  /* SELECT one portal RELATED BY self->DRIVE[R200]->LOCATION[R100]->PORTAL[R300] */
  portal = 0;
  {  if ( 0 != self ) {
  polycalc_DRIVE * DRIVE_R200 = (polycalc_DRIVE *) self->DRIVE_R200;
  if ( 0 != DRIVE_R200 ) {
  polycalc_LOCATION * LOCATION_R100 = (polycalc_LOCATION *) DRIVE_R200->LOCATION_R100;
  if ( 0 != LOCATION_R100 ) {
  portal = LOCATION_R100->PORTAL_R300;
}}}}
  /* GENERATE PORTAL2:removed() TO portal */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( portal, &polycalc_PORTALevent2c );
    Escher_SendEvent( e );
  }
}

const Escher_xtUMLEventConstant_t polycalc_DVDevent_LOCATION_PE2c = {
  polycalc_DOMAIN_ID, polycalc_DVD_CLASS_NUMBER, POLYCALC_DVDEVENT_LOCATION_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t polycalc_DVDevent_PORTAL_PE1c = {
  polycalc_DOMAIN_ID, polycalc_DVD_CLASS_NUMBER, POLYCALC_DVDEVENT_PORTAL_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_DVD_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_DVD_STATE_1 (mounting dvd) */
  { polycalc_DVD_STATE_1, polycalc_DVD_STATE_2 },
  /* row 2:  polycalc_DVD_STATE_2 (deinstalling) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_DVD_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_DVD_act1,  /* mounting dvd */
    (StateAction_t) polycalc_DVD_act2  /* deinstalling */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_DVD_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_DVD_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *polycalc_DVD_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}


