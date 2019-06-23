/*----------------------------------------------------------------------------
 * File:  polycalc_LOCATION_class.c
 *
 * Class:       location  (LOCATION)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "polycalc_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "polycalc_classes.h"

/*
 * instance operation:  dispose
 */
void
polycalc_LOCATION_op_dispose( polycalc_LOCATION * self)
{
  polycalc_TAPE * tape=0;
  /* SELECT one tape RELATED BY self->TAPE[R100] */
  tape = 0;
  if ( ( 0 != self ) && ( polycalc_TAPE_CLASS_NUMBER == self->R100_object_id ) )  tape = ( 0 != self ) ? (polycalc_TAPE *) self->R100_subtype : 0;
  /* IF ( empty tape ) */
  if ( ( 0 == tape ) ) {
    polycalc_DRIVE * drive=0;
    /* SELECT one drive RELATED BY self->DRIVE[R100] */
    drive = 0;
    if ( ( 0 != self ) && ( polycalc_DRIVE_CLASS_NUMBER == self->R100_object_id ) )    drive = ( 0 != self ) ? (polycalc_DRIVE *) self->R100_subtype : 0;
    /* IF ( not_empty drive ) */
    if ( ( 0 != drive ) ) {
      /* UNRELATE drive FROM self ACROSS R100 */
      polycalc_DRIVE_R100_Unlink( self, drive );
      /* drive.dispose() */
      polycalc_DRIVE_op_dispose( drive );
    }
  }
  else {
    /* UNRELATE tape FROM self ACROSS R100 */
    polycalc_TAPE_R100_Unlink( self, tape );
    /* DELETE OBJECT INSTANCE tape */
    if ( 0 == tape ) {
      XTUML_EMPTY_HANDLE_TRACE( "TAPE", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) tape, polycalc_DOMAIN_ID, polycalc_TAPE_CLASS_NUMBER );
  }
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "LOCATION", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER );
}

/* Accessors to LOCATION[R100] subtypes */


/*
 * RELATE PORTAL TO LOCATION ACROSS R300
 */
void
polycalc_LOCATION_R300_Link( polycalc_PORTAL * supertype, polycalc_LOCATION * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LOCATION", "polycalc_LOCATION_R300_Link" );
    return;
  }
  /* Optimized linkage for LOCATION->PORTAL[R300] */
  subtype->PORTAL_R300 = supertype;
  /* Optimized linkage for PORTAL->LOCATION[R300] */
  supertype->R300_subtype = subtype;
  supertype->R300_object_id = polycalc_LOCATION_CLASS_NUMBER;
}


/*
 * UNRELATE PORTAL FROM LOCATION ACROSS R300
 */
void
polycalc_LOCATION_R300_Unlink( polycalc_PORTAL * supertype, polycalc_LOCATION * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "LOCATION", "polycalc_LOCATION_R300_Unlink" );
    return;
  }
  subtype->PORTAL_R300 = 0;
  supertype->R300_subtype = 0;
  supertype->R300_object_id = 0;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      location  (LOCATION)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_LOCATION_container[ polycalc_LOCATION_MAX_EXTENT_SIZE ];
static polycalc_LOCATION polycalc_LOCATION_instances[ polycalc_LOCATION_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_LOCATION_extent = {
  {0}, {0}, &polycalc_LOCATION_container[ 0 ],
  (Escher_iHandle_t) &polycalc_LOCATION_instances,
  sizeof( polycalc_LOCATION ), polycalc_LOCATION_STATE_1, polycalc_LOCATION_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      location  (LOCATION)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [waiting]
 */
static void polycalc_LOCATION_act1( polycalc_LOCATION *, const Escher_xtUMLEvent_t * const );
static void
polycalc_LOCATION_act1( polycalc_LOCATION * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [mounted]
 */
static void polycalc_LOCATION_act2( polycalc_LOCATION *, const Escher_xtUMLEvent_t * const );
static void
polycalc_LOCATION_act2( polycalc_LOCATION * self, const Escher_xtUMLEvent_t * const event )
{
  /* LOG::LogSuccess( message:location mount complete ) */
  LOG_LogSuccess( "location mount complete" );
  /* GENERATE LOCATION_A2:done() TO LOCATION CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &polycalc_LOCATION_CBevent2c );
    Escher_SendSelfEvent( e );
  }
}

/*
 * State 1:  [first test]
 */
static void polycalc_LOCATION_CB_act1( polycalc_LOCATION *, const Escher_xtUMLEvent_t * const );
static void
polycalc_LOCATION_CB_act1( polycalc_LOCATION * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PORTAL * portal;polycalc_DVD * dvd;polycalc_DRIVE * drive;polycalc_LOCATION * location;
  /* LOG::LogInfo( message:deep test started ) */
  LOG_LogInfo( "deep test started" );
  /* CREATE OBJECT INSTANCE location OF LOCATION */
  location = (polycalc_LOCATION *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER );
  /* ASSIGN location.x = 1 */
  ((polycalc_LOCATION *)xtUML_detect_empty_handle( location, "LOCATION", "location.x" ))->x = 1;
  /* ASSIGN location.y = 2 */
  ((polycalc_LOCATION *)xtUML_detect_empty_handle( location, "LOCATION", "location.y" ))->y = 2;
  /* ASSIGN location.z = 3 */
  ((polycalc_LOCATION *)xtUML_detect_empty_handle( location, "LOCATION", "location.z" ))->z = 3;
  /* CREATE OBJECT INSTANCE drive OF DRIVE */
  drive = (polycalc_DRIVE *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_DRIVE_CLASS_NUMBER );
  /* ASSIGN drive.capacity = 100 */
  ((polycalc_DRIVE *)xtUML_detect_empty_handle( drive, "DRIVE", "drive.capacity" ))->capacity = 100;
  /* CREATE OBJECT INSTANCE dvd OF DVD */
  dvd = (polycalc_DVD *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_DVD_CLASS_NUMBER );
  /* ASSIGN dvd.encryption = 7 */
  ((polycalc_DVD *)xtUML_detect_empty_handle( dvd, "DVD", "dvd.encryption" ))->encryption = 7;
  /* CREATE OBJECT INSTANCE portal OF PORTAL */
  portal = (polycalc_PORTAL *) Escher_CreateInstance( polycalc_DOMAIN_ID, polycalc_PORTAL_CLASS_NUMBER );
  /* RELATE portal TO location ACROSS R300 */
  polycalc_LOCATION_R300_Link( portal, location );
  /* RELATE dvd TO drive ACROSS R200 */
  polycalc_DVD_R200_Link( drive, dvd );
  /* RELATE drive TO location ACROSS R100 */
  polycalc_DRIVE_R100_Link( location, drive );
  /* GENERATE LOCATION2:mount() TO location */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( location, &polycalc_LOCATIONevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [removing portal]
 */
static void polycalc_LOCATION_CB_act2( polycalc_LOCATION *, const Escher_xtUMLEvent_t * const );
static void
polycalc_LOCATION_CB_act2( polycalc_LOCATION * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PORTAL * portal=0;
  /* SELECT any portal FROM INSTANCES OF PORTAL */
  portal = (polycalc_PORTAL *) Escher_SetGetAny( &pG_polycalc_PORTAL_extent.active );
  /* GENERATE PORTAL1:remove() TO portal */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( portal, &polycalc_PORTALevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [passed]
 */
static void polycalc_LOCATION_CB_act3( polycalc_LOCATION *, const Escher_xtUMLEvent_t * const );
static void
polycalc_LOCATION_CB_act3( polycalc_LOCATION * self, const Escher_xtUMLEvent_t * const event )
{
  polycalc_PORTAL * portal=0;
  /* SELECT any portal FROM INSTANCES OF PORTAL */
  portal = (polycalc_PORTAL *) Escher_SetGetAny( &pG_polycalc_PORTAL_extent.active );
  /* portal.dispose() */
  polycalc_PORTAL_op_dispose( portal );
  /* LOG::LogSuccess( message:deep test passed ) */
  LOG_LogSuccess( "deep test passed" );
}

const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent1c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER_CB, POLYCALC_LOCATION_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };
const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent2c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER_CB, POLYCALC_LOCATION_CBEVENT2NUM,
  ESCHER_IS_ASSIGNER_EVENT };
const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent3c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER_CB, POLYCALC_LOCATION_CBEVENT3NUM,
  ESCHER_IS_ASSIGNER_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_LOCATION_CB_StateEventMatrix[ 3 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_LOCATION_CB_STATE_1 (first test) */
  { polycalc_LOCATION_CB_STATE_1, polycalc_LOCATION_CB_STATE_2, EVENT_CANT_HAPPEN },
  /* row 2:  polycalc_LOCATION_CB_STATE_2 (removing portal) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, polycalc_LOCATION_CB_STATE_3 },
  /* row 3:  polycalc_LOCATION_CB_STATE_3 (passed) */
  { polycalc_LOCATION_CB_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_LOCATION_CB_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_LOCATION_CB_act1,  /* first test */
    (StateAction_t) polycalc_LOCATION_CB_act2,  /* removing portal */
    (StateAction_t) polycalc_LOCATION_CB_act3  /* passed */
  };

/*
 * class-based state machine event dispatching
 */
void
polycalc_LOCATION_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { polycalc_LOCATION_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = polycalc_LOCATION_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 3 ) {
    /* Update the current state and execute the state action.  */
    class_based_singleton.current_state = next_state;
    ( *polycalc_LOCATION_CB_acts[ next_state ] )( &class_based_singleton, event );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}

const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent1c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER, POLYCALC_LOCATIONEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };
const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent2c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER, POLYCALC_LOCATIONEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };
const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent3c = {
  polycalc_DOMAIN_ID, polycalc_LOCATION_CLASS_NUMBER, POLYCALC_LOCATIONEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_LOCATION_StateEventMatrix[ 2 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_LOCATION_STATE_1 (waiting) */
  { polycalc_LOCATION_STATE_2 },
  /* row 2:  polycalc_LOCATION_STATE_2 (mounted) */
  { EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_LOCATION_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_LOCATION_act1,  /* waiting */
    (StateAction_t) polycalc_LOCATION_act2  /* mounted */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_LOCATION_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_LOCATION_R100PolymorphicEvent( (polycalc_LOCATION *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_LOCATION_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_LOCATION_acts[ next_state ] )( instance, event );
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}
/*
 * Transfer a polymorphic event down the R100 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_LOCATION_R100PolymorphicEvent( const polycalc_LOCATION * const p_location, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_location->R100_subtype )
  switch ( p_location->R100_object_id ) {
    case polycalc_DRIVE_CLASS_NUMBER:  /* disk drive (DRIVE) */
      switch ( event_number ) {
        case POLYCALC_LOCATIONEVENT2NUM:  /* LOCATION2*'mount' */
          if ( 0 != ((polycalc_DRIVE *) p_location->R100_subtype)->R200_subtype )
          switch ( ((polycalc_DRIVE *) p_location->R100_subtype)->R200_object_id ) {
            case polycalc_CD_CLASS_NUMBER:  /* compact disc drive (CD) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case POLYCALC_LOCATIONEVENT2NUM:  /* LOCATION2*'mount' */
                  event = Escher_ModifyxtUMLEvent( event, &polycalc_CDevent_LOCATION_PE2c );
                  SetEventTargetInstance( event, ((polycalc_DRIVE *) p_location->R100_subtype)->R200_subtype );
                  polycalc_CD_Dispatch( event );
                  break; /* after transition */
              }
              break;
            case polycalc_DVD_CLASS_NUMBER:  /* video disc drive (DVD) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case POLYCALC_LOCATIONEVENT2NUM:  /* LOCATION2*'mount' */
                  event = Escher_ModifyxtUMLEvent( event, &polycalc_DVDevent_LOCATION_PE2c );
                  SetEventTargetInstance( event, ((polycalc_DRIVE *) p_location->R100_subtype)->R200_subtype );
                  polycalc_DVD_Dispatch( event );
                  break; /* after transition */
              }
              break;
            default:
              UserEventCantHappenCallout( 0, 0, event_number );
          }
        /* transition (or cant happen) events in subtype */
        case POLYCALC_LOCATIONEVENT3NUM:  /* LOCATION3*'spinup' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_DRIVEevent_LOCATION_PE3c );
          SetEventTargetInstance( event, p_location->R100_subtype );
          polycalc_DRIVE_Dispatch( event );
          break; /* after transition */
      }
      break;
    case polycalc_TAPE_CLASS_NUMBER:  /* tape drive (TAPE) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case POLYCALC_LOCATIONEVENT3NUM:  /* LOCATION3*'spinup' */
          event = Escher_ModifyxtUMLEvent( event, &polycalc_TAPEevent_LOCATION_PE3c );
          SetEventTargetInstance( event, p_location->R100_subtype );
          polycalc_TAPE_Dispatch( event );
          break; /* after transition */
      }
      break;
    default:
      UserEventCantHappenCallout( 0, 0, event_number );
  }
}

