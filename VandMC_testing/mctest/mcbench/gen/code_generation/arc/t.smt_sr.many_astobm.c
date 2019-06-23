${ws}${te_set.module}${te_set.clear}( ${te_select_related.result_var} );
${ws}{${te_select_related.te_classGeneratedName} * ${te_lnk.left};
${ws}${te_set.scope}${te_set.iterator_class_name} start_many_iterator;
${ws}${te_set.iterator_reset}( &start_many_iterator, ${te_select_related.start_var} );
${ws}while ( 0 != ( ${te_lnk.left} = (${te_select_related.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &start_many_iterator ) ) ) {
${ws}  ${te_lnk.te_classGeneratedName} * ${te_lnk.linkage};
${ws}  ${te_set.scope}${te_set.iterator_class_name} ${te_lnk.iterator};
${ws}  ${te_set.iterator_reset}( &${te_lnk.iterator}, &${te_lnk.left}->${te_lnk.linkage} );
${ws}  while ( 0 != ( ${te_lnk.linkage} = (${te_lnk.te_classGeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${te_lnk.iterator} ) ) ) {
${ws}    if ( ! ${te_set.module}${te_set.contains}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} ) ) {
${ws}      ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} );
${ws}}}}}
