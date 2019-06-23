${ws}{\
  .if ( "" != parameters )
    .// Create the event
 ${te_evt.GeneratedName} * ${te_eq.event_message_variable} = (${te_evt.GeneratedName} *) ${te_instance.module}${te_eq.new}( ${var_name}, &${te_evt.GeneratedName}c );
    .// Initialize supplemental data parameters
${parameters}
  .else
    .// Create the event using the base type, since no supplemental data.
    .// No special casting will then be required.  Good for MISRA.
 ${te_eq.base_event_type} * ${te_eq.event_message_variable} = ${te_instance.module}${te_eq.new}( ${var_name}, &${te_evt.GeneratedName}c );
  .end if
  .if ( "SystemC" == te_thread.flavor )
  ${te_eq.event_message_variable}->sc_e = &(${te_instance.module}sc_${te_evt.GeneratedName});
  .end if
  .//
  .// Send the event.
  .if ( self_directed )
    .// Self directed event
${ws}  ${te_instance.module}${te_eq.self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .else
    .// normal event
    .//
    .// We must handle event prioritization.
    .// Write our own handle into the event for prioritization (and
    .// instrumentation) purposes.  We will do this differently depending
    .// upon the type of action we are.  MDAs, bridges (outbound) and
    .// operations use GetSelf.  All others use the variable self.
    .// CDS:  Deal with event prioritization and semantics type.
    .if ( false )
      .if ( 1 == 3 )
${ws}  ${te_instance.self} = (${te_instance.handle}) ${te_instance.global_self}();
  if ( ${te_instance.self} == 0 ) { ${te_instance.self} = (${te_instance.handle}) &${te_instance.self}; }
      .end if
      .if ( ( ( 1 == 5 ) or ( 1 == 4 ) ) or ( 1 == 2 ) )
${ws}  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.global_self}() );
      .elif ( ( ( 1 == 3 ) or ( 1 == 1 ) ) or ( 1 == 0 ) )
${ws}  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.self} );
      .else
        .// "WARNING:  Unrecognized action semantics type."
      .end if
    .end if
${ws}  ${te_instance.module}${te_eq.non_self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .end if
${ws}}
