.//============================================================================
.// These queries collect static analysis information and propagate it
.// forward to the system build step by outputting a set of INSERT
.// statements that will populate the system build gen database.
.//============================================================================
.//
.//
.//============================================================================
.// Store statistics into TE_C.
.//============================================================================
.function te_c_CollectLimits
  .param inst_ref te_c
  .//
  .select any te_file from instances of TE_FILE
  .//
  .// Analyze maximums for extents.
  .// The extents should be analyzed only *after* extent size coloring!
  .assign object_class_extents = 0
  .assign relationship_extents = 0
  .assign largest_object_extent = 0
  .select one te_class related by te_c->TE_CLASS[R2103]
  .while ( not_empty te_class )
    .select one o_obj related by te_class->O_OBJ[R2019]
    .assign object_class_extents = object_class_extents + te_class.MaxExtentSize
    .if ( te_class.MaxExtentSize > largest_object_extent )
      .assign largest_object_extent = te_class.MaxExtentSize
    .end if
    .// Calculate maximum extents required for objects on "MANY" side of a relationship.
    .select many r_rgos related by o_obj->R_OIR[R201]->R_RGO[R203] where ( selected.Obj_ID == o_obj.Obj_ID )
    .for each r_rgo in r_rgos
      .select one form related by r_rgo->R_FORM[R205]
      .if ( not_empty form )
        .if ( form.Mult == 1 )
          .assign relationship_extents = relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
      .select one assr related by r_rgo->R_ASSR[R205]
      .if ( not_empty assr )
        .if ( assr.Mult == 1 )
          .assign relationship_extents = relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
    .end for
    .select many r_rtos related by o_obj->R_OIR[R201]->R_RTO[R203] where ( selected.Obj_ID == o_obj.Obj_ID )
    .for each r_rto in r_rtos
      .select one aone related by r_rto->R_AONE[R204]
      .if ( not_empty aone )
        .if ( aone.Mult == 1 )
          .assign relationship_extents = relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
      .select one aoth related by r_rto->R_AOTH[R204]
      .if ( not_empty aoth )
        .if ( aoth.Mult == 1 )
          .assign relationship_extents = relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
    .end for
    .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
  .end while
  .//
  .// analyze timers events selects
  .invoke r = timer_analyze_starts()
  .assign total_timer_starts = r.result
  .//
  .// Count up the event specification statements which is the supertype
  .// of generated and deferred events.  This will give us a starting point
  .// on allocating event queue resources.
  .// CDS - We are (re)counting the events for each component, but this code is not component-specific.
  .// CDS - The event counts should be "harvested" while processing the action language.
  .assign max_events = 0
  .assign max_self_events = 0
  .assign max_nonself_events = 0
  .select many act_acts from instances of ACT_ACT
  .for each act_act in act_acts
    .select many event_specification_statements related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->E_ESS[R603]
    .assign all_events_count = cardinality event_specification_statements
    .select many act_sgns related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->ACT_SGN[R603]
    .assign all_events_count = all_events_count + ( cardinality act_sgns )
    .if ( all_events_count > max_events )
      .assign max_events = all_events_count
    .end if
    .// Count up the self events in this body.
    .assign count = 0
    .for each e_ess in event_specification_statements
      .select one v_var related by e_ess->E_GES[R701]->E_GSME[R703]->E_GEN[R705]->V_VAR[R712] where ( "self" == "$l{selected.Name}" )
      .if ( not_empty v_var )
        .assign count = count + 1
      .else
        .select any v_var related by event_specification_statements->E_CES[R701]->E_CSME[R702]->E_CEI[R704]->V_VAR[R711] where ( "self" == "$l{selected.Name}" )
        .if ( not_empty v_var )
          .assign count = count + 1
        .end if
      .end if
    .end for
    .if ( count > max_self_events )
      .assign max_self_events = count
    .end if
    .assign count = all_events_count - count
    .if ( count > max_nonself_events )
      .assign max_nonself_events = count
    .end if
    .select one te_aba related by act_act->ACT_FNB[R698]->S_SYNC[R695]->TE_SYNC[R2023]->TE_ABA[R2010]
    .if ( not_empty te_aba )
      .assign te_aba.NonSelfEventCount = count
    .end if
  .end for
  .//
  .invoke r = containoid_select_many_count()
  .assign max_select_many = r.result
  .//
  .// functions
  .select many te_syncs related by te_c->TE_SYNC[R2084] where ( ( selected.IsSafeForInterrupts ) and ( selected.XlateSemantics ) )
  .assign safe_functions = cardinality te_syncs
  .select many tm_msgs related by te_c->TE_MACT[R2002]->TM_MSG[R2809] where ( selected.IsSafeForInterrupts )
  .assign safe_messages = cardinality tm_msgs
  .assign total_interleaved_bridges = safe_functions + safe_messages
  .//
  .// Count up the priority events.
  .select many te_evts from instances of TE_EVT where ( selected.Priority != 0 )
  .assign total_priority_events = cardinality te_evts
  .//
  .// Count up the classes using preexisting instances defined in data (PEIs).
  .select many te_classs related by te_c->TE_CLASS[R2064] where ( ( not selected.ExcludeFromGen ) and ( selected.PEIsDefinedInData ) )
  .assign pei_class_count = cardinality te_classs
  .//
  .// Count up the persistent classes.
  .select many te_classs related by te_c->TE_CLASS[R2064] where ( ( not selected.ExcludeFromGen ) and ( selected.Persistent ) )
  .assign persist_class_count = cardinality te_classs
  .//
  .assign te_c.MaxObjExtent         = object_class_extents
  .assign te_c.MaxRelExtent         = relationship_extents
  .assign te_c.MaxSelectExtent      = max_select_many * largest_object_extent
  .assign te_c.MaxSelfEvents        = max_self_events
  .assign te_c.MaxNonSelfEvents     = max_nonself_events
  .assign te_c.MaxPriorityEvents    = total_priority_events
  .assign te_c.MaxTimers            = total_timer_starts
  .assign te_c.InterleavedBridges   = total_interleaved_bridges
  .assign te_c.PEIClassCount        = pei_class_count
  .assign te_c.PersistentClassCount = persist_class_count
  .//
.end function
.//
.function TE_C_class_strings .// string
  .param inst_ref te_c
  .assign s = ""
  .assign delimiter = ""
  .invoke r = T_quote()
  .assign quote = r.result
  .select one first_te_class related by te_c->TE_CLASS[R2103]
  .assign pass = 0
  .while ( pass < 3 )
    .assign te_class = first_te_class
    .while ( not_empty te_class )
      .// The switch here orders classes with single state machines ahead
      .// of class-based state machines ahead of passive classes.
      .if ( ( 0 == pass ) and ( ( "" != te_class.dispatcher ) or ( "" != te_class.CBdispatcher ) ) )
        .// instance-based state machine
        .assign s = s + delimiter + quote + te_class.Name + quote
        .assign delimiter = ","
      .elif ( ( 1 == pass ) and ( ( "" != te_class.dispatcher ) and ( "" != te_class.CBdispatcher ) ) )
        .// dual state machine
        .assign s = s + delimiter + quote + te_class.Name + "_CB" + quote
        .assign delimiter = ","
      .elif ( ( 2 == pass ) and ( ( "" == te_class.dispatcher ) and ( "" == te_class.CBdispatcher ) ) )
        .// passive instance
        .assign s = s + delimiter + quote + te_class.Name + quote
        .assign delimiter = ","
      .else
        .// empty
      .end if
      .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
    .end while
    .assign pass = pass + 1
  .end while
  .assign attr_result = s
.end function
.//
.function TE_SM_state_strings .// string
  .param inst_ref te_sm
  .assign s = ""
  .assign delimiter = ""
  .invoke r = T_quote()
  .assign quote = r.result
  .select one te_state related by te_sm->TE_STATE[R2100]
  .while ( not_empty te_state )
    .assign s = s + delimiter + quote + te_state.Name + quote
    .select one te_state related by te_state->TE_STATE[R2101.'precedes']
    .assign delimiter = ","
  .end while
  .assign attr_result = s
.end function
.//
.function TE_SM_event_strings .// string
  .param inst_ref te_sm
  .assign s = ""
  .assign delimiter = ""
  .invoke r = T_quote()
  .assign quote = r.result
  .select one te_evt related by te_sm->TE_EVT[R2104]
  .while ( not_empty te_evt )
    .assign s = s + delimiter + quote + te_evt.Name + quote
    .select one te_evt related by te_evt->TE_EVT[R2102.'precedes']
    .assign delimiter = ","
  .end while
  .assign attr_result = s
.end function
.//
