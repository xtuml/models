.if ( is_reflexive )
${ws}${te_class.scope}${relate_method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
.else
  .if ( left_is_formalizer )
${ws}${te_class.scope}${relate_method}( ${oth_te_var.buffer}, ${one_te_var.buffer}${thismodule} );
.// Alf R${r_rel.Numb} -> add ( ${oth_o_obj.Key_Lett}=>${oth_te_var.buffer}, ${one_o_obj.Key_Lett}=>${one_te_var.buffer} )
  .else
${ws}${te_class.scope}${relate_method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
.// Alf R${r_rel.Numb} -> add ( ${one_o_obj.Key_Lett}=>${one_te_var.buffer}, ${oth_o_obj.Key_Lett}=>${oth_te_var.buffer} )
  .end if
.end if
