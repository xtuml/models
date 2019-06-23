${ws}${te_lnk.te_classGeneratedName} * ${te_lnk.linkage} = ${cast}${te_lnk.left}->${te_lnk.linkage};
.if ( result_equals_start )
${ws}${te_select_related.result_var} = 0;
.end if
${ws}if ( 0 != ${te_lnk.linkage} )${subtypecheck} {
