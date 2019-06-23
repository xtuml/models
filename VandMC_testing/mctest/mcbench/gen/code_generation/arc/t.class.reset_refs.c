.if ( te_dt.Initial_Value != "CTOR" )
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${te_dt.Initial_Value};
.else
  ${te_instance.module}${te_string.memset}( &${form_ptr}->${ref_te_attr.GeneratedName}, 0, sizeof( ${form_ptr}->${ref_te_attr.GeneratedName} ) );
.end if
.//
