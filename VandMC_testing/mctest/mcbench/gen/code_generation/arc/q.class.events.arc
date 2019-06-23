.//============================================================================
.// $RCSfile: q.class.events.arc,v $
.//
.// Description:
.// This archetype file generates the structures and methods for xtUML
.// application analysis events.
.//============================================================================
.//
.//
.//============================================================================
.// Declare xtUML event supplemental data as class data members.
.// Predicates: Event data items pre-ordered prior to this function!
.//============================================================================
.function DeclareEventSupDataMembers
  .param inst_ref sm_evt
  .param string flavor
  .assign result = false
  .select many te_parms related by sm_evt->SM_EVTDI[R532]->TE_PARM[R2031]
  .if ( ( "class-based" == flavor ) and ( empty te_parms ) )
    .// This is a signal, so get the parameters from the Component subsystem.
    .select one sm_sgevt related by sm_evt->SM_SEVT[R525]->SM_SGEVT[R526]
    .if ( not_empty sm_sgevt )
      .select one spr_ps related by sm_sgevt->SPR_PS[R528]
      .if ( not_empty spr_ps )
        .select many te_parms related by spr_ps->TE_MACT[R2051]->TE_ABA[R2010]->TE_PARM[R2062]
      .else
        .select one spr_rs related by sm_sgevt->SPR_RS[R529]
        .select many te_parms related by spr_rs->TE_MACT[R2053]->TE_ABA[R2010]->TE_PARM[R2062]
      .end if
    .end if
  .end if
  .select any te_string from instances of TE_STRING
  .// Find first te_parm.
  .select any te_parm from instances of TE_PARM where (false)
  .for each te_parm in te_parms
    .break for
  .end for
  .while ( not_empty te_parm )
    .select one prev_te_parm related by te_parm->TE_PARM[R2041.'succeeds']
    .if ( empty prev_te_parm )
      .break while
    .else
      .assign te_parm = prev_te_parm
    .end if
  .end while
  .while ( not_empty te_parm )
    .assign result = true
    .// TODO CDS - Do not like this check for the portindex here.  It would be nice to rework this.  
    .if ( "A00portindex" != te_parm.GeneratedName )
      .select one te_dt related by te_parm->TE_DT[R2049]
  ${te_dt.ExtName} ${te_parm.GeneratedName}${te_parm.array_spec}; /* ${te_parm.Name} */
    .end if
    .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
  .end while
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Create definition/declaration data structure code for an event.
.//============================================================================
.function TE_EVT_CreateEventClass
  .param inst_ref te_class
  .param inst_ref sm_evt
  .param boolean gen_declaration
  .param string flavor
  .assign polymorphic_comment = ""
  .assign event_constant = ""
  .assign event_parameters = ""
  .assign defined = false
  .select any te_file from instances of TE_FILE
  .select one te_c related by te_class->TE_C[R2064]
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( te_evt.Used or te_c.OptDisabled )
    .if ( "instance" == flavor )
      .invoke ec = CreateInstanceEventAllocationConstant( te_class, sm_evt, false, gen_declaration )
      .assign event_constant = ec.body
    .elif ( "creation" == flavor )
      .invoke ec = CreateInstanceEventAllocationConstant( te_class, sm_evt, true, gen_declaration )
      .assign event_constant = ec.body
    .elif ( "class-based" == flavor )
      .invoke ec = CreateAssignerEventAllocationConstant( te_class, sm_evt, gen_declaration )
      .assign event_constant = ec.body
    .else
      .print "Bad news.  Unknown type of event:  ${flavor}."
      .exit 100
    .end if
  .end if
  .if ( gen_declaration )
    .if ( te_evt.Used or te_c.OptDisabled )
      .assign defined = true
      .invoke event_sup_data_item_members = DeclareEventSupDataMembers( sm_evt, flavor )
      .if ( "instance" == flavor )
        .select one sm_pevt related by sm_evt->SM_PEVT[R525]
        .select one sm_nlevt related by sm_evt->SM_SEVT[R525]->SM_NLEVT[R526]
        .select one poly_sm_evt related by sm_nlevt->SM_PEVT[R527]->SM_EVT[R525]
        .select one super_o_obj related by poly_sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]
        .if ( not_empty sm_nlevt )
          .// Need to get supplemental data from corresponding polymorphic event.
          .invoke event_sup_data_item_members = DeclareEventSupDataMembers( poly_sm_evt, flavor )
        .end if
        .if ( empty sm_pevt )
          .if ( not_empty sm_nlevt )
            .assign polymorphic_comment = " * Note:  Event is mapped from polymorphic event ${super_o_obj.Key_Lett}::${poly_sm_evt.Drv_Lbl}."
          .end if
        .end if
      .end if
      .assign event_parameters = event_sup_data_item_members.body
    .end if
    .include "${te_file.arc_path}/t.class.event.h"
  .end if
${event_constant}\
.end function
.//
.//
.//============================================================================
.// Process the events and event data sets.
.//============================================================================
.function CreateInstanceStateModelEvents
  .param inst_ref o_obj
  .param inst_ref sm_sm
  .param boolean  gen_declaration
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select many sm_evts related by sm_sm->SM_EVT[R502]
  .for each sm_evt in sm_evts
    .select one creation_event related by sm_evt->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509]
    .if ( empty creation_event )
      .invoke event_code = TE_EVT_CreateEventClass( te_class, sm_evt, gen_declaration, "instance" )
${event_code.body}
    .else
      .invoke event_code = TE_EVT_CreateEventClass( te_class, sm_evt, gen_declaration, "creation" )
${event_code.body}
    .end if
  .end for
  .invoke event_union = CreateUnionOfObjectEvents( o_obj, true, gen_declaration )
${event_union.body}
.end function
.//
.//============================================================================
.// Process the class based state machine events.
.//============================================================================
.function CreateAssignerStateModelEvents
  .param inst_ref o_obj
  .param inst_ref sm_sm
  .param boolean  gen_declaration
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select many sm_evts related by sm_sm->SM_EVT[R502]
  .for each sm_evt in sm_evts
    .invoke event_code = TE_EVT_CreateEventClass( te_class, sm_evt, gen_declaration, "class-based" )
${event_code.body}
  .end for
  .invoke event_union = CreateUnionOfObjectEvents( o_obj, false, gen_declaration )
${event_union.body}
.end function
.//
.//============================================================================
.// Create the const part of the event data packets.
.//============================================================================
.function CreateInstanceEventAllocationConstant
  .param inst_ref te_class
  .param inst_ref sm_evt
  .param boolean  is_creation
  .param boolean  gen_declaration
  .//
  .select any te_eq from instances of TE_EQ
  .select any te_target from instances of TE_TARGET
  .select one te_c related by te_class->TE_C[R2064]
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( gen_declaration )
    .if ( te_evt.Used or te_c.OptDisabled )
extern const ${te_eq.constant_type} ${te_evt.GeneratedName}c;
    .end if
  .else
    .if ( te_evt.Used or te_c.OptDisabled )
      .// Initialize event base class/header
      .invoke r = GetDomainTypeIDFromString( te_c.Name )
      .assign dom_id = r.result
      .invoke event_prioritization_needed = GetSystemEventPrioritizationNeeded()
const ${te_eq.constant_type} ${te_evt.GeneratedName}c = {
  ${dom_id}, ${te_class.system_class_number}, ${te_evt.Enumerator},
      .if ( is_creation )
  ESCHER_IS_CREATION_EVENT\
      .else
        .select one pevt related by sm_evt->SM_PEVT[R525]
        .if ( empty pevt )
          .select one true_event related by sm_evt->SM_SEVT[R525]->SM_NLEVT[R526]->SM_SEVT[R526]->SM_EVT[R525]
          .if ( empty true_event )
  ESCHER_IS_INSTANCE_EVENT\
          .else
            .select any txn related by true_event->SM_SEVT[R525]->SM_SEME[R503]->SM_NSTXN[R504]
            .if ( not_empty txn )
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT\
            .else
              .// Pass-through polymorphic event
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT\
            .end if  .// not_empty txn
          .end if  .// empty true_event
        .else
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT\
        .end if
      .end if
      .if ( "C++" == te_target.language )
, 0\
      .end if
      .if ( event_prioritization_needed.result )
, ${te_evt.Priority}\
      .end if
 };
    .end if
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.function CreateAssignerEventAllocationConstant
  .param inst_ref te_class
  .param inst_ref sm_evt
  .param boolean  gen_declaration
  .//
  .select any te_eq from instances of TE_EQ
  .select any te_target from instances of TE_TARGET
  .select one te_c related by te_class->TE_C[R2064]
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .if ( gen_declaration )
    .if ( te_evt.Used or te_c.OptDisabled )
extern const ${te_eq.constant_type} ${te_evt.GeneratedName}c;
    .end if
  .else
    .if ( te_evt.Used or te_c.OptDisabled )
const ${te_eq.constant_type} ${te_evt.GeneratedName}c = {
      .// Initialize event base class/header
      .invoke r = GetDomainTypeIDFromString( te_c.Name )
      .assign dom_id = r.result
      .invoke event_prioritization_needed = GetSystemEventPrioritizationNeeded()
  ${dom_id}, ${te_class.CBsystem_class_number}, ${te_evt.Enumerator},
  ESCHER_IS_ASSIGNER_EVENT\
      .if ( "C++" == te_target.language )
, 0\
      .end if
      .if ( event_prioritization_needed.result )
, ${te_evt.Priority}\
      .end if
 };
    .end if
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// To get the size of the largest event type, build a union of all
.// of the event types for this class.
.//============================================================================
.function CreateUnionOfObjectEvents
  .param inst_ref o_obj
  .param boolean  is_ism
  .param boolean  gen_declaration
  .//
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
  .if ( not is_ism )
    .select one sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
  .end if
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .select many te_evts related by sm_sm->SM_EVT[R502]->TE_EVT[R2036] where ( selected.Used )
  .if ( te_c.OptDisabled )
    .select many te_evts related by sm_sm->SM_EVT[R502]->TE_EVT[R2036]
  .end if
  .//
  .if ( gen_declaration )
    .// *** Declaration
    .if ( not_empty te_evts )
/*
 * union of events targeted towards '${o_obj.Key_Lett}' state machine
 */
typedef union {
      .assign eventcounter = 1
      .for each te_evt in te_evts
        .select one event related by te_evt->SM_EVT[R2036]
        .assign comment = ""
        .select one poly_event related by event->SM_PEVT[R525]
        .if ( not_empty poly_event )
          .assign comment = "/* polymorphic event - not consumed by ${o_obj.Key_Lett} */"
        .end if
  ${te_evt.GeneratedName} $l{o_obj.Key_Lett}${te_evt.Numb}_${eventcounter};  ${comment}
        .assign eventcounter = eventcounter + 1
      .end for
} ${te_sm.events_union};
    .end if
  .else
    .// *** Definition
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// Create the roll-up of all events in this component.
.//============================================================================
.function CreateUnionOfDomainEvents
  .param inst_ref te_c
  .assign union_name = te_c.Name + "_DomainEvents_u"
  .assign ism_unions = ""
  .assign asm_unions = ""
  .select any te_class related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .assign prev_te_class = te_class
  .while ( not_empty prev_te_class )
    .assign te_class = prev_te_class
    .select one prev_te_class related by te_class->TE_CLASS[R2092.'succeeds']
  .end while
  .while ( not_empty te_class )
    .select one o_obj related by te_class->O_OBJ[R2019]
    .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
    .select one te_sm related by sm_sm->TE_SM[R2043]
    .select any te_evt related by sm_sm->SM_EVT[R502]->TE_EVT[R2036] where ( selected.Used )
    .if ( te_c.OptDisabled )
      .select any te_evt related by sm_sm->SM_EVT[R502]->TE_EVT[R2036]
    .end if
    .if ( not_empty te_evt )
      .assign ism_unions = ism_unions + "  ${te_sm.events_union} ${te_sm.events_union}_namespace;\n"
    .end if
    .select one sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
    .select one te_sm related by sm_sm->TE_SM[R2043]
    .select any te_evt related by sm_sm->SM_EVT[R502]->TE_EVT[R2036] where ( selected.Used )
    .if ( te_c.OptDisabled )
      .select any te_evt related by sm_sm->SM_EVT[R502]->TE_EVT[R2036]
    .end if
    .if ( not_empty te_evt )
      .assign asm_unions = asm_unions + "  ${te_sm.events_union} ${te_sm.events_union}_namespace;\n"
    .end if
    .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
  .end while
  .if ( ( "" != asm_unions ) or ( "" != ism_unions ) )

/*
 * roll-up of all events (with their parameters) for component ${te_c.Name}
 */
typedef union {
${ism_unions}\
${asm_unions}\
} ${union_name};
  .end if
.end function
.//
.//============================================================================
.// Supply received event data declaration.
.//============================================================================
.function TE_EVT_ReceivedEventDataDeclaration
  .param inst_ref sm_txn
  .param inst_ref sm_act
  .if ( not_empty sm_act )
    .if ( sm_act.Suc_Pars == 1 )
      .select any sm_sevt related by sm_txn->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503]
      .if ( empty sm_sevt )
        .// Should be a creation event.
        .select one sm_sevt related by sm_txn->SM_CRTXN[R507]->SM_LEVT[R509]->SM_SEVT[R526]
      .end if
      .select one sm_evt related by sm_sevt->SM_EVT[R525]
      .select one sm_nlevt related by sm_sevt->SM_NLEVT[R526]
      .while ( not_empty sm_nlevt )
        .select one sm_evt related by sm_nlevt->SM_PEVT[R527]->SM_EVT[R525]
        .select one sm_nlevt related by sm_evt->SM_SEVT[R525]->SM_NLEVT[R526]
      .end while
      .if ( not_empty sm_evt )
        .select one te_evt related by sm_evt->TE_EVT[R2036]
        .select any sm_evtdi related by sm_evt->SM_EVTDI[R532]
        .if ( not_empty sm_evtdi )
          .// CDS Careful here.  We may be forced to declare this.
          .select one te_c related by te_evt->TE_SM[R2071]->TE_CLASS[R2072]->TE_C[R2064]
          .if ( te_evt.Used or te_c.OptDisabled )
  ${te_evt.GeneratedName} * rcvd_evt = (${te_evt.GeneratedName} *) event;
          .end if
        .else
          .// No event data found, so look for signal parameters.
          .select one sm_sgevt related by sm_evt->SM_SEVT[R525]->SM_SGEVT[R526]
          .if ( not_empty sm_sgevt )
            .select any c_pp related by sm_sgevt->SPR_PS[R528]->SPR_PEP[R4503]->C_EP[R4501]->C_PP[R4006]->TE_PARM[R2048]
            .if ( empty c_pp )
              .select any c_pp related by sm_sgevt->SPR_RS[R529]->SPR_REP[R4502]->C_EP[R4500]->C_PP[R4006]->TE_PARM[R2048]
            .end if
            .if ( not_empty c_pp )
  ${te_evt.GeneratedName} * rcvd_evt = (${te_evt.GeneratedName} *) event;
            .end if
          .end if
        .end if
      .end if
    .end if
  .end if
.end function
.//
