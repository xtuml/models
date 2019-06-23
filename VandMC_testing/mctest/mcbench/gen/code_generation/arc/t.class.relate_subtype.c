.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE ${super_te_class.Key_Lett} TO ${sub_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${sub_te_class.scope}${relate_method}( ${super_te_class.GeneratedName} * supertype, ${sub_te_class.GeneratedName} * subtype${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${sub_te_class.Key_Lett}", "${relate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_referentials}\
  /* Optimized linkage for ${sub_te_class.Key_Lett}->${super_te_class.Key_Lett}[R${te_rel.Numb}] */
  subtype->${super_te_oir.data_member} = supertype;
  /* Optimized linkage for ${super_te_class.Key_Lett}->${sub_te_class.Key_Lett}[R${te_rel.Numb}] */
  supertype->${sub_te_oir.data_member} = subtype;
  supertype->${sub_te_oir.object_id} = ${sub_te_class.system_class_number};
${persist_relate.body}\
}

.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )

/*
 * UNRELATE ${super_te_class.Key_Lett} FROM ${sub_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${sub_te_class.scope}${unrelate_method}( ${super_te_class.GeneratedName} * supertype, ${sub_te_class.GeneratedName} * subtype${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${sub_te_class.Key_Lett}", "${unrelate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  .if ( super_te_oir.NavigatedTo or te_c.OptDisabled )
  subtype->${super_te_oir.data_member} = 0;
  .else
  /* Note:  ${sub_te_class.Key_Lett}->${super_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
  .if ( sub_te_oir.NavigatedTo or te_c.OptDisabled )
  supertype->${sub_te_oir.data_member} = 0;
  supertype->${sub_te_oir.object_id} = 0;
  .else
  /* Note:  ${super_te_class.Key_Lett}->${sub_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
${persist_unrelate.body}\
}

.end if
.//
