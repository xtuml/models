.if ( te_sm.complete )

/*
 * class-based state machine event dispatching
 */
void
${te_class.CBdispatcher}( ${te_eq.base_event_type} * event )
{
  static ${te_instance.base} class_based_singleton = { ${te_sm.initial_state} };
  ${te_typemap.event_number_name} event_number = GetOoaEventNumber( event );
  ${te_typemap.state_number_name} current_state = class_based_singleton.${te_instance.current_state};
  .if ( te_sm.txn_action_count > 0 )
  ${te_typemap.SEM_cell_name} next_state = ${te_sm.SEMname}[ current_state ][ event_number ];
  .else
  ${te_typemap.state_number_name} next_state = ${te_sm.SEMname}[ current_state ][ event_number ];
  .end if

  if ( next_state <= ${te_sm.num_states} ) {
    .if ( te_c.StateTrace and te_class.IsTrace )
    ${te_trace.state_txn_start}( "${te_class.Key_Lett}", current_state, ${te_sm.state_names_array}[ current_state ] );
    .end if
    /* Update the current state and execute the state action.  */
    class_based_singleton.${te_instance.current_state} = next_state;
    ( *${te_sm.action_array}[ next_state ] )( &class_based_singleton, event );
    .if ( te_c.StateTrace and te_class.IsTrace )
    ${te_trace.state_txn_end}( "${te_class.Key_Lett}", next_state, ${te_sm.state_names_array}[ next_state ] );
    .end if
  } else {
    if ( ${te_eq.cant_happen} == next_state ) {
      /* Event cannot happen.  */
      ${te_callout.event_cant_happen}( current_state, next_state, event_number );
    .if ( te_c.StateTrace and te_class.IsTrace )
      ${te_trace.state_txn_cant_happen}( "${te_class.Key_Lett}", current_state );
    .end if
    } else if ( ${te_eq.ignored} == next_state ) {
      /* Event ignored */
    .if ( te_c.StateTrace and te_class.IsTrace )
      ${te_trace.state_txn_event_ignored}( "${te_class.Key_Lett}", current_state );
    .end if
    } else {
  .if ( te_sm.txn_action_count > 0 )
    .if ( te_c.StateTrace and te_class.IsTrace )
      ${te_trace.state_txn_start}( "${te_class.Key_Lett}", current_state, ${te_sm.state_names_array}[ current_state ] );
    .end if
      ( *${te_sm.txn_action_array}[ (next_state>>8)-1 ] )( &class_based_singleton, event );
      next_state = next_state & 0x00ff;
      class_based_singleton.${te_instance.current_state} = next_state;
      ( *${te_sm.action_array}[ next_state ] )( &class_based_singleton, event );
    .if ( te_c.StateTrace and te_class.IsTrace )
      ${te_trace.state_txn_end}( "${te_class.Key_Lett}", next_state, ${te_sm.state_names_array}[ next_state ] );
    .end if
  .else
      /* Translation/memory/stack error, etc - TBD */
  .end if
    }
  }
}
.else

/*
 * There are either no events defined for this state machine,
 * no transitions, or no states.  So we will ignore _all_ events.
 */
void
${te_class.CBdispatcher}( ${te_eq.base_event_type} * event )
{}
.end if
.//
