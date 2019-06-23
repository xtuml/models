${ws}\
.if ( self_directed )
${te_instance.module}${te_eq.self}( \
.else
${te_instance.module}${te_eq.non_self}( \
.end if
(${te_eq.base_event_type} *) ${te_val.buffer} );
