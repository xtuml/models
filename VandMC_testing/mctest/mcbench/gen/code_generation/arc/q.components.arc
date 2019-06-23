.//============================================================================
.// $RCSfile: q.components.arc,v $
.//
.// Description:
.// Component ports top level query.
.//============================================================================
.//
.//
.//
.assign port_declarations = ""
.assign register_offset = ""
.assign TLM_message_order = ""
.select many te_cs from instances of TE_C where ( selected.included_in_build )
.for each te_c in te_cs
  .assign message_definitions = ""
  .assign message_declarations = ""
  .invoke s = TE_C_CreateIncludeList ( te_c )
  .assign include_files = s.include_files
  .// nested components
  .// ports
  .// messages
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .// Get the first te_mact(s) in the port.
    .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .invoke s = TE_MACT_CreateDeclarations( te_macts )
    .assign message_declarations = message_declarations + s.body
  .end for
  .include "${arc_path}/t.component.module.h"
  .emit to file "${te_file.system_include_path}/${te_c.module_file}.${te_file.hdr_file_ext}"
  .//
  .for each te_po in te_pos
    .// Get the first te_mact(s) in the port.
    .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .invoke s = TE_MACT_CreateDefinition( te_c, te_po, te_macts )
    .assign message_definitions = message_definitions + s.body
    .assign portisr = ""
    .if ( "TLM" == te_sys.SystemCPortsType )
      .invoke s = TE_MACT_CreateISR( te_macts )
      .assign portisr = s.body
      .invoke wrapper = Vista_TLM_CreateTCLFiles ( te_c )
      .assign register_offset = register_offset + wrapper.register_offset
      .// CDS This is not general purpose yet.  We need to handle multiple ports and ordering within ports and polymorphism.
      .select any first_te_mact related by te_macts->TE_C[R2002]->TE_MACT[R2002] where ( selected.Order == 0 )
      .invoke mo = TE_MACT_GenerateTLMMessageOrder( first_te_mact )
      .assign TLM_message_order = TLM_message_order + mo.message_order
    .end if
  .end for
  .//
  .// initialization
  .// Build the domain init information containing data structures collecting
  .// class info for the entire domain.
  .// This set of queries drives the generation of initialization and
  .// top-level domain connection to the rest of the system.
  .select one te_class related by te_c->TE_CLASS[R2103]
  .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
  .select any te_cia from instances of TE_CIA
  .select one te_dci related by te_c->TE_DCI[R2090]
  .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
  .select one te_sync related by te_c->TE_SYNC[R2097]
  .invoke s = CreateDomainInitSegment( te_c, te_sync, te_sm )
  .assign init_segment = s.body
  .//
  .// internal classes
  .//
  .assign function_definitions = ""
  .assign instance_dumpers = ""
  .assign class_info_init = ""
  .if ( te_c.internal_behavior )
    .invoke class_type_identifiers = CreateClassIdentifierFile( te_c, te_sync )
    .assign instance_dumpers = class_type_identifiers.instance_dumpers
    .assign class_info_init = class_type_identifiers.class_info_init
${class_type_identifiers.body}
    .emit to file "${te_file.domain_include_path}/${te_c.classes_file}.${te_file.hdr_file_ext}"
    .// functions
    .if ( not_empty te_sync )
      .invoke r = CreateSynchronousServiceClassDefinition( te_c, te_sync )
      .assign function_definitions = r.body
    .end if
  .end if
  .//
  .select any ilb_te_sync related by te_c->TE_SYNC[R2084] where ( selected.IsSafeForInterrupts )
  .include "${te_file.arc_path}/t.component.messages.c"
  .if ( te_c.isRealized )
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_realized.${te_file.src_file_ext}"
  .else
    .emit to file "${te_file.system_source_path}/${te_c.module_file}.${te_file.src_file_ext}"
  .end if
.end for
.//
.// ISR/TLM/SVX
.if ( te_sys.SystemCPortsType == "TLM" )
  .include "${te_file.arc_path}/t.component.regdefs.h"
  .emit to file "${te_file.system_source_path}/${te_file.registers}.${te_file.hdr_file_ext}"
.end if
.// registers/memory
