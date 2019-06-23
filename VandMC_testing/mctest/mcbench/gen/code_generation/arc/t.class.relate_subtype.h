.if ( te_rel.LinkNeeded or te_c.OptDisabled )
${externstatic}void ${relate_method}( ${super_te_class.GeneratedName} *, ${sub_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  ${super_te_class.Key_Lett}<-R${te_rel.Numb}->${sub_te_class.Key_Lett} never related (or note needed).  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
${externstatic}void ${unrelate_method}( ${super_te_class.GeneratedName} *, ${sub_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  No ${super_te_class.Key_Lett}<-R${te_rel.Numb}->${sub_te_class.Key_Lett} unrelate accessor needed.  */
.end if
.//
