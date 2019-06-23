/*----------------------------------------------------------------------------
 * File:  ${te_c.module_file}.${te_file.src_file_ext}
 *
 * UML Component Port Messages
 * Component/Module Name:  ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/
.if ( "" != te_c.Descrip )
/*
 ${te_c.Descrip}
 */
.end if

#include "${te_file.types}.${te_file.hdr_file_ext}"
${include_files}\
.if ( te_c.internal_behavior )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
.end if
${message_definitions}
.if ( te_c.internal_behavior )
.include "${te_file.arc_path}/t.domain.functions.c"
.include "${te_file.arc_path}/t.domain_init.c"
.end if
.if ( "TLM" == te_sys.SystemCPortsType )
#if 0
/* disabled by default */
  .include "${te_file.arc_path}/t.component.ports.isr.c"
${portisr}\
}
#endif
.end if
