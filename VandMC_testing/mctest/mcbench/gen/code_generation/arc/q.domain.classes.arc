.//============================================================================
.// This archetype file contains the query functions for building a list
.// of class identifiers for a domain.
.//============================================================================
.//
.function CreateDomainInitSegment
  .param inst_ref te_c
  .param inst_ref te_sync
  .param inst_ref te_sm
  .select any te_file from instances of TE_FILE
  .select any te_set from instances of TE_SET
  .select any te_target from instances of TE_TARGET
  .select any te_thread from instances of TE_THREAD
  .assign attr_has_process_declaration = ""
  .while ( not_empty te_sync )
    .if ( te_sync.IsInitFunction and te_sync.XlateSemantics )
      .include "${te_file.arc_path}/t.domain_init.te_sync.c"
    .end if
    .select one te_sync related by te_sync->TE_SYNC[R2095.'precedes']
  .end while
.end function
.//
.function CreateClassIdentifierFile
  .param inst_ref te_c
  .param inst_ref te_sync
  .select any te_copyright from instances of TE_COPYRIGHT
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .assign class_or_struct = "struct"
  .assign class_includes = ""
  .if ( "C++" == te_target.language )
    .assign class_or_struct = "class"
  .else
    .assign class_includes = "#include ""${te_c.module_file}.${te_file.hdr_file_ext}"""
  .end if
  .assign class_numbers = ""
  .assign class_number_count = 0
  .assign task_numbers = ""
  .assign class_dispatchers = ""
  .assign class_typedefs = ""
  .assign attr_class_info_init = ""
  .assign class_union = "  char ${te_c.Name}_dummy;\\n"
  .assign ee_includes = ""
  .assign instance_loaders = ""
  .assign batch_relaters = ""
  .assign attr_instance_dumpers = ""
  .assign type_name = ""
  .assign class_name = ""
  .assign number_of_state_machines = 0
  .assign delimiter = ""
  .// Get collections of active classes, assigner/class-based classes
  .// and passive classes.
  .select any te_class related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .// Find first te_class.
  .select one first_te_class related by te_c->TE_CLASS[R2103]
  .assign object_set_type = 0
  .while ( object_set_type < 3 )
    .assign te_class = first_te_class
    .while ( not_empty te_class )
      .assign combineddispatchers = te_class.dispatcher + te_class.CBdispatcher
      .if ( ( ( ( 0 == object_set_type ) and ( "" != combineddispatchers ) ) or ( ( 1 == object_set_type ) and ( "" != te_class.CBdispatcher ) ) ) or ( ( 2 == object_set_type ) and ( "" == combineddispatchers ) ) )
      .select one o_obj related by te_class->O_OBJ[R2019]
      .assign dispatcher = "0"
      .if ( object_set_type == 1 )
        .// assigner
        .assign type_name = te_class.CBsystem_class_number
        .assign class_name = te_class.CBGeneratedName
        .assign dispatcher = te_class.CBdispatcher
        .assign attr_class_info_init = ( attr_class_info_init + delimiter ) + "\n  0"
      .else
        .invoke r = GetFixedSizeClassExtentInfo( te_class )
        .assign extent = r.result
        .assign attr_class_info_init = ( attr_class_info_init + delimiter ) + ( "\n  &" + extent )
        .assign type_name = te_class.system_class_number
        .assign class_name = te_class.GeneratedName
        .if ( object_set_type == 0 )
          .if ( "" != te_class.dispatcher )
            .assign dispatcher = te_class.dispatcher
          .end if
        .end if
      .end if
      .if ( object_set_type < 2 )
        .assign class_dispatchers = class_dispatchers + "${delimiter}\\n  ${dispatcher}"
        .assign task_numbers = task_numbers + "${delimiter} ${te_class.Task}"
        .assign number_of_state_machines = number_of_state_machines + 1
      .end if
      .if ( ( 0 == object_set_type ) or ( 2 == object_set_type ) )
        .assign class_name = te_class.GeneratedName
        .assign instance_loaders = instance_loaders + "${delimiter}\\n {""${o_obj.Key_Lett}"", ${type_name}, ${class_name}_instanceloader}"
        .assign batch_relaters = batch_relaters + "${delimiter}\\n ${class_name}_batch_relate"
        .assign attr_instance_dumpers = attr_instance_dumpers + "${delimiter}\n  ${class_name}_instancedumper"
        .assign class_typedefs = class_typedefs + "\ntypedef ${class_or_struct} ${class_name} ${class_name};"
      .end if
      .assign class_numbers = class_numbers + "#define ${type_name} $t{class_number_count}\n"
      .assign class_number_count = class_number_count + 1
      .if ( te_class.Persistent )
        .assign class_union = class_union + "\\n  ${class_name} ${class_name}_u;"
      .end if
      .assign delimiter = ","
      .end if
      .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
    .end while
    .assign object_set_type = object_set_type + 1
  .end while
  .//
  .select one te_dci related by te_c->TE_DCI[R2090]
  .// These includes are for MISRA-C compliance.  The above typedefs
  .// normally are enough.
  .assign te_class = first_te_class
  .while ( not_empty te_class )
    .assign class_includes = class_includes + "\n#include ""${te_class.class_file}.${te_file.hdr_file_ext}"""
    .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
  .end while
  .assign te_class = first_te_class
  .invoke r = CreateUnionOfDomainEvents( te_c )
  .assign event_unions = r.body
  .// TE_C may have no associated behavior/datatypes, accordingly include ${te_c.datatypes_file} should be omitted
  .select many te_ees related by te_c->TE_EE[R2085] where ( selected.Included )
  .// Get the TE_EEs that are not connected to a component.
  .select many global_te_ees from instances of TE_EE where ( selected.Included )
  .for each te_ee in global_te_ees
    .select one my_te_c related by te_ee->TE_C[R2085]
    .if ( not_empty my_te_c )
      .assign global_te_ees = global_te_ees - te_ee
    .end if
  .end for
  .assign te_ees = te_ees | global_te_ees
  .for each te_ee in te_ees
    .assign ee_includes = ee_includes + "\n#include ""${te_ee.Include_File}"""
  .end for
  .//
  .assign enumeration_info = ""
  .select many enumeration_te_dts related by te_c->TE_DT[R2086] where ( selected.Is_Enum )
  .for each te_dt in enumeration_te_dts
    .invoke r = TE_DT_EnumerationDataTypes( te_dt )
    .assign enumeration_info = enumeration_info + r.body
  .end for
  .//
  .select many structured_te_dts related by te_c->TE_DT[R2086]->S_DT[R2021]->S_SDT[R17]->S_DT[R17]->TE_DT[R2021]
  .invoke r = TE_DT_StructuredDataTypes( structured_te_dts )
  .assign structured_data_types = r.body
  .//
  .// functions
  .assign function_declarations = ""
  .if ( not_empty te_sync )
    .invoke r = CreateSynchronousServiceClassDeclaration( te_c, te_sync )
    .assign function_declarations = r.body
  .end if
  .//
  .// Build the domain init file containing data structures collecting
  .// class info for the entire domain.
  .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
  .select any te_cia from instances of TE_CIA
  .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
  .//
  .// Create file for enums "owned" by this domain.
  .include "${te_file.arc_path}/t.domain_classes.h"
  .//
.end function
.//
