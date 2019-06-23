${ws}{${te_select_related.result_var} = 0;
${ws}{${te_class.GeneratedName} * selected = ( 0 != ${te_lnk.left} ) ? ${te_lnk.left}->${te_lnk.linkage} : 0;
${ws}if ( ( 0 != selected ) && ( ${te_select_related.where_clause} ) ) {
${ws}  ${te_select_related.result_var} = selected;
${ws}}}}
