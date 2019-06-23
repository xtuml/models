${ws}${te_select_related.result_var} = 0;
${ws}{${te_select_related.te_classGeneratedName} * ${te_lnk.left};
${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;
${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );
${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {
${ws}  ${te_lnk.te_classGeneratedName} * selected = ${te_lnk.left}->${te_lnk.linkage};
${ws}  if ( ( 0 != selected ) && ( ${te_select_related.where_clause} ) ) {
.if ( "" != subtypecheck )
    ${subtypecheck}
.end if
${ws}    ${te_select_related.result_var} = selected;
${ws}    break;
${ws}}}}
