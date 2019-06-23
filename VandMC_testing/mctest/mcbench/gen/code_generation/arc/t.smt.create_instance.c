${ws}${te_var.buffer} = (${te_class.GeneratedName} *) ${te_instance.module}\
.if ( te_class.Persistent )
${te_instance.create_persistent}\
.else
${te_instance.create}\
.end if
( ${dom_id}, ${te_class.system_class_number} );
.if ( "" != init_uniques )
${ws}${init_uniques}\
.end if
