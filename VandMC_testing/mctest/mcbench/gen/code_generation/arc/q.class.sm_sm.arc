.//============================================================================
.// This query populates a template containing file for the states of a Finite
.// State Machine (FSM) implementation of xtUML state models.
.//============================================================================
.//
.//
.//
.include "${te_file.arc_path}/t.sm_sm.c"
.select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
.select many instance_sm_states related by sm_sm->SM_STATE[R501]
.for each sm_state in instance_sm_states
  .select one te_state related by sm_state->TE_STATE[R2037]
  .select one sm_act related by sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
  .select one te_act related by sm_act->TE_ACT[R2022]
  .if ( not_empty te_act )
    .select one te_aba related by te_act->TE_ABA[R2010]
    .// CDS relaxed same data needed
    .select any sm_txn related by sm_state->SM_TXN[R506]
    .invoke red = TE_EVT_ReceivedEventDataDeclaration( sm_txn, sm_act )
    .assign received_event_declaration = red.body
    .include "${te_file.arc_path}/t.class.sm_act.c"
  .end if
.end for
.select any te_state from instances of TE_STATE where ( false )
.//
.select many instance_sm_txns related by sm_sm->SM_TXN[R505]
.for each sm_txn in instance_sm_txns
  .select one sm_act related by sm_txn->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]
  .select one te_act related by sm_act->TE_ACT[R2022]
  .if ( not_empty te_act )
    .select one te_aba related by te_act->TE_ABA[R2010]
    .invoke red = TE_EVT_ReceivedEventDataDeclaration( sm_txn, sm_act )
    .assign received_event_declaration = red.body
    .include "${te_file.arc_path}/t.class.sm_act.c"
  .end if
.end for
.//
.select one sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
.select many class_sm_states related by sm_sm->SM_STATE[R501]
.for each sm_state in class_sm_states
  .select one te_state related by sm_state->TE_STATE[R2037]
  .select one sm_act related by sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
  .select one te_act related by sm_act->TE_ACT[R2022]
  .if ( not_empty te_act )
    .select one te_aba related by te_act->TE_ABA[R2010]
    .// CDS relaxed same data needed
    .select any sm_txn related by sm_state->SM_TXN[R506]
    .invoke red = TE_EVT_ReceivedEventDataDeclaration( sm_txn, sm_act )
    .assign received_event_declaration = red.body
    .include "${te_file.arc_path}/t.class.sm_act.c"
  .end if
.end for
.select any te_state from instances of TE_STATE where ( false )
.//
.select many class_sm_txns related by sm_sm->SM_TXN[R505]
.for each sm_txn in class_sm_txns
  .select one sm_act related by sm_txn->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]
  .select one te_act related by sm_act->TE_ACT[R2022]
  .if ( not_empty te_act )
    .select one te_aba related by te_act->TE_ABA[R2010]
    .invoke red = TE_EVT_ReceivedEventDataDeclaration( sm_txn, sm_act )
    .assign received_event_declaration = red.body
    .include "${te_file.arc_path}/t.class.sm_act.c"
  .end if
.end for
.//
.if ( ( ( empty instance_sm_states ) and ( empty class_sm_states ) ) and ( ( empty instance_sm_txns ) and ( empty class_sm_txns ) ) )
/*
 * This class is modeled as having a state chart, but it has no states.
 * This makes good sense in a supertype class receiving polymorphic events.
 * If this is not the intention, add states to the model or unmark the
 * instance or class state chart setting.
 */
static void empty_state_chart_action( void );
static void empty_state_chart_action( void ) {}
.end if
.//
