.//============================================================================
.// This archetype template generates the state and transition action routines
.// for the Finite State Machine (FSM) implementation of xtUML state models.
.//============================================================================
.//

/*
.if ( not_empty te_state )
 * State ${te_state.Numb}:  [${te_state.name}]
.end if
.// Note - nothing precludes a state from being both creation and deletion.
.//.if ( sm_state.Final == 1 )
.// * Note: Self deletion state (asynchronous deletion)
.//.end if
.if ( not_empty sm_act )
  .if ( sm_act.Suc_Pars == 1 )
      .if ( te_c.RawComments )
 *
 * Action language follows:
 *
${sm_act.Action_Semantics}
      .end if
    .else
 * WARNING:  unsuccessful or unparsed action
    .end if
  .end if
 */
static void ${te_act.GeneratedName}( ${te_class.GeneratedName} *, const ${te_eq.base_event_type} * const );
static void
${te_act.GeneratedName}( ${te_class.GeneratedName} * ${te_instance.self}, const ${te_eq.base_event_type} * const event )
{
  .if ( not_empty sm_act )
    .if ( sm_act.Suc_Pars == 1 )
      .if ( "C++" == te_target.language )
  ${te_c.Name} * thismodule = (${te_c.Name} *) event->thismodule;
      .end if
${received_event_declaration}\
${te_aba.code}\
    .else
      .print "\n  WARNING!  Skipping unsuccessful or unparsed action for class ${te_class.Name} (${te_class.Key_Lett}) state ${te_state.Name}"
  /* WARNING!  Skipping unsuccessful or unparsed action for class ${te_class.Name} (${te_class.Key_Lett}) state ${te_state.Name}" */
    .end if
  .end if
}
.//
