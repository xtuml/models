.//============================================================================
.// External Entity bridge process skeleton generator.
.//============================================================================
.//
.//
.//
.invoke include_files = ClassAddIncludeFiles( te_c, false )
.for each te_ee in te_ees
  .select many te_brgs related by te_ee->S_EE[R2020]->S_BRG[R19]->TE_BRG[R2025]
    .//
    .// Generate declaration file.
    .// Note: The order of these is important.  The body is generated first
    .//       to ensure that the data types are marked as used.
    .invoke ee_body = TE_BRG_CreateDeclarations( te_ee, te_brgs )
    .include "${arc_path}/t.ee.h"
    .emit to file "${te_file.system_include_path}/${te_ee.Include_File}"
    .//
    .// Generate skeleton implementation file.
    .invoke ee_body = TE_BRG_CreateDefinition( te_sys, te_ee, te_brgs )
    .assign includes_body = ""
    .include "${arc_path}/t.ee.c"
    .emit to file "${te_file.system_source_path}/${te_ee.file}.${te_file.src_file_ext}"
.end for
.//
