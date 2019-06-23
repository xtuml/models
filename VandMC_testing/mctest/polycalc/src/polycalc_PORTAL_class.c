/*----------------------------------------------------------------------------
 * File:  polycalc_PORTAL_class.c
 *
 * Class:       portal  (PORTAL)
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
polycalc_PORTAL_op_dispose( polycalc_PORTAL * self)
{
  polycalc_LOCATION * location=0;
  /* SELECT one location RELATED BY self->LOCATION[R300] */
  location = 0;
  if ( ( 0 != self ) && ( polycalc_LOCATION_CLASS_NUMBER == self->R300_object_id ) )  location = ( 0 != self ) ? (polycalc_LOCATION *) self->R300_subtype : 0;
  /* IF ( not_empty location ) */
  if ( ( 0 != location ) ) {
    /* UNRELATE self FROM location ACROSS R300 */
    polycalc_LOCATION_R300_Unlink( self, location );
    /* location.dispose() */
    polycalc_LOCATION_op_dispose( location );
  }
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "PORTAL", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, polycalc_DOMAIN_ID, polycalc_PORTAL_CLASS_NUMBER );
}

/* Accessors to PORTAL[R300] subtypes */


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      portal  (PORTAL)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_PORTAL_container[ polycalc_PORTAL_MAX_EXTENT_SIZE ];
static polycalc_PORTAL polycalc_PORTAL_instances[ polycalc_PORTAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_PORTAL_extent = {
  {0}, {0}, &polycalc_PORTAL_container[ 0 ],
  (Escher_iHandle_t) &polycalc_PORTAL_instances,
  sizeof( polycalc_PORTAL ), polycalc_PORTAL_STATE_1, polycalc_PORTAL_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      portal  (PORTAL)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [removed]
 */
static void polycalc_PORTAL_act1( polycalc_PORTAL *, const Escher_xtUMLEvent_t * const );
static void
polycalc_PORTAL_act1( polycalc_PORTAL * self, const Escher_xtUMLEvent_t * const event )
{
  /* GENERATE LOCATION_A3:complete() TO LOCATION CLASS */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &polycalc_LOCATION_CBevent3c );
    Escher_SendEvent( e );
  }
  /* LOG::LogSuccess( message:removal complete ) */
  LOG_LogSuccess( "removal complete" );
}

const Escher_xtUMLEventConstant_t polycalc_PORTALevent1c = {
  polycalc_DOMAIN_ID, polycalc_PORTAL_CLASS_NUMBER, POLYCALC_PORTALEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };
const Escher_xtUMLEventConstant_t polycalc_PORTALevent2c = {
  polycalc_DOMAIN_ID, polycalc_PORTAL_CLASS_NUMBER, POLYCALC_PORTALEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_PORTAL_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_PORTAL_STATE_1 (removed) */
  { polycalc_PORTAL_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_PORTAL_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_PORTAL_act1  /* removed */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_PORTAL_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    polycalc_PORTAL_R300PolymorphicEvent( (polycalc_PORTAL *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_PORTAL_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_PORTAL_acts[ next_state ] )( instance, event );
      } else {
        /* empty else */
      }
    }
  }
}
/*
 * Transfer a polymorphic event down the R300 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
polycalc_PORTAL_R300PolymorphicEvent( const polycalc_PORTAL * const p_portal, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_portal->R300_subtype )
  switch ( p_portal->R300_object_id ) {
    case polycalc_LOCATION_CLASS_NUMBER:  /* location (LOCATION) */
      switch ( event_number ) {
        case POLYCALC_PORTALEVENT1NUM:  /* PORTAL1*'remove' */
          if ( 0 != ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_subtype )
          switch ( ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_object_id ) {
            case polycalc_DRIVE_CLASS_NUMBER:  /* disk drive (DRIVE) */
              switch ( event_number ) {
                case POLYCALC_PORTALEVENT1NUM:  /* PORTAL1*'remove' */
                  if ( 0 != ((polycalc_DRIVE *) ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_subtype)->R200_subtype )
                  switch ( ((polycalc_DRIVE *) ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_subtype)->R200_object_id ) {
                    case polycalc_CD_CLASS_NUMBER:  /* compact disc drive (CD) */
                      switch ( event_number ) {
                        /* transition (or cant happen) events in subtype */
                        case POLYCALC_PORTALEVENT1NUM:  /* PORTAL1*'remove' */
                          event = Escher_ModifyxtUMLEvent( event, &polycalc_CDevent_PORTAL_PE1c );
                          SetEventTargetInstance( event, ((polycalc_DRIVE *) ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_subtype)->R200_subtype );
                          polycalc_CD_Dispatch( event );
                          break; /* after transition */
                      }
                      break;
                    case polycalc_DVD_CLASS_NUMBER:  /* video disc drive (DVD) */
                      switch ( event_number ) {
                        /* transition (or cant happen) events in subtype */
                        case POLYCALC_PORTALEVENT1NUM:  /* PORTAL1*'remove' */
                          event = Escher_ModifyxtUMLEvent( event, &polycalc_DVDevent_PORTAL_PE1c );
                          SetEventTargetInstance( event, ((polycalc_DRIVE *) ((polycalc_LOCATION *) p_portal->R300_subtype)->R100_subtype)->R200_subtype );
                          polycalc_DVD_Dispatch( event );
                          break; /* after transition */
                      }
                      break;
                    default:
                      UserEventCantHappenCallout( 0, 0, event_number );
                  }
              }
              break;
            case polycalc_TAPE_CLASS_NUMBER:  /* tape drive (TAPE) */
              switch ( event_number ) {
              }
              break;
            default:
              UserEventCantHappenCallout( 0, 0, event_number );
          }
      }
      break;
    default:
      UserEventCantHappenCallout( 0, 0, event_number );
  }
}

