.if ( 5 == te_dt.Core_Typ )
  .// unique_id
  .if ( not_empty_o_oida )
${instance}->${te_attr.GeneratedName} = ${te_prefix.type}ID_factory();
  .end if
.elif ( ( 2 == te_dt.Core_Typ ) or ( 3 == te_dt.Core_Typ ) )
  .// integer or real
  .if ( ( "" != te_attr.DefaultValue ) and ( not te_sys.InstanceLoading ) )
${instance}->${te_attr.GeneratedName} = ${te_attr.DefaultValue}; /* DefaultValue */
  .end if
.elif ( 4 == te_dt.Core_Typ )
  .// string
  .if ( ( "" != te_attr.DefaultValue ) and ( not te_sys.InstanceLoading ) )
${te_instance.module}${te_string.strcpy}( ${instance}->${te_attr.GeneratedName}, ${te_attr.DefaultValue} ); /* DefaultValue */
  .end if
.end if
