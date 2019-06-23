.//
${te_aba.ReturnDataType} ${te_aba.GeneratedName}( \
.if ( ( empty te_parm ) and ( te_tfr.Instance_Based == 0 ) )
void );
.elif ( ( empty te_parm ) and ( te_tfr.Instance_Based == 1 ) )
${instance_based_self_declaration} );
.elif ( ( not_empty te_parm ) and ( te_tfr.Instance_Based == 0 ) )
${te_aba.ParameterDeclaration});
.elif ( ( not_empty te_parm ) and ( te_tfr.Instance_Based == 1 ) )
${instance_based_self_declaration},${te_aba.ParameterDeclaration});
.end if
.//
