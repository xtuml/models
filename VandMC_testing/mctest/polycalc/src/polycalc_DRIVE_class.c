/*----------------------------------------------------------------------------
 * File:  polycalc_DRIVE_class.c
 *
 * Class:       disk drive  (DRIVE)
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
polycalc_DRIVE_op_dispose( polycalc_DRIVE * self)
{
  polycalc_CD * cd=0;
  /* SELECT one cd RELATED BY self->CD[R200] */
  cd = 0;
  if ( ( 0 != self ) && ( polycalc_CD_CLASS_NUMBER == self->R200_object_id ) )  cd = ( 0 != self ) ? (polycalc_CD *) self->R200_subtype : 0;
  /* IF ( empty cd ) */
  if ( ( 0 == cd ) ) {
    polycalc_DVD * dvd=0;
    /* SELECT one dvd RELATED BY self->DVD[R200] */
    dvd = 0;
    if ( ( 0 != self ) && ( polycalc_DVD_CLASS_NUMBER == self->R200_object_id ) )    dvd = ( 0 != self ) ? (polycalc_DVD *) self->R200_subtype : 0;
    /* IF ( not_empty dvd ) */
    if ( ( 0 != dvd ) ) {
      /* UNRELATE dvd FROM self ACROSS R200 */
      polycalc_DVD_R200_Unlink( self, dvd );
      /* DELETE OBJECT INSTANCE dvd */
      if ( 0 == dvd ) {
        XTUML_EMPTY_HANDLE_TRACE( "DVD", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) dvd, polycalc_DOMAIN_ID, polycalc_DVD_CLASS_NUMBER );
    }
  }
  else {
    /* UNRELATE cd FROM self ACROSS R200 */
    polycalc_CD_R200_Unlink( self, cd );
    /* DELETE OBJECT INSTANCE cd */
    if ( 0 == cd ) {
      XTUML_EMPTY_HANDLE_TRACE( "CD", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) cd, polycalc_DOMAIN_ID, polycalc_CD_CLASS_NUMBER );
  }
  /* DELETE OBJECT INSTANCE self */
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "DRIVE", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, polycalc_DOMAIN_ID, polycalc_DRIVE_CLASS_NUMBER );
}

/*
 * RELATE LOCATION TO DRIVE ACROSS R100
 */
void
polycalc_DRIVE_R100_Link( polycalc_LOCATION * supertype, polycalc_DRIVE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DRIVE", "polycalc_DRIVE_R100_Link" );
    return;
  }
  /* Optimized linkage for DRIVE->LOCATION[R100] */
  subtype->LOCATION_R100 = supertype;
  /* Optimized linkage for LOCATION->DRIVE[R100] */
  supertype->R100_subtype = subtype;
  supertype->R100_object_id = polycalc_DRIVE_CLASS_NUMBER;
}


/*
 * UNRELATE LOCATION FROM DRIVE ACROSS R100
 */
void
polycalc_DRIVE_R100_Unlink( polycalc_LOCATION * supertype, polycalc_DRIVE * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DRIVE", "polycalc_DRIVE_R100_Unlink" );
    return;
  }
  subtype->LOCATION_R100 = 0;
  supertype->R100_subtype = 0;
  supertype->R100_object_id = 0;
}


/* Accessors to DRIVE[R200] subtypes */


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      disk drive  (DRIVE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s polycalc_DRIVE_container[ polycalc_DRIVE_MAX_EXTENT_SIZE ];
static polycalc_DRIVE polycalc_DRIVE_instances[ polycalc_DRIVE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_polycalc_DRIVE_extent = {
  {0}, {0}, &polycalc_DRIVE_container[ 0 ],
  (Escher_iHandle_t) &polycalc_DRIVE_instances,
  sizeof( polycalc_DRIVE ), polycalc_DRIVE_STATE_1, polycalc_DRIVE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      disk drive  (DRIVE)
 * Component:  polycalc
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [spinning up]
 */
static void polycalc_DRIVE_act1( polycalc_DRIVE *, const Escher_xtUMLEvent_t * const );
static void
polycalc_DRIVE_act1( polycalc_DRIVE * self, const Escher_xtUMLEvent_t * const event )
{
  /* LOG::LogInfo( message:drive spinning up ) */
  LOG_LogInfo( "drive spinning up" );
}


const Escher_xtUMLEventConstant_t polycalc_DRIVEevent_LOCATION_PE3c = {
  polycalc_DOMAIN_ID, polycalc_DRIVE_CLASS_NUMBER, POLYCALC_DRIVEEVENT_LOCATION_PE3NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };


/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t polycalc_DRIVE_StateEventMatrix[ 1 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  polycalc_DRIVE_STATE_1 (spinning up) */
  { polycalc_DRIVE_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t polycalc_DRIVE_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) polycalc_DRIVE_act1  /* spinning up */
  };

/*
 * instance state machine event dispatching
 */
void
polycalc_DRIVE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 1 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = polycalc_DRIVE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 1 ) {
        /* Update the current state and execute the state action.  */
        instance->current_state = next_state;
        ( *polycalc_DRIVE_acts[ next_state ] )( instance, event );
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}

