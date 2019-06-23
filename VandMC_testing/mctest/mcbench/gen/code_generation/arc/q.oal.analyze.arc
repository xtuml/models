.//============================================================================
.// The query/transformations in this file analyze the action language
.// of the customer model and gather statistics for use in optimized
.// code generation.
.//============================================================================
.//
.//
.//
.// Identify (special) where clauses that can be optimized.
.//
.function selection_whereclause_identify_special
  .// Select the class from which extent we are selecting.
  .//  Mark its identifying attributes.
  .// Select the blind select statements having where clauses.
  .// Select the values that represent the where clauses that
  .// are binary expressions where the operator is == or AND.
  .// BUG:  R676 and R677 should be unconditional on the O_OBJ side.
  .// Select the V_SLRs and their attributes.
  .// Compare the two sets.
  .//
  .select many act_fiws from instances of ACT_FIW
  .for each act_fiw in act_fiws
    .select one v_bin related by act_fiw->V_VAL[R610]->V_BIN[R801] where ( ( selected.Operator == "and" ) or ( selected.Operator == "==" ) )
    .if ( not_empty v_bin )
      .select one o_obj related by act_fiw->O_OBJ[R676]
      .// Select the TE_WHEREs, because we can check to see if we have
      .// already marked a special where.
      .select many te_wheres related by o_obj->O_ID[R104]->TE_WHERE[R2032] where ( not selected.WhereKey )
      .if ( not_empty te_wheres )
        .// Clear out the included flag on all attributes of this class.
        .select many te_attrs related by o_obj->O_ATTR[R102]->TE_ATTR[R2033]
        .for each te_attr in te_attrs
          .assign te_attr.Included = false
        .end for
        .// Call a routine that will recursively drill down and mark any
        .// attributes compared in the where clause.
        .invoke where_clause_mark_selected_attributes( v_bin )
        .select many te_attrs related by o_obj->O_ATTR[R102]->TE_ATTR[R2033] where ( selected.Included )
        .if ( not_empty te_attrs )
          .for each te_where in te_wheres
            .select many identifying_te_attrs related by te_where->O_ID[R2032]->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
            .if ( te_attrs == identifying_te_attrs )
              .print "marking SPECIAL where on ${o_obj.Key_Lett}:${o_obj.Name}"
              .assign te_where.WhereKey = true
            .end if
          .end for
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//
.// Recursively drill down into the where clause expression marking
.// selected attributes along the way.
.//
.function where_clause_mark_selected_attributes
  .param inst_ref v_bin
  .if ( v_bin.Operator == "and" )
    .select one left_v_val related by v_bin->V_VAL[R802]
    .select one right_v_val related by v_bin->V_VAL[R803]
    .select one v_bin related by left_v_val->V_BIN[R801]
    .if ( not_empty v_bin )
      .invoke where_clause_mark_selected_attributes( v_bin )
    .end if
    .select one v_bin related by right_v_val->V_BIN[R801]
    .if ( not_empty v_bin )
      .invoke where_clause_mark_selected_attributes( v_bin )
    .end if
  .elif ( v_bin.Operator == "==" )
    .select one te_attr related by v_bin->V_VAL[R802]->V_SLR[R801]->O_ATTR[R812]->TE_ATTR[R2033]
    .if ( not_empty te_attr )
      .assign te_attr.Included = true
    .end if
    .select one te_attr related by v_bin->V_VAL[R803]->V_SLR[R801]->O_ATTR[R812]->TE_ATTR[R2033]
    .if ( not_empty te_attr )
      .assign te_attr.Included = true
    .end if
  .else
    .// allow return
  .end if
.end function
.//
.//
.// Find valid state machines and mark them thusly.
.// Such state machines have at least one each of state, event and transition.
.//
.function SM_SM_mark_valid
  .// Select only the state machines that have been configured for generation.
  .select many te_sms from instances of TE_SM
  .for each te_sm in te_sms
    .select one sm_sm related by te_sm->SM_SM[R2043]
    .select any sm_state related by sm_sm->SM_STATE[R501]
    .if ( not_empty sm_state )
      .select any sm_txn related by sm_sm->SM_TXN[R505]
      .if ( not_empty sm_txn )
        .select any sm_evt related by sm_sm->SM_EVT[R502]
        .if ( not_empty sm_evt )
          .assign te_sm.complete = true
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//
.// Update the size of SEM cells when transition actions are present.
.//
.function TE_TXN_used
  .select any te_sm from instances of TE_SM where ( selected.txn_action_count > 0 )
  .if ( not_empty te_sm )
    .select any te_typemap from instances of TE_TYPEMAP
    .assign te_typemap.SEM_cell_type = "u2_t"
  .end if
.end function
.//
.//
.// Find and mark/count events that are used in action language.
.// Even though we store the information in a count, this query
.// only counts each event once.
.//
.function event_smt_used
  .select many e_gsmes from instances of E_GSME
  .select many te_evts related by e_gsmes->SM_EVT[R707]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
  .select many e_csmes from instances of E_CSME
  .select many te_evts related by e_csmes->SM_EVT[R706]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
  .// Mark all of the signals (inter-component class-based events) as used.
  .select many sm_sgevts from instances of SM_SGEVT
  .select many te_evts related by sm_sgevts->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
.end function
.//
.//
.// Mark classes that are created synchronously (nonself) or
.// asynchronously (self).
.//
.function class_smt_created
  .select many act_crs from instances of ACT_CR
  .select many te_classs related by act_crs->O_OBJ[R671]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classs )
  .for each te_class in te_classs
    .assign te_class.NonSelfCreated = true
  .end for
  .select many act_cnvs from instances of ACT_CNV
  .select many te_classs related by act_cnvs->O_OBJ[R672]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classs )
  .for each te_class in te_classs
    .assign te_class.NonSelfCreated = true
  .end for
  .// Now find any creator events to classes.
  .select many e_gecs from instances of E_GEC
  .select many te_classs related by e_gecs->E_GSME[R705]->SM_EVT[R707]->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classs )
  .for each te_class in te_classs
    .assign te_class.SelfCreated = true
  .end for
.end function
.//
.//
.// Check for classes that are deleted synchronously and should not be.
.//
.function class_smt_deleted
  .select many act_dels from instances of ACT_DEL
  .select many te_classs related by act_dels->V_VAR[R634]->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classs )
.end function
.//
.function class_smt_crdel_check
  .param inst_ref_set te_classs
  .for each te_class in te_classs
    .if ( te_class.IsReadOnly )
      .select one o_obj related by te_class->O_OBJ[R2019]
      .print "ERROR:  Attempt to create/delete read-only object ${o_obj.Name} (${o_obj.Key_Lett})"
    .end if
    .if ( te_class.IsFixedPopulation )
      .select one o_obj related by te_class->O_OBJ[R2019]
      .print "ERROR:  Attempt to create/delete object ${o_obj.Name} (${o_obj.Key_Lett}) within static instance population."
    .end if
  .end for
.end function
.//
.// Count up all the places that events are either generated directly (E_GEN)
.// or where they are created for deferred generation (E_CEI).
.// Also count up the self versus nonself events.
.//
.function event_queue_analyze_needed
  .assign self_queue_needed = false
  .assign nonself_queue_needed = false
  .select many e_gens from instances of E_GEN
  .select any v_var related by e_gens->V_VAR[R712] where ( selected.Name == "self" )
  .if ( not_empty v_var )
    .assign self_queue_needed = true
  .end if
  .select any v_var related by e_gens->V_VAR[R712] where ( selected.Name != "self" )
  .if ( not_empty v_var )
    .assign nonself_queue_needed = true
  .end if
  .if ( not ( self_queue_needed and nonself_queue_needed ) )
    .select many e_ceis from instances of E_CEI
    .select any v_var related by e_ceis->V_VAR[R711] where ( selected.Name == "self" )
    .if ( not_empty v_var )
      .assign self_queue_needed = true
    .end if
    .select any v_var related by e_ceis->V_VAR[R711] where ( selected.Name != "self" )
    .if ( not_empty v_var )
      .assign nonself_queue_needed = true
    .end if
  .end if
  .if ( self_queue_needed )
    .print "Self event queue needed."
  .end if
  .if ( nonself_queue_needed )
    .print "Instance event queue needed."
  .end if
.end function
.//
.//
.// Analyze and mark the attributes of the customer model to flag which
.// attributes are read and/or written.  We will use this information
.// later to optimize out member data access code that is not needed.
.// Also, mark attributes participating as identifiers as used.
.// Mark written, read and Used attributes to TE_ATTR.
.//
.function attr_analyze_accesses
  .assign attributes_read_count = 0
  .assign attributes_written_count = 0
  .//
  .// Select all the attribute values references.
  .// Cycle through them marking their associated attributes as being read.
  .// Then, see if they are written by determining whether they participate
  .// as an lval in an assignment.
  .// Note, there can be several V_AVLs for each O_ATTR.
  .//
  .select many te_attrs from instances of TE_ATTR
  .for each te_attr in te_attrs
    .select many v_avls related by te_attr->O_ATTR[R2033]->V_AVL[R806]
    .if ( not_empty v_avls )
      .if ( not te_attr.read )
        .assign attributes_read_count = attributes_read_count + 1
      .end if
      .assign te_attr.read = true
      .assign te_attr.Used = true
    .end if
    .// attributes written
    .select any act_ai related by v_avls->V_VAL[R801]->ACT_AI[R689]
    .if ( not_empty act_ai )
      .if ( not te_attr.written )
        .assign attributes_written_count = attributes_written_count + 1
        .select one te_class related by te_attr->TE_CLASS[R2061]
        .if ( te_class.IsReadOnly )
          .print "ERROR:  Attempt to write to read-only object ${te_class.Name} (${te_class.Key_Lett})."
        .end if
      .end if
      .assign te_attr.written = true
    .end if
  .end for
  .// Identifying attributes are copied across in RELATE statements
  .// even if they are never read or written.
  .select many o_oidas from instances of O_OIDA
  .select many te_attrs related by o_oidas->O_ATTR[R105]->TE_ATTR[R2033]
  .for each te_attr in te_attrs
    .assign te_attr.Used = true
  .end for
  .assign msg = "$t{attributes_read_count}" + " attributes read"
  .print "${msg}"
  .assign msg = "$t{attributes_written_count}" + " attributes written"
  .print "${msg}"
.end function
.//
.//
.// Mark attributes that are not used, needed and should be optimized out.
.//
.function attr_analyze_codegen
  .param inst_ref te_sys
  .assign optimized_out_count = 0
  .select many te_cs from instances of TE_C where ( not selected.OptDisabled )
  .select many te_attrs related by te_cs->TE_CLASS[R2064]->TE_ATTR[R2061]
  .for each te_attr in te_attrs
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .// Do not translate current_state attributes.
    .select one s_cdt related by o_attr->S_DT[R114]->S_CDT[R17] where ( selected.Core_Typ == 6 )
    .if ( not_empty s_cdt )
      .assign te_attr.translate = false
      .assign optimized_out_count = optimized_out_count + 1
    .end if
    .if ( not te_attr.Used )
      .// not accessed?
      .assign te_attr.translate = false
      .assign optimized_out_count = optimized_out_count + 1
    .else
      .// referential attribute?
      .select one o_rattr related by o_attr->O_RATTR[R106]
      .if ( not_empty o_rattr )
        .// Is referential not also an identifying attribute?
        .select any o_oida related by o_attr->O_OIDA[R105] where ( selected.Attr_ID == o_rattr.Attr_ID )
        .if ( ( empty o_oida ) and ( not te_attr.Used ) )
          .if ( not te_sys.InstanceLoading )
            .assign te_attr.translate = false
            .assign optimized_out_count = optimized_out_count + 1
          .end if
        .end if
      .end if
    .end if
  .end for
  .assign msg = "$t{optimized_out_count}" + " attributes optimized out"
  .print "${msg}"
.end function
.//
.//
.// Here we mark which classes are navigated across associations in each
.// direction, from the formalizer or from the participant.  The results
.// are stored in instances linked to instances of R_OIR (TE_OIR).
.//
.function association_R_OIR_mark_navigated
  .select many act_lnks from instances of ACT_LNK
  .for each act_lnk in act_lnks
    .select any r_oir related by act_lnk->R_REL[R681]->R_OIR[R201] where ( selected.Obj_ID == act_lnk.Obj_ID )
    .select one te_oir related by r_oir->TE_OIR[R2035]
    .if ( not_empty te_oir )
      .assign te_oir.NavigatedTo = true
    .end if
  .end for
.end function
.//
.//
.// Select all of the association instances and mark the ones that
.// actually get linked with the relate/unrelate OAL statements.
.//
.// Mark all navigation (across a particular association).
.// Mark all assocations that get navigated.
.//
.function association_mark_link_unlink_needed
  .select many te_rels from instances of TE_REL
  .select many r_rels related by te_rels->R_REL[R2034]
  .for each r_rel in r_rels
    .assign link_needed = false
    .assign unlink_needed = false
    .assign navigated = false
    .// Check if navigated.
    .select any act_lnk related by r_rel->ACT_LNK[R681]
    .if ( not_empty act_lnk )
      .assign navigated = true
    .end if
    .// Check if related.
    .select any act_rel related by r_rel->ACT_REL[R653]
    .if ( not_empty act_rel )
      .assign link_needed = true
    .else
      .select any act_ru related by r_rel->ACT_RU[R654]
      .if ( not_empty act_ru )
        .assign link_needed = true
      .end if
    .end if
    .// Check if unrelated.
    .select any act_unr related by r_rel->ACT_UNR[R655]
    .if ( not_empty act_unr )
      .assign unlink_needed = true
    .else
      .select any act_uru related by r_rel->ACT_URU[R656]
      .if ( not_empty act_uru )
        .assign unlink_needed = true
      .end if
    .end if
    .// Apply results to TE_REL.
    .if ( ( link_needed or unlink_needed ) or navigated )
      .select one te_rel related by r_rel->TE_REL[R2034]
      .if ( navigated )
        .assign te_rel.Navigated = true
      .end if
      .if ( link_needed )
        .assign te_rel.LinkNeeded = true
      .end if
      .if ( unlink_needed )
        .assign te_rel.UnlinkNeeded = true
      .end if
    .end if
  .end for
.end function
.//
