.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE <left> ${assoc_obj.Key_Lett} TO <right> ${assoc_obj.Key_Lett} ACROSS \
R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett}
 */
void
${assr_te_class.scope}${relate_method}( ${assoc_te_class.GeneratedName} * left, ${assoc_te_class.GeneratedName} * right, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_obj.Key_Lett}", "${relate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_aone_referentials}\
${set_aoth_referentials}\
  /* Initialize optimized relationship storage extended attributes */
  .if ( not towards_aone )
  assr->${aone_te_oir.data_member} = left;  /* RAL 1 */
  assr->${aoth_te_oir.data_member} = right; /* RAL 2 */
  .else
  assr->${aone_te_oir.data_member} = right; /* RAL 3 */
  assr->${aoth_te_oir.data_member} = left;  /* RAL 4 */
  .end if  .// not towards_aone
  .if ( aone.Mult == 0 )
    .if ( towards_aone )
  left->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase} = assr; /* RAL 5 */
    .else
  right->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase} = assr; /* RAL 6 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.insert_element}( &left->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase}, assr ); /* RAL 7 */
    .else
  ${te_set.module}${te_set.insert_element}( &right->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase}, assr ); /* RAL 8 */
    .end if
  .end if
  .if ( aoth.Mult == 0 )
    .if ( towards_aone )
  right->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase} = assr; /* RAL 9 */
    .else
  left->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase} = assr; /* RAL 10 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.insert_element}( &right->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase}, assr ); /* RAL 11 */
    .else
  ${te_set.module}${te_set.insert_element}( &left->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase}, assr ); /* RAL 12 */
    .end if
  .end if
${persist_relate.body}\
}
.else
/* Note:  Link ${assoc_obj.Key_Lett} to ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' using ${assr_obj.Key_Lett} not needed.  */
.end if .// te_rel.LinkNeeded or te_c.OptDisabled

.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
/*
 * UNRELATE <left> ${assoc_obj.Key_Lett} FROM <right> ${assoc_obj.Key_Lett} ACROSS \
R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett}
 */
void
${assr_te_class.scope}${unrelate_method}( ${assoc_te_class.GeneratedName} * left, ${assoc_te_class.GeneratedName} * right, ${assr_te_class.GeneratedName} * assr${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (left == 0) || (right == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_obj.Key_Lett}", "${unrelate_method}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  .if ( not towards_aone )
  assr->${aone_te_oir.data_member} = 0; /* RAU 1 */
  assr->${aoth_te_oir.data_member} = 0; /* RAU 2 */
  .else
  assr->${aone_te_oir.data_member} = 0; /* RAU 3 */
  assr->${aoth_te_oir.data_member} = 0; /* RAU 4 */
  .end if  .// not towards_aone
  .if ( aone.Mult == 0 )
    .if ( towards_aone )
  left->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase} = 0; /* RAU 5 */
    .else
  right->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase} = 0; /* RAU 6 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.remove_element}( &left->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase}, assr ); /* RAU 7 */
    .else
  ${te_set.module}${te_set.remove_element}( &right->${assr_te_oir.data_member}_${aone_te_oir.rel_phrase}, assr ); /* RAU 8 */
    .end if
  .end if
  .if ( aoth.Mult == 0 )
    .if ( towards_aone )
  right->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase} = 0; /* RAU 9 */
    .else
  left->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase} = 0; /* RAU 10 */
    .end if
  .else
    .if ( towards_aone )
  ${te_set.module}${te_set.remove_element}( &right->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase}, assr ); /* RAU 11 */
    .else
  ${te_set.module}${te_set.remove_element}( &left->${assr_te_oir.data_member}_${aoth_te_oir.rel_phrase}, assr ); /* RAU 12 */
    .end if
  .end if
${persist_unrelate.body}\
}
.else
/* Note:  Unlink ${assoc_obj.Key_Lett} from ${assoc_obj.Key_Lett} across R${te_rel.Numb}.'${rel_phrase}' USING ${assr_obj.Key_Lett} not needed.  */
.end if
.//
