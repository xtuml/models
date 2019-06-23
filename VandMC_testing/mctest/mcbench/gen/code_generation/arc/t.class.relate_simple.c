.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE ${part_te_class.Key_Lett} TO ${form_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${form_te_class.scope}${relate_method}( ${part_te_class.GeneratedName} * part, ${form_te_class.GeneratedName} * form${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${form_te_class.Key_Lett}", "${relate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_referentials}\
  .if ( part_te_oir.NavigatedTo or te_c.OptDisabled )
    .if ( part.Mult == 0 )
  form->${part_te_oir.data_member} = part;
    .else
  ${te_set.module}${te_set.insert_element}( &form->${part_te_oir.data_member}, (${te_set.scope}${te_set.base_class} *) part );
    .end if
  .else
  /* Note:  ${form_te_class.Key_Lett}->${part_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
  .if ( form_te_oir.NavigatedTo or te_c.OptDisabled )
    .if ( form.Mult == 0 )
  part->${form_te_oir.data_member} = form;
    .else
  ${te_set.module}${te_set.insert_element}( &part->${form_te_oir.data_member}, (${te_set.scope}${te_set.base_class} *) form );
    .end if
  .else
  /* Note:  ${part_te_class.Key_Lett}->${form_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
${persist_relate.body}\
}
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )

/*
 * UNRELATE ${part_te_class.Key_Lett} FROM ${form_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${form_te_class.scope}${unrelate_method}( ${part_te_class.GeneratedName} * part, ${form_te_class.GeneratedName} * form${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${form_te_class.Key_Lett}", "${unrelate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  .if ( part_te_oir.NavigatedTo or te_c.OptDisabled )
    .if ( part.Mult == 0 )
  form->${part_te_oir.data_member} = 0;
    .else
  ${te_set.module}${te_set.remove_element}( &form->${part_te_oir.data_member}, (${te_set.scope}${te_set.base_class} *) part );
    .end if
  .else
  /* Note:  ${form_te_class.Key_Lett}->${part_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
  .if ( form_te_oir.NavigatedTo or te_c.OptDisabled )
    .if ( form.Mult == 0 )
  part->${form_te_oir.data_member} = 0;
    .else
  ${te_set.module}${te_set.remove_element}( &part->${form_te_oir.data_member}, (${te_set.scope}${te_set.base_class} *) form );
    .end if
  .else
  /* Note:  ${part_te_class.Key_Lett}->${form_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
${persist_unrelate.body}\
}
.end if
.//
