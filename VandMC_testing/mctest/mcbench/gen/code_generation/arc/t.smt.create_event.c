.if ( "" != parameters )
${ws}${te_var.buffer} = (${te_evt.GeneratedName} *) ${te_instance.module}${te_eq.new}( (void *) ${recipient}, &${te_evt.GeneratedName}c );
.// Initialize supplemental data parameters.
${ws}${parameters}\
.else
${ws}${te_var.buffer} = ${te_instance.module}${te_eq.new}( (void *) ${recipient}, &${te_evt.GeneratedName}c );
.end if
.if ( "SystemC" == te_thread.flavor )
${ws}${te_var.buffer}->sc_e = &(${te_instance.module}sc_${te_evt.GeneratedName});
.end if
