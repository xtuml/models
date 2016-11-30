/*----------------------------------------------------------------------------
 * File:  monitor_patient_class.c
 *
 * Class:       patient  (patient)
 * Component:   monitor
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "monitor_classes.h"

/*
 * class operation:  init
 */
void
monitor_patient_op_init( const i_t p_age, const capssys_gender_t p_gender, const i_t p_identifier, c_t p_name[ESCHER_SYS_MAX_STRING_LEN], const i_t p_weight )
{
  monitor_vitalsign * O2saturation;monitor_vitalsign * pulse;monitor_patient * patient=0;
  /* SELECT any patient FROM INSTANCES OF patient WHERE ( SELECTED.identifier == PARAM.identifier ) */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any patient FROM INSTANCES OF patient WHERE ( SELECTED.identifier == PARAM.identifier )" );
  patient = 0;
  { monitor_patient * selected;
    Escher_Iterator_s iterpatientmonitor_patient;
    Escher_IteratorReset( &iterpatientmonitor_patient, &pG_monitor_patient_extent.active );
    while ( (selected = (monitor_patient *) Escher_IteratorNext( &iterpatientmonitor_patient )) != 0 ) {
      if ( ( selected->identifier == p_identifier ) ) {
        patient = selected;
        break;
      }
    }
  }
  /* IF ( empty patient ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty patient )" );
  if ( ( 0 == patient ) ) {
    /* CREATE OBJECT INSTANCE patient OF patient */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE patient OF patient" );
    patient = (monitor_patient *) Escher_CreateInstance( monitor_DOMAIN_ID, monitor_patient_CLASS_NUMBER );
  }
  /* ASSIGN patient.identifier = PARAM.identifier */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN patient.identifier = PARAM.identifier" );
  patient->identifier = p_identifier;
  /* ASSIGN patient.name = PARAM.name */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN patient.name = PARAM.name" );
  Escher_strcpy( patient->name, p_name );
  /* ASSIGN patient.age = PARAM.age */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN patient.age = PARAM.age" );
  patient->age = p_age;
  /* ASSIGN patient.gender = PARAM.gender */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN patient.gender = PARAM.gender" );
  patient->gender = p_gender;
  /* ASSIGN patient.weight = PARAM.weight */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN patient.weight = PARAM.weight" );
  patient->weight = p_weight;
  /* ASSIGN O2saturation = O2saturation::init() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN O2saturation = O2saturation::init()" );
  O2saturation = monitor_O2saturation_op_init();
  /* RELATE patient TO O2saturation ACROSS R1 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE patient TO O2saturation ACROSS R1" );
  monitor_vitalsign_R1_Link_has( patient, O2saturation );
  /* ASSIGN pulse = pulse::init() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN pulse = pulse::init()" );
  pulse = monitor_pulse_op_init();
  /* RELATE patient TO pulse ACROSS R1 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE patient TO pulse ACROSS R1" );
  monitor_vitalsign_R1_Link_has( patient, pulse );
  /* GENERATE patient8:setup() TO patient */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE patient8:setup() TO patient" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( patient, &monitor_patientevent8c );
    Escher_SendEvent( e );
  }

}

/*
 * class operation:  cleanup
 */
void
monitor_patient_op_cleanup()
{
  monitor_patient * patient=0;Escher_ObjectSet_s patients_space={0}; Escher_ObjectSet_s * patients = &patients_space;
  /* SEND pulsox::off() */
  XTUML_OAL_STMT_TRACE( 1, "SEND pulsox::off()" );
  monitor_pulsox_off();
  /* SELECT many patients FROM INSTANCES OF patient */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many patients FROM INSTANCES OF patient" );
  Escher_CopySet( patients, &pG_monitor_patient_extent.active );
  /* FOR EACH patient IN patients */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH patient IN patients" );
  { Escher_Iterator_s iterpatient;
  monitor_patient * iipatient;
  Escher_IteratorReset( &iterpatient, patients );
  while ( (iipatient = (monitor_patient *)Escher_IteratorNext( &iterpatient )) != 0 ) {
    patient = iipatient; {
    monitor_vitalsign * vitalsign=0;Escher_ObjectSet_s vitalsigns_space={0}; Escher_ObjectSet_s * vitalsigns = &vitalsigns_space;
    /* SELECT many vitalsigns RELATED BY patient->vitalsign[R1] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT many vitalsigns RELATED BY patient->vitalsign[R1]" );
    Escher_ClearSet( vitalsigns );
    if ( 0 != patient ) {
      Escher_CopySet( vitalsigns, &patient->vitalsign_R1_has );
    }
    /* FOR EACH vitalsign IN vitalsigns */
    XTUML_OAL_STMT_TRACE( 2, "FOR EACH vitalsign IN vitalsigns" );
    { Escher_Iterator_s itervitalsign;
    monitor_vitalsign * iivitalsign;
    Escher_IteratorReset( &itervitalsign, vitalsigns );
    while ( (iivitalsign = (monitor_vitalsign *)Escher_IteratorNext( &itervitalsign )) != 0 ) {
      vitalsign = iivitalsign; {
      /* UNRELATE patient FROM vitalsign ACROSS R1 */
      XTUML_OAL_STMT_TRACE( 3, "UNRELATE patient FROM vitalsign ACROSS R1" );
      monitor_vitalsign_R1_Unlink_has( patient, vitalsign );
      /* DELETE OBJECT INSTANCE vitalsign */
      XTUML_OAL_STMT_TRACE( 3, "DELETE OBJECT INSTANCE vitalsign" );
      if ( 0 == vitalsign ) {
        XTUML_EMPTY_HANDLE_TRACE( "vitalsign", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) vitalsign, monitor_DOMAIN_ID, monitor_vitalsign_CLASS_NUMBER );
    }}}
    /* DELETE OBJECT INSTANCE patient */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE patient" );
    if ( 0 == patient ) {
      XTUML_EMPTY_HANDLE_TRACE( "patient", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) patient, monitor_DOMAIN_ID, monitor_patient_CLASS_NUMBER );
    Escher_ClearSet( vitalsigns ); 
  }}}
  Escher_ClearSet( patients );

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      patient  (patient)
 * Component:  monitor
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s monitor_patient_container[ monitor_patient_MAX_EXTENT_SIZE ];
static monitor_patient monitor_patient_instances[ monitor_patient_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_monitor_patient_extent = {
  {0}, {0}, &monitor_patient_container[ 0 ],
  (Escher_iHandle_t) &monitor_patient_instances,
  sizeof( monitor_patient ), monitor_patient_STATE_1, monitor_patient_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      patient  (patient)
 * Component:  monitor
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [unsedated]
 */
static void monitor_patient_act1( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act1( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND pulsox::on() */
  XTUML_OAL_STMT_TRACE( 1, "SEND pulsox::on()" );
  monitor_pulsox_on();
  /* SEND heart::on() */
  XTUML_OAL_STMT_TRACE( 1, "SEND heart::on()" );
  monitor_heart_on();
  /* SEND cuff::on() */
  XTUML_OAL_STMT_TRACE( 1, "SEND cuff::on()" );
  monitor_cuff_on();
  /* SEND arm::on() */
  XTUML_OAL_STMT_TRACE( 1, "SEND arm::on()" );
  monitor_arm_on();
}

/*
 * State 2:  [loading]
 */
static void monitor_patient_act2( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act2( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [sedated]
 */
static void monitor_patient_act3( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act3( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 4:  [sinking]
 */
static void monitor_patient_act4( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act4( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 5:  [over sedated]
 */
static void monitor_patient_act5( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act5( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 6:  [recovering]
 */
static void monitor_patient_act6( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act6( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 7:  [aggitated]
 */
static void monitor_patient_act7( monitor_patient *, const Escher_xtUMLEvent_t * const );
static void
monitor_patient_act7( monitor_patient * self, const Escher_xtUMLEvent_t * const event )
{
}








const Escher_xtUMLEventConstant_t monitor_patientevent8c = {
  monitor_DOMAIN_ID, monitor_patient_CLASS_NUMBER, MONITOR_PATIENTEVENT8NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t monitor_patient_StateEventMatrix[ 7 + 1 ][ 1 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN },
  /* row 1:  monitor_patient_STATE_1 (unsedated) */
  { monitor_patient_STATE_1 },
  /* row 2:  monitor_patient_STATE_2 (loading) */
  { EVENT_CANT_HAPPEN },
  /* row 3:  monitor_patient_STATE_3 (sedated) */
  { EVENT_CANT_HAPPEN },
  /* row 4:  monitor_patient_STATE_4 (sinking) */
  { EVENT_CANT_HAPPEN },
  /* row 5:  monitor_patient_STATE_5 (over sedated) */
  { EVENT_CANT_HAPPEN },
  /* row 6:  monitor_patient_STATE_6 (recovering) */
  { EVENT_CANT_HAPPEN },
  /* row 7:  monitor_patient_STATE_7 (aggitated) */
  { EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t monitor_patient_acts[ 8 ] = {
    (StateAction_t) 0,
    (StateAction_t) monitor_patient_act1,  /* unsedated */
    (StateAction_t) monitor_patient_act2,  /* loading */
    (StateAction_t) monitor_patient_act3,  /* sedated */
    (StateAction_t) monitor_patient_act4,  /* sinking */
    (StateAction_t) monitor_patient_act5,  /* over sedated */
    (StateAction_t) monitor_patient_act6,  /* recovering */
    (StateAction_t) monitor_patient_act7  /* aggitated */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 8 ] = {
    "",
    "unsedated",
    "loading",
    "sedated",
    "sinking",
    "over sedated",
    "recovering",
    "aggitated"
  };

/*
 * instance state machine event dispatching
 */
void
monitor_patient_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 7 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = monitor_patient_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 7 ) {
        STATE_TXN_START_TRACE( "patient", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *monitor_patient_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "patient", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "patient", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


