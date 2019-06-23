.if ( te_rel.LinkNeeded or te_c.OptDisabled )
${externstatic}void ${relate_method}( ${part_te_class.GeneratedName} *, ${form_te_class.GeneratedName} *${thismodule} );
.else
/* xtUML WARNING:  ${part_obj.Key_Lett}${part_mult_cmt}R${te_rel.Numb}${form_mult_cmt}${o_obj.Key_Lett} never related!  */
.end if
.//
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
${externstatic}void ${unrelate_method}( ${part_te_class.GeneratedName} *, ${form_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  ${part_obj.Key_Lett}${part_mult_cmt}R${te_rel.Numb}${form_mult_cmt}${o_obj.Key_Lett} unrelate accessor not needed */
.end if
.//
