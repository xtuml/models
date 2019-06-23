.if ( is_reflexive )
${ws}${te_class.scope}${unrelate_method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
.else
  .if ( left_is_formalizer )
${ws}${te_class.scope}${unrelate_method}( ${oth_te_var.buffer}, ${one_te_var.buffer}${thismodule} );
  .else
${ws}${te_class.scope}${unrelate_method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
  .end if
.end if
