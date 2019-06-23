.//============================================================================
.// This archetype file contains functions for generating the structural
.// (state event matrix e.g., SEM) aspects of object state machines.
.//============================================================================
.//
.//
.//===========================================================================
.// Build information about the state machine event.
.//===========================================================================
.function GetMaxEventInfo
  .param inst_ref o_obj
  .param boolean is_ism
  .//
  .assign attr_number = 0
  .if ( is_ism )
    .select many event_set related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]->SM_EVT[R525]
    .assign attr_number = cardinality event_set
  .else
    .select many event_set related by o_obj->SM_ASM[R519]->SM_SM[R517]->SM_EVT[R502]
    .assign attr_number = cardinality event_set
  .end if
  .//
  .if ( attr_number != 0 )
    .// Decrement by one, since event enums start at zero.
    .assign attr_number = attr_number - 1
  .end if
.end function
.//
.//============================================================================
.// Return <body> the declaration (e.g., header file guts) of the
.// possible state enumerations for a state machine.
.// This function may be used for either an Instance State Model (ISM) or
.// Assigner State Model (ASM).
.//
.// Output Fragment Attributes:
.// <body> An ordered enumeration of the states in the state model.
.//
.// Predicates:
.// Attributes of SM_STATE.Order have been initialized (ascending).
.//============================================================================
.function GetStateEnumsFromStateSet
  .param inst_ref sm_sm
  .//
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .select one te_state related by te_sm->TE_STATE[R2100]
  .if ( not_empty te_state )
/*
 * enumeration of state model states for class
 */
    .while ( not_empty te_state )
#define ${te_state.enumerator} ${te_state.number}  /* state [$t{te_state.Numb}]:  (${te_state.Name}) */
      .select one te_state related by te_state->TE_STATE[R2101.'precedes']
    .end while
  .else
/* WARNING! No states defined for state model */
  .end if
  .//
.end function
.//
.//============================================================================
.// Return the enumeration of initial state of the state machine.
.//============================================================================
.function GetInstanceInitialStateEnum
  .param inst_ref o_obj
  .//
  .assign attr_result = "0"
  .select one ism related by o_obj->SM_ISM[R518]
  .if ( not_empty ism )
    .select any te_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]->TE_STATE[R2037] where (selected.Order == 0)
    .if ( not_empty te_state )
      .assign attr_result = te_state.enumerator
    .end if
  .end if
.end function
.//
.//============================================================================
.// Build enumeration (using #defines) defining event numbers.
.//============================================================================
.function CreateStateModelEventEnum
  .param inst_ref sm_sm
  .//
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .// get the locally used events first
  .select many te_evts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_EVT[R525]->TE_EVT[R2036]
  .assign attr_no_events = true
  .assign event_order = 0
  .if ( not_empty te_evts )
/*
 * enumeration of state model event numbers
 */
    .select one te_c related by te_sm->TE_CLASS[R2072]->TE_C[R2064]
    .assign attr_no_events = false
    .assign num_events = cardinality te_evts
    .assign event_count = 0
    .assign last_order = 0
    .while ( event_count < num_events )
      .for each te_evt in te_evts
        .if ( te_evt.Order > last_order )
          .assign last_order = te_evt.Order
        .end if
        .if ( ( te_evt.Order == event_count ) and ( te_evt.Used or te_c.OptDisabled ) )
          .select one sm_evt related by te_evt->SM_EVT[R2036]
          .assign event_comment = sm_evt.Drv_Lbl
          .if ( sm_evt.Mning != "" )
            .assign event_comment = "${sm_evt.Drv_Lbl}:'${sm_evt.Mning}'"
          .end if
#define ${te_evt.Enumerator} ${event_order}  /* ${event_comment} */
          .assign event_order = event_order + 1
          .break for
        .end if
      .end for
      .assign event_count = event_count + 1
    .end while
  .end if
  .//
  .select many poly_event_set related by sm_sm->SM_EVT[R502]->SM_PEVT[R525]->SM_EVT[R525]
  .if ( not_empty poly_event_set )

/*
 * Enumeration of polymorphic event numbers
 */
    .assign attr_no_events = false
    .for each event in poly_event_set
      .select one te_evt related by event->TE_EVT[R2036]
      .assign event_comment = event.Drv_Lbl
      .if ( event.Mning != "" )
        .assign event_comment = "${event.Drv_Lbl}:'${event.Mning}'"
      .end if
#define ${te_evt.Enumerator} ${event_order}  /* ${event_comment} */
      .assign event_order = event_order + 1
    .end for
  .end if
  .if ( attr_no_events == true )
/* note:  no events defined in state model */
  .end if
.end function
.//
.//============================================================================
.// Create the State Event Matrix (SEM) for a state model.
.//
.// The SEM provides an exhaustive mapping of current state and received event
.// combinations to the next state (if any). Each class state has an entry
.// in the SEM for each possible event that the object can receive.
.// If a particular state does not deal with a particular event then the state
.// action is assigned as either a _dont care_ or _cant happen_ (as assigned
.// in the analysis xtUML).
.// The Row Index of the SEM corresponds to the architecturally enumerated
.// current state of the object.  Row 0 is the uninitialized state
.// of the object, which services creation event transitions.
.// The Column Index of the SEM corresponds to the architecturally enumerated
.// event numbers of events that may be received by the state machine.
.//============================================================================
.function CreateStateEventMatrixTable
  .param inst_ref sm_sm
  .select any te_file from instances of TE_FILE
  .select any te_typemap from instances of TE_TYPEMAP
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .select one te_c related by te_sm->TE_CLASS[R2072]->TE_C[R2064]
  .// Watch out for incomplete xtUML models.
  .if ( (te_sm.num_states > 0) and (te_sm.num_events > 0) )
    .assign state_count = 0
    .select many te_evts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_EVT[R525]->TE_EVT[R2036] where ( selected.Used )
    .if ( te_c.OptDisabled )
      .select many te_evts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_EVT[R525]->TE_EVT[R2036]
    .end if
    .assign num_events = cardinality te_evts
    .select one te_state related by te_sm->TE_STATE[R2100]
    .//
    .// Create a row for the initial state (0).
    .invoke r = CreateStateEventMatrixRow( te_state, te_evts, state_count, num_events )
    .assign first_row = r.body
    .assign other_rows = ""
    .//
    .// Create a row for each real state in the SEM
    .while ( not_empty te_state )
      .assign state_count = state_count + 1
      .assign comment = "  /* row ${state_count}:  ${te_state.enumerator} (${te_state.Name}) */\n"
      .invoke r = CreateStateEventMatrixRow( te_state, te_evts, state_count, num_events )
      .assign other_rows = ( other_rows + ",\n" ) + ( comment + r.body )
      .select one te_state related by te_state->TE_STATE[R2101.'precedes']
    .end while
    .include "${te_file.arc_path}/t.class.sem.matrix.c"
  .end if
.end function
.//
.//============================================================================
.// Create a row in the State Event Matrix (SEM) for a state model.
.//============================================================================
.function CreateStateEventMatrixRow
  .param inst_ref te_state
  .param inst_ref_set te_evts
  .param integer order
  .param integer num_events
  .select any te_eq from instances of TE_EQ
  .assign event_number = 0
  .assign event_count = 0
  .assign row = ""
  .assign delimiter = ""
  .select any empty_sm_txn from instances of SM_TXN where ( false )
  .select any empty_sm_eign from instances of SM_EIGN where ( false )
  .select one sm_state related by te_state->SM_STATE[R2037]
  .// Here we use event_count and event_number, because we may skip events
  .// that are not used.  Soon there will be a reflexive on TE_EVT.
  .// Guard by limiting loop to 256 events.
  .while ( ( event_count < num_events ) and ( event_number < 256 ) )
    .assign cell = ""
    .assign found = false
    .for each te_evt in te_evts
      .if ( te_evt.Order == event_number )
        .assign found = true
        .assign sm_txn = empty_sm_txn
        .assign sm_eign = empty_sm_eign
        .if ( 0 == order )
          .// Deal with creation event transitions.
          .select one sm_txn related by te_evt->SM_EVT[R2036]->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509]->SM_TXN[R507]
        .else
          .// Deal with normal transitions.
          .select any sm_seme related by te_evt->SM_EVT[R2036]->SM_SEVT[R525]->SM_SEME[R503] where ( selected.SMstt_ID == sm_state.SMstt_ID )
          .select one sm_nstxn related by sm_seme->SM_NSTXN[R504]
          .if ( not_empty sm_nstxn )
            .// NOTE:  To avoid problems with PE, we need the following to
            .// bypass metamodel issues when a PE and a local event both
            .// have transitions between the same state pairs.
            .select any sm_txn related by sm_state->SM_SM[R501]->SM_TXN[R505] where ( selected.Trans_ID == sm_nstxn.Trans_ID )
          .else
            .select one sm_eign related by sm_seme->SM_EIGN[R504]
          .end if
        .end if
        .if ( not_empty sm_txn )
          .select one next_te_state related by sm_txn->SM_STATE[R506]->TE_STATE[R2037]
          .select one txn_te_act related by sm_txn->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]->TE_ACT[R2022]
          .if ( not_empty txn_te_act )
            .// We have a transition action.  Prepend number to cell.
            .assign cell = "(${txn_te_act.number}<<8) + "
          .end if
          .assign cell = ( delimiter + cell ) + next_te_state.enumerator
        .elif ( not_empty sm_eign )
          .assign cell = delimiter + te_eq.ignored
        .else
          .assign cell = delimiter + te_eq.cant_happen
        .end if
        .assign delimiter = ", "
        .break for
      .end if
    .end for
    .assign event_number = event_number + 1
    .if ( found )
      .assign event_count = event_count + 1
    .end if
    .assign row = row + cell
  .end while
  { ${row} }\
.end function
.//
.//============================================================================
.// Output the array of pointers that refer to the actions of the states.
.//============================================================================
.function CreateStateActionArray
  .param inst_ref te_c
  .param inst_ref sm_sm
  .select any te_file from instances of TE_FILE
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .select many te_states related by sm_sm->SM_STATE[R501]->TE_STATE[R2037]
  .select one te_state related by TE_SM->TE_STATE[R2100]
  .// Watch out for incomplete (or non-active) xtUML models.
  .assign state_space = te_sm.num_states + 1
  .assign state_names = ""
  .if ( te_sm.num_states > 0 )
    .assign delimiter = ","
    .assign state_action_rows = ""
    .assign state_count = 0
    .while ( not_empty te_state )
      .if ( state_count == ( te_sm.num_states - 1 ) )
        .assign delimiter = ""
      .end if
      .select one te_act related by te_state->SM_STATE[R2037]->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]->TE_ACT[R2022]
      .assign state_action_rows = state_action_rows + "    (${te_sm.action_type}) ${te_act.GeneratedName}${delimiter}  /* ${te_state.Name} */\n"
      .assign state_names = state_names + "    ""${te_state.Name}""${delimiter}\n"
      .assign state_count = state_count + 1
      .select one te_state related by te_state->TE_STATE[R2101.'precedes']
    .end while
    .include "${te_file.arc_path}/t.class.sem.state_action_array.c"
  .end if
  .if ( te_c.StateTrace )
    .include "${te_file.arc_path}/t.class.sem.state_names.c"
  .end if
.end function
.//
.//============================================================================
.// Output the array of pointers that refer to the actions on the transitions.
.//============================================================================
.function CreateTransitionActionArray
  .param inst_ref sm_sm
  .select any te_file from instances of TE_FILE
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .select many te_acts related by sm_sm->SM_TXN[R505]->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]->TE_ACT[R2022]
  .assign num_te_acts = cardinality te_acts
  .if ( num_te_acts > 0 )
    .assign delimiter = ","
    .assign txn_action_rows = ""
    .for each te_act in te_acts
      .if ( last te_acts )
        .assign delimiter = ""
      .end if
      .assign txn_action_rows = txn_action_rows + "    (${te_sm.action_type}) ${te_act.GeneratedName}${delimiter}\n"
    .end for
    .include "${te_file.arc_path}/t.class.sem.txn_action_array.c"
  .end if
.end function
.//
.//===========================================================================
.// Output an event dispatcher for polymorphic event propagation.
.//===========================================================================
.function CreatePolymorphicEventDispatcher
  .param inst_ref o_obj
  .param inst_ref_set r_rels
  .//
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select any te_string from instances of TE_STRING
  .select any te_typemap from instances of TE_TYPEMAP
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if ( not_empty r_rels )
    .assign num_poly_rels = cardinality r_rels
    .if ( num_poly_rels == 1 )
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    .for each rel in r_rels
      .// for loop needed to get the one poly relationship.
      .invoke method_name = GetSuperTypePolymorphicEventMethodName( te_class, rel )
    ${method_name.result}( (${te_class.GeneratedName} *) instance, event );
    .end for
  }\
    .else
      .// Multidirectional subtyping
      .select one te_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]->TE_SM[R2043]
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    /* Multidirectional subtyping hierarchy:  Pass PE down all active legs.  */
    ${te_eq.base_event_type} * copy;
      .for each rel in r_rels
        .invoke method_name = GetSuperTypePolymorphicEventMethodName( te_class, rel )
    /* Propagate event down R${rel.Numb}  */
    copy = ${te_eq.allocate}();
    ${te_instance.module}${te_string.memmove}( copy, event, sizeof( ${te_sm.events_union} ) );
    ${method_name.result}( instance, copy );
    ${te_instance.module}${te_eq.delete}( copy );
      .end for
  }\
    .end if
  .end if
.end function
.//
.//===========================================================================
.// Ouput the routine that will dispatch events for a class.
.//===========================================================================
.function CreateInstanceStateModelEventDispatcher
  .param inst_ref te_c
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .//
  .select any te_callout from instances of TE_CALLOUT
  .select any te_eq from instances of TE_EQ
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_trace from instances of TE_TRACE
  .select any te_target from instances of TE_TARGET
  .select any te_typemap from instances of TE_TYPEMAP
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select any polymorphic_event from instances of SM_PEVT
  .//
  .if ( gen_declaration )
    .include "${te_file.arc_path}/t.class.idispatch.h"
  .else
    .// Watch out for possibly incomplete models!
    .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
    .select one te_sm related by sm_sm->TE_SM[R2043]
    .invoke poly_rels = GetPolymorphicRelationshipCollection( o_obj )
    .assign poly_rel_set = poly_rels.result
    .//
    .invoke r = AutoInitializeUniqueIDs( te_class, "i" )
    .assign init_uniques = r.body
    .invoke max_event = GetMaxEventInfo( o_obj, true )
    .invoke r = GetDomainTypeIDFromString( te_c.Name )
    .assign dom_id = r.result
    .invoke poly_dispatch = CreatePolymorphicEventDispatcher( o_obj, poly_rel_set )
    .assign poly_dispatcher = poly_dispatch.body
    .//
    .// Does this state model have any self-creation transitions?
    .assign can_self_create = false
    .select any sm_crtxn related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509]
    .if ( not_empty sm_crtxn )
      .assign can_self_create = true
    .end if
    .//
    .// Does this state model have any self-deletion transitions?
    .assign can_self_delete = false
    .select many final_state_set related by sm_sm->SM_STATE[R501] where ( selected.Final != 0 )
    .select many te_states related by final_state_set->TE_STATE[R2037]
    .if ( not_empty te_states )
      .assign can_self_delete = true
    .end if
    .select any evt_cant_happen related by sm_sm->SM_STATE[R501]->SM_SEME[R503]->SM_CH[R504]
    .select any evt_ignored related by sm_sm->SM_STATE[R501]->SM_SEME[R503]->SM_EIGN[R504]
    .select any nlevt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526]
    .include "${te_file.arc_path}/t.class.idispatch.c"
  .end if
.end function
.//
