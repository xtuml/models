${ws}${te_set.module}${te_set.clear}( ${te_select_related.result_var} );
${ws}if ( 0 != ${te_lnk.linkage} ) {
${ws}  ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} );
${ws}}
