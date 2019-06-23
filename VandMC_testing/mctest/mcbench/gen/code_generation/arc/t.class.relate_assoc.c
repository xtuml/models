.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE ${aone_te_class.Key_Lett} TO ${aoth_te_class.Key_Lett} ACROSS R$t{r_rel.Numb} USING ${assr_te_class.Key_Lett}
 */
void
${assr_te_class.scope}${relate_method}( ${aone_te_class.GeneratedName} * aone, ${aoth_te_class.GeneratedName} * aoth, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_te_class.Key_Lett}", "${relate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_aone_referentials}\
${set_aoth_referentials}\
  /* Initialize optimized relationship storage extended attributes */
  assr->${aone_te_oir.data_member} = aone;
  assr->${aoth_te_oir.data_member} = aoth;
  .if ( aoth.Mult == 0 )
  aone->${assr_te_oir.data_member} = assr;
  .else
  ${te_set.module}${te_set.insert_element}( &aone->${assr_te_oir.data_member}, assr );
  .end if
  .if ( aone.Mult == 0 )
  aoth->${assr_te_oir.data_member} = assr;
  .else
  ${te_set.module}${te_set.insert_element}( &aoth->${assr_te_oir.data_member}, assr );
  .end if
${persist_relate.body}\
}
.else
/* Note:  Link ${aone_te_class.Key_Lett} to ${aoth_te_class.Key_Lett} across R$t{r_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if

.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
/*
 * UNRELATE ${aone_te_class.Key_Lett} FROM ${aoth_te_class.Key_Lett} ACROSS \
R$t{r_rel.Numb} USING ${assr_te_class.Key_Lett}
 */
void
${assr_te_class.scope}${unrelate_method}( ${aone_te_class.GeneratedName} * aone, ${aoth_te_class.GeneratedName} * aoth, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_te_class.Key_Lett}", "${unrelate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  assr->${aone_te_oir.data_member} = 0;
  assr->${aoth_te_oir.data_member} = 0;
  .if ( aoth.Mult == 0 )
  aone->${assr_te_oir.data_member} = 0;
  .else
  ${te_set.module}${te_set.remove_element}( &aone->${assr_te_oir.data_member}, assr );
  .end if
  .if ( aone.Mult == 0 )
  aoth->${assr_te_oir.data_member} = 0;
  .else
  ${te_set.module}${te_set.remove_element}( &aoth->${assr_te_oir.data_member}, assr );
  .end if
${persist_unrelate.body}\
}
.else
/* Note:  Unlink ${aone_te_class.Key_Lett} from ${aoth_te_class.Key_Lett} across R$t{r_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.//
