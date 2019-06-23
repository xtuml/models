${ws}${te_set.module}${te_set.clear}( ${te_select_related.result_var} );
${ws}if ( 0 != ${te_lnk.left} ) {
${ws}  ${te_set.module}${te_set.copy}( ${te_select_related.result_var}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}}
