/*
 * Mathematically Dependent Attribute:  ${te_attr.Name}
.if ( dbattr.Suc_Pars == 1 )
  .if ( te_c.RawComments )
 *
 * Action language follows:
 *
${dbattr.Action_Semantics}
  .end if
.else
 * WARNING:  unsuccessful or unparsed action
.end if
 */
${te_aba.ReturnDataType}
${te_aba.GeneratedName}( ${te_class.GeneratedName} * ${te_instance.self} )
{
${te_aba.code}
  return ${te_instance.self}->${te_attr.GeneratedName};
}
