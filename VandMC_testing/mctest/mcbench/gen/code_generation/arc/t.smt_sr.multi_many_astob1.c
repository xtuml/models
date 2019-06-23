${ws}{${te_lnk.te_classGeneratedName} * ${te_lnk.linkage} = ${te_lnk.left}->${te_lnk.linkage};
${ws}if ( ! ${te_set.module}${te_set.contains}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} ) ) {
${ws}  ${te_set.module}${te_set.insert_element}( (${te_set.scope}${te_set.base_class} *) ${te_select_related.result_var}, ${te_lnk.linkage} );
${ws}}}
