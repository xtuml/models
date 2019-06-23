${ws}${te_select_related.result_var} = 0;
${ws}if ( 0 != ${te_lnk.left} ) {
${ws}  ${te_lnk.te_classGeneratedName} * selected;
${ws}  ${te_set.scope}${te_set.iterator_class_name} ${te_lnk.iterator};
${ws}  ${te_set.iterator_reset}( &${te_lnk.iterator}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}  while ( 0 != ( selected = (${te_lnk.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${te_lnk.iterator} ) ) ) {
${ws}    if ( ${te_select_related.where_clause} ) {
${ws}      ${te_select_related.result_var} = selected;
${ws}      break;
${ws}}}}
