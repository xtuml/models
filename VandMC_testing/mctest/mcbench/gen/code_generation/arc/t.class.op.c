.//

/*
 * ${prelude} operation:  ${o_tfr.Name}
.if ( ( te_c.RawComments ) and ( not gen_declaration ) )
 *
 * Action language follows:
 *
${o_tfr.Action_Semantics}
.end if
 */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(\
.if ( 0 != te_tfr.Instance_Based )
 ${te_class.GeneratedName} * ${te_instance.self}\
   .if ( "" != te_aba.ParameterDefinition )
,\
   .end if
.end if
${te_aba.ParameterDefinition})
{
  .if ( o_tfr.Suc_Pars == 1 )
${te_aba.code}
  .else
  /* WARNING!  Skipping unsuccessful or unparsed operation ${te_c.Name}::${te_class.Name}::${te_tfr.Name} */
    .print "WARNING:  unsuccessful or unparsed operation ${te_c.Name}::${te_class.Name}::${te_tfr.Name}"
  .end if
}
.//
