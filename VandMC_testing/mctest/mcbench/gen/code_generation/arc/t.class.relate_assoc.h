.if ( te_rel.LinkNeeded or te_c.OptDisabled )
${externstatic}void ${relate_method}( ${aone_te_class.GeneratedName} *, ${aoth_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  Link ${aone_te_class.Key_Lett} to ${aoth_te_class.Key_Lett} across R${te_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
${externstatic}void ${unrelate_method}( ${aone_te_class.GeneratedName} *, ${aoth_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} *${thismodule} );
.else
/* Note:  Unlink ${aone_te_class.Key_Lett} from ${aoth_te_class.Key_Lett} across R${te_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.//
