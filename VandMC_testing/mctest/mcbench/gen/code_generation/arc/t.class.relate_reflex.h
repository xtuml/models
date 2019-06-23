/* Navigation phrase:  R${te_rel.Numb}.'${rel_phrase}' */
.if ( te_rel.LinkNeeded or te_c.OptDisabled )
${externstatic}void ${relate_method}( ${te_class.GeneratedName} *, ${te_class.GeneratedName} *${thismodule} );
.else
/* Note:  R${te_rel.Numb}.'${rel_phrase}' never related (or not needed).  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
${externstatic}void ${unrelate_method}( ${te_class.GeneratedName} *, ${te_class.GeneratedName} *${thismodule} );
.else
/* Note:  R${te_rel.Numb}.'${rel_phrase}' never unrelated (or not needed).  */
.end if
.//
