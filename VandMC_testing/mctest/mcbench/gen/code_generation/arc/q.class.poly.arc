.//============================================================================
.// This archetype file contains the functions for generating class
.// methods associated with polymorphic event delivery.
.//============================================================================
.//
.function GetPolymorphicRelationshipCollection
  .param inst_ref o_obj
  .//
  .select many r_supers related by o_obj->R_OIR[R201]->R_REL[R201]->R_SUBSUP[R206]->R_SUPER[R212] where ( selected.Obj_ID == o_obj.Obj_ID )
  .select many attr_result related by r_supers->R_SUBSUP[R212]->R_REL[R206]
  .if ( not_empty attr_result )
    .select one sm_ism related by o_obj->SM_ISM[R518]
    .if ( empty sm_ism )
      .// Passive supertype, we are done
      .assign attr_result = attr_result - attr_result
    .else
      .select any poly_sm_evt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_PEVT[R525]->SM_EVT[R525]
      .select many non_local_event_set related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526]->SM_SEVT[R526]->SM_EVT[R525]
      .if ( (empty poly_sm_evt) and (empty non_local_event_set) )
        .assign attr_result = attr_result - attr_result
      .else
        .assign possible_super_rel_set = attr_result
        .// Remove any rels where all the subtypes are passive
        .for each possible_super_rel in possible_super_rel_set
          .select many subtype_o_objs related by possible_super_rel->R_SUBSUP[R206]->R_SUB[R213]
          .select any sub_sm_ism related by subtype_o_objs->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]->SM_ISM[R518]
          .if ( empty sub_sm_ism )
            .assign attr_result = attr_result - possible_super_rel
          .end if
        .end for
        .//
        .if ( empty poly_sm_evt )
          .// No explicit PE defined for this supertype. Any pass through PE?
          .assign pass_through = FALSE
          .for each non_local_event in non_local_event_set
            .select any txn related by non_local_event->SM_SEVT[R525]->SM_SEME[R503]->SM_NSTXN[R504]
            .if ( empty txn )
              .assign pass_through = TRUE
              .break for
            .end if
          .end for
          .if ( not pass_through )
            .assign attr_result = attr_result - attr_result
          .end if
        .end if
      .end if
    .end if
  .end if
.end function
.//
.//
.//
.function CreatePolymorphicEventDeliveryMethod
  .param inst_ref o_obj
  .param inst_ref r_rel
  .param inst_ref_set poly_sm_evts
  .param boolean gen_declaration
  .param boolean firsttime
  .param string i
  .param string supertype
  .//
  .select any te_callout from instances of TE_CALLOUT
  .select any te_instance from instances of TE_INSTANCE
  .select any te_eq from instances of TE_EQ
  .select any te_target from instances of TE_TARGET
  .select any te_typemap from instances of TE_TYPEMAP
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by te_class->TE_C[R2064]
  .invoke method_name = GetSuperTypePolymorphicEventMethodName( te_class, r_rel )
  .if ( gen_declaration and firsttime )
extern void ${method_name.result}( const ${te_class.GeneratedName} * const, ${te_eq.base_event_type} * );
  .else
    .if ( firsttime )
      .select many poly_sm_evts related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_PEVT[R525]->SM_EVT[R525]
    .end if
    .select many all_subtype_o_objs related by r_rel->R_SUBSUP[R206]->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
    .assign subtype_o_objs = all_subtype_o_objs
    .for each subtype_o_obj in all_subtype_o_objs
      .// Remove any passive subtypes
      .select one sm_ism related by subtype_o_obj->SM_ISM[R518]
      .if ( empty sm_ism )
        .assign subtype_o_objs = subtype_o_objs - subtype_o_obj
      .end if
    .end for
    .select any any_subtype_o_obj related by r_rel->R_SUBSUP[R206]->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
    .invoke supertype_data_member = GetRelationshipDataMemberName( any_subtype_o_obj, r_rel, "" )
    .if ( firsttime )
/*
 * Transfer a polymorphic event down the R$t{r_rel.Numb} subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
${method_name.result}( const ${te_class.GeneratedName} * const ${supertype}, ${te_eq.base_event_type} * event )
{
  ${te_typemap.event_number_name} event_number = GetOoaEventNumber( event );
      .if ( "C++" == te_target.language )
  ${te_c.Name} * thismodule = (${te_c.Name} *) event->thismodule;
      .end if
    .end if
${i}  if ( 0 != ${supertype}->${supertype_data_member.result} )
${i}  switch ( ${supertype}->${supertype_data_member.obj_id} ) {
    .for each subtype_o_obj in subtype_o_objs
      .assign transition = ""
      .select one subtype_te_class related by subtype_o_obj->TE_CLASS[R2019]
${i}    case ${subtype_te_class.system_class_number}:  /* ${subtype_te_class.Name} (${subtype_te_class.Key_lett}) */
${i}      switch ( event_number ) {
      .assign remaining_poly_sm_evts = poly_sm_evts
      .for each poly_sm_evt in poly_sm_evts
        .select one poly_te_evt related by poly_sm_evt->TE_EVT[R2036]
        .select any sm_nlevt related by subtype_o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526] where ( (selected.PolySMevt_ID == poly_sm_evt.SMevt_ID) and (selected.PolySM_ID == poly_sm_evt.SM_ID) )
        .assign mning = ""
        .if ( poly_sm_evt.Mning != "" )
          .assign mning = "'${poly_sm_evt.Mning}'"
        .end if
        .assign note = "  /* ${poly_sm_evt.Drv_Lbl}*${mning} */"
        .if ( not_empty sm_nlevt )
          .select one true_te_evt related by sm_nlevt->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
          .select any txn related by sm_nlevt->SM_SEVT[R526]->SM_SEME[R503]->SM_NSTXN[R504]
          .select any cant_happen related by sm_nlevt->SM_SEVT[R526]->SM_SEME[R503]->SM_CH[R504]
          .if ( ( not_empty txn ) or ( not_empty cant_happen ) )
            .// True event results in a transition or exception in the subtype.
            .assign transition = transition + "${i}        case ${poly_te_evt.Enumerator}:${note}\n"
            .assign transition = transition + "${i}          event = ${te_instance.module}${te_eq.modify}( event, &${true_te_evt.GeneratedName}c );\n"
            .assign transition = transition + "${i}          SetEventTargetInstance( event, ${supertype}->${supertype_data_member.result} );\n"
            .if ( "C++" == te_target.language )
              .assign transition = transition + "${i}          event->thismodule = thismodule;\n"
            .end if
            .assign transition = transition + "${i}          ${subtype_te_class.dispatcher}( event );\n"
            .assign transition = transition + "${i}          break; /* after transition */\n"
          .else
            .select any sm_eign related by sm_nlevt->SM_SEVT[R526]->SM_SEME[R503]->SM_EIGN[R504]
            .if ( empty sm_eign )
              .print "WARNING:  no transition for non-local event - ${subtype_te_class.Name}(${subtype_te_class.Key_lett}):${poly_sm_evt.Drv_Lbl}.${poly_sm_evt.Mning}\n"
            .end if
          .end if
        .else
          .// Poly has no nonlocal event in this subtype, so must be deeper.
          .select any sub_is_super related by subtype_o_obj->R_OIR[R201]->R_REL[R201]->R_SUBSUP[R206]->R_SUPER[R212] where ( selected.Obj_ID == subtype_o_obj.Obj_ID )
          .if ( not_empty sub_is_super )
            .// No transition in the subtype for this event.
            .// Pass the event down through the next subtype in the hierarchy.
${i}        case ${poly_te_evt.Enumerator}:${note}
            .select many r_supers related by subtype_o_obj->R_OIR[R201]->R_REL[R201]->R_SUBSUP[R206]->R_SUPER[R212] where ( selected.Obj_ID == subtype_o_obj.Obj_ID )
            .select many r_rels related by r_supers->R_SUBSUP[R212]->R_REL[R206]
            .for each subtype_r_rel in r_rels
              .assign indent = i + "        "
              .assign newsupertype = "((${subtype_te_class.GeneratedName} *) ${supertype}->${supertype_data_member.result})"
              .invoke s = CreatePolymorphicEventDeliveryMethod( subtype_o_obj, subtype_r_rel, remaining_poly_sm_evts, false, false, indent, newsupertype )
${s.body}\
            .end for
          .end if
        .end if
        .// Avoid interrogating the same PE in a subtype.
        .assign remaining_poly_sm_evts = remaining_poly_sm_evts - poly_sm_evt
      .end for
      .if ( "" != transition )
${i}        /* transition (or cant happen) events in subtype */
${transition}\
      .end if
${i}      }
${i}      break;
    .end for
${i}    default:
${i}      ${te_callout.event_cant_happen}( 0, 0, event_number );
${i}  }
    .if ( firsttime )
}
    .end if
  .end if
.end function
.//
.//
.//
.function AddSuperTypePolymorphicEventHandlers
  .param inst_ref o_obj
  .param boolean gen_declaration
  .//
  .select one sm_ism related by o_obj->SM_ISM[R518]
  .if ( not_empty sm_ism )
    .select many empty_sm_evts from instances of SM_EVT where ( false )
    .invoke poly_rels = GetPolymorphicRelationshipCollection( o_obj )
    .assign poly_r_rels = poly_rels.result
    .for each r_rel in poly_r_rels
      .invoke method = CreatePolymorphicEventDeliveryMethod( o_obj, r_rel, empty_sm_evts, gen_declaration, true, "", "p_$l{o_obj.Key_Lett}" )
${method.body}\
    .end for
  .end if
.end function
.//
