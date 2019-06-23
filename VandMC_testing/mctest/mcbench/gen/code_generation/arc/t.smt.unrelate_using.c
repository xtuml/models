${ws}${ass_te_class.scope}${unrelate_method}( \
.if ( is_reflexive )
${one_te_var.buffer}, ${oth_te_var.buffer}, \
.else
  .if ( left_obj_is_aone )
${one_te_var.buffer}, ${oth_te_var.buffer}, \
  .else
${oth_te_var.buffer}, ${one_te_var.buffer}, \
  .end if
.end if
${ass_te_var.buffer}${thismodule} );
