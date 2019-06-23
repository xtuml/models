${ws}{ ${te_set.scope}${te_set.iterator_class_name} ${iterator};
${ws}${te_for.class_name} * ${current_instance};
${ws}${te_set.iterator_reset}( &${iterator}, ${te_for.set_variable} );
${ws}while ( (${current_instance} = (${te_for.class_name} *)${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
${ws}  ${te_for.loop_variable} = ${current_instance}; {
