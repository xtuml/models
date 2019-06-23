.if ( te_sm.complete )

/*
 * instance state machine event dispatching
 */
void
${te_class.dispatcher}( ${te_eq.base_event_type} * event )
{
  .if ( "C++" == te_target.language )
  ${te_c.Name} * thismodule = (${te_c.Name} *) event->thismodule;
  .end if
  .if ( can_self_create )
  ${te_instance.handle} instance;
  .else
  ${te_instance.handle} instance = GetEventTargetInstance( event );
  .end if
  ${te_typemap.event_number_name} event_number = GetOoaEventNumber( event );
  ${te_typemap.state_number_name} current_state;
  .if ( te_sm.txn_action_count > 0 )
  ${te_typemap.SEM_cell_name} next_state;
  .else
  ${te_typemap.state_number_name} next_state;
  .end if
  
  .if ( can_self_create )
  if ( 0 != GetIsCreationEvent( event ) ) {
    instance = ${te_instance.module}\
    .if ( te_class.Persistent )
${te_instance.create_persistent}\
    .else
${te_instance.create}\
    .end if
( ${dom_id}, ${te_class.system_class_number} );
    if ( 0 != instance ) {
    .if ( "" != init_uniques )
      ${te_class.GeneratedName} * i = (${te_class.GeneratedName} *) instance;
${init_uniques}\
    .end if
      instance->${te_instance.current_state} = UNINITIALIZED_STATE;
      SetEventTargetInstance( event, instance );
    } else {
    .// USER NOTE: This can happen if the object pool is depleted when the
    .//            self creation event is consumed (improper coloring).
    .// Add recovery/isolation logic as needed by your application here.
    .// The default is to ignore the self creation failure.
      /* Instance allocation failure - USER RECOVERY LOGIC IS TBD */
      ${te_callout.event_no_instance}( 0 );
    }
  } else {
    instance = GetEventTargetInstance( event );
  }
  .end if  .// can_self_create
  .if ( not_empty poly_rel_set )
    .if ( can_self_create )

    .end if
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
${poly_dispatcher} else\
  .end if
  if ( 0 != instance ) {
    current_state = instance->${te_instance.current_state};
    if ( current_state > ${te_sm.num_states} ) {
  .// USER NOTE: If you need additional recovery or fault isolation logic,
  .// define in this callout.  The default is to ignore the occurance.
      /* instance validation failure (object deleted while event in flight) */
      ${te_callout.event_no_instance}( event_number );
    } else {
      next_state = ${te_sm.SEMname}[ current_state ][ event_number ];
      if ( next_state <= ${te_sm.num_states} ) {
    .if ( te_c.StateTrace and te_class.IsTrace )
        ${te_trace.state_txn_start}( "${te_class.Key_Lett}", current_state, ${te_sm.state_names_array}[ current_state ] );
    .end if
        /* Update the current state and execute the state action.  */
        instance->${te_instance.current_state} = next_state;
        ( *${te_sm.action_array}[ next_state ] )( instance, event );
    .if ( te_c.StateTrace and te_class.IsTrace )
        ${te_trace.state_txn_end}( "${te_class.Key_Lett}", next_state, ${te_sm.state_names_array}[ next_state ] );
    .end if
  .if ( can_self_delete )

        /* Self deletion state transition? */
        if ( \
    .for each te_state in te_states
next_state == ${te_state.enumerator}\
      .if ( last te_states )
 ) {\
      .else
 || \
      .end if
    .end for
          ${te_instance.module}\
    .if ( te_class.Persistent )
${te_instance.delete_persistent}\
    .else
${te_instance.delete}\
    .end if
( instance, ${dom_id}, ${te_class.system_class_number} );
        }
  .end if  .// can_self_delete
  .if ( not_empty evt_cant_happen )
      } else if ( next_state == ${te_eq.cant_happen} ) {
          /* event cant happen */
          ${te_callout.event_cant_happen}( current_state, next_state, event_number );
    .if ( te_c.StateTrace and te_class.IsTrace )
          ${te_trace.state_txn_cant_happen}( "${te_class.Key_Lett}", current_state );
    .end if
  .end if
  .if ( not_empty evt_ignored )
      } else if ( next_state == ${te_eq.ignored} ) {
          /* event ignored */
    .if ( te_c.StateTrace and te_class.IsTrace )
          ${te_trace.state_txn_event_ignored}( "${te_class.Key_Lett}", current_state );
    .end if
  .end if
      } else {
  .if ( te_sm.txn_action_count > 0 )
    .if ( te_c.StateTrace and te_class.IsTrace )
        ${te_trace.state_txn_start}( "${te_class.Key_Lett}", current_state, ${te_sm.state_names_array}[ current_state ] );
    .end if
        ( *${te_sm.txn_action_array}[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->${te_instance.current_state} = next_state;
        ( *${te_sm.action_array}[ next_state ] )( instance, event );
    .if ( te_c.StateTrace and te_class.IsTrace )
        ${te_trace.state_txn_end}( "${te_class.Key_Lett}", next_state, ${te_sm.state_names_array}[ next_state ] );
    .end if
  .else
        /* empty else */
  .end if
      }
    }
  }
}
  .//
.else

  .if ( not_empty poly_rel_set )
/*
 * No transitions in state model, but polymorphic events are present.
 * This dispatch level will move a polymorphic event down the relationship
 * hierarchy as dictated by the application analysis.
 */
void
${te_class.dispatcher}( ${te_eq.base_event_type} * event )
{
  ${te_instance.handle} instance = GetEventTargetInstance( event );
${poly_dispatcher}
}
  .else
/*
 * For this state machine, there are either no events,
 * no transitions, or no states.
 */
void
${te_class.dispatcher}( ${te_eq.base_event_type} * event )
{
    .if ( empty polymorphic_event )
  /*
   * This is an empty state machine, which is not good to have.
   * But since there are no events that could land here, we will
   * ignore this and assume that it is an incomplete model.
   */
    .else
  /*
   * Since polymorphic events could land here, it is not safe to have
   * an invalid state machine.  We therefore cause a compilation error.
   * If you wish to allow this empty state model, define a function
   * to receive this invocation or eliminate it with a macro.
   * You have been warned.
   */
  Empty_state_model_Must_define_what_to_with_events_landing_here( event );
    .end if
}
  .end if
.end if
.//
