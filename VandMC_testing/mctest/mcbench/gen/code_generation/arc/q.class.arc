.//============================================================================
.// $RCSfile: q.class.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating application
.// analysis object implementation declaration and definition files.
.//============================================================================
.//
.//
.//============================================================================
.// Creates the prologue for the implementation files
.//============================================================================
.function CreateFilePrologue
  .param inst_ref te_class
  .param boolean  gen_declaration
  .//
  .select any te_copyright from instances of TE_COPYRIGHT
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .select one te_c related by te_class->TE_C[R2064]
/*----------------------------------------------------------------------------
  .if ( gen_declaration )
 * File:  ${te_class.class_file}.${te_file.hdr_file_ext}
  .else
 * File:  ${te_class.class_file}.${te_file.src_file_ext}
  .end if
 *
 * Class:       ${te_class.Name}  (${te_class.Key_Lett})
 * Component:   ${te_c.Name}
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

  .if ( gen_declaration )
#ifndef $u{te_class.class_file}_$u{te_file.hdr_file_ext}
#define $u{te_class.class_file}_$u{te_file.hdr_file_ext}

${te_target.c2cplusplus_linkage_begin}

  .end if
.end function
.//
.//============================================================================
.// Create the epilogue for the generate file
.//============================================================================
.function CreateFileEpilogue
  .param inst_ref te_class
  .param boolean  gen_declaration
  .if ( gen_declaration )
    .select any te_file from instances of TE_FILE
    .select any te_target from instances of TE_TARGET

${te_target.c2cplusplus_linkage_end}

#endif  /* $u{te_class.class_file}_$u{te_file.hdr_file_ext} */
  .end if
.end function
.//
.//============================================================================
.// Create <body> a list of object attribute variable declarations suitable
.// for use in a larger scope data declaration fragment.  The object attribute
.// data variable declarations are generated in the same order in which they
.// appear in the application analysis class diagram.
.//============================================================================
.function CreateObjectAttrDataDeclaration
  .param inst_ref te_class
  .select any te_string from instances of TE_STRING
  .// get first attribute
  .select any te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty te_attr )
    .select one prev_te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign te_attr = prev_te_attr
  .end while
  .while ( not_empty te_attr )
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .select one te_dt related by o_attr->S_DT[R114]->TE_DT[R2021]
    .assign comment = ""
    .select any te_sys from instances of TE_SYS
    .if ( not te_sys.InstanceLoading )
    .invoke note = GetObjectAttributeInfoComment( o_attr, true )
    .if ( note.result != "" )
      .assign comment = "/* ${note.result} */"
    .end if
    .end if
    .if ( te_dt.Core_Typ != 6 )
      .// not current_state type
      .if ( te_attr.translate )
        .if ( te_dt.Core_Typ == 2 )
          .// integer type
          .assign bit_field_width = "${o_attr.Descrip:BIT_WIDTH}"
          .if ( "${bit_field_width}" != "" )
  ui_t ${te_attr.GeneratedName} : ${bit_field_width};  ${comment}
          .else
  ${te_attr.GeneratedType} ${te_attr.GeneratedName}${te_attr.array_spec};  ${comment}
          .end if
        .else
  ${te_attr.GeneratedType} ${te_attr.GeneratedName}${te_attr.array_spec};  ${comment}
        .end if
      .else
  ${comment}  /* OPTIMIZED OUT */
      .end if
    .end if
    .// Advance to the next object attribute, if any.
    .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
  .end while
.end function
.//
.//============================================================================
.// Return <result> a comment string for an object attribute which reflects
.// its meaning on the analysis class diagram.
.//
.// Input Parameters:
.// <obj_attr> Instance reference to O_ATTR.
.// <do_naming_attribs_also> Boolean.  If false, comment generated for indentifying
.//   and referential attributes only.  If true, comment generated for
.//  naming attributes.
.//============================================================================
.function GetObjectAttributeInfoComment
  .param inst_ref o_attr
  .param boolean  do_naming_attribs_also
  .//
  .assign result = ""
  .//
  .// Identifying attribute?  If so, indicate key set(s).
  .select many oid_set related by o_attr->O_OIDA[R105]->O_ID[R105]
  .if ( not_empty oid_set )
    .select any oid related by o_attr->O_OIDA[R105]->O_ID[R105] where (selected.Oid_ID == 0)
    .if ( not_empty oid )
      .assign result = result + "*"
    .end if
    .select any oid related by o_attr->O_OIDA[R105]->O_ID[R105] where (selected.Oid_ID == 1)
    .if ( not_empty oid )
      .assign result = result + "*2"
    .end if
    .select any oid related by o_attr->O_OIDA[R105]->O_ID[R105] where (selected.Oid_ID == 2)
    .if ( not_empty oid )
      .assign result = result + "*3"
    .end if
    .assign result = result + " ${o_attr.Name}"
    .select one dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
    .if ( not_empty dbattr )
      .assign result = result + " (M)"
    .end if
  .end if  .// not_empty oid_set
  .//
  .// Referential attribute? If so, indicate from where.
  .select one ref_attr related by o_attr->O_RATTR[R106]
  .if ( not_empty ref_attr )
    .if ( result != "" )
      .// Referential is also an identifier.
      .assign result = result + " "
    .else
      .assign result = result + "- ${o_attr.Name} "
    .end if
    .select many obj_ref_set related by ref_attr->O_REF[R108]
    .for each obj_ref in obj_ref_set
      .select any rel related by obj_ref->O_RTIDA[R111]->R_RTO[R110]->R_OIR[R203]->R_REL[R201] where (selected.Rel_ID == obj_ref.Rel_ID)
      .// Not a Constrained referential attribute?
      .if ( not obj_ref.Is_Cstrd )
        .assign result = result + "(R${rel.Numb})"
      .else
        .assign result = result + "(R${rel.Numb}c)"
      .end if  .// not obj_ref.Is_Cstrd
    .end for  .// obj_ref in obj_ref_set
  .end if  .// not_empty ref_attr
  .//
  .if ( (result == "") and do_naming_attribs_also )
    .assign result = "- ${o_attr.Name}"
    .select one dbattr related by o_attr->O_BATTR[R106]->O_DBATTR[R107]
    .if ( not_empty dbattr )
      .assign result = result + " (M)"
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Generate the ANSI C struct containing the translated attributes.
.//============================================================================
.function CreateObjectDataClass
  .param inst_ref o_obj
  .param inst_ref te_relstore
    .select any te_instance from instances of TE_INSTANCE
    .select any te_target from instances of TE_TARGET
    .select any te_typemap from instances of TE_TYPEMAP
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .select one sm_ism related by o_obj->SM_ISM[R518]
    .assign front = "class ${te_class.GeneratedName} {\n  public:"
    .if ( "C" == te_target.language )
      .assign front = "struct ${te_class.GeneratedName} {"
    .end if
    .assign cs = ""
    .if ( not_empty sm_ism )
      .// *** current_state
      .assign cs = "  ${te_typemap.state_number_name} ${te_instance.current_state};"
    .end if  .// not_empty sm_ism
    .// *** extended attributes for persistence
    .invoke persist = PersistInstanceDirtyVariable( te_class, cs )
    .if ( persist.result )
      .assign cs = persist.current_state
    .end if
    .// *** Application OIM data members
    .invoke data_members = CreateObjectAttrDataDeclaration( te_class )
    .assign abody = "  /* application analysis class attributes */\n"
    .assign abody = abody + data_members.body
    .//
    .// *** Relationship storage data members
    .assign rbody = ""
    .if ( te_relstore.data_declare != "" )
      .assign rbody = rbody + "  /* relationship storage */\n"
      .assign rbody = rbody + te_relstore.data_declare
    .end if
/*
 * Structural representation of application analysis class:
 *   ${te_class.Name}  (${te_class.Key_Lett})
 */
${front}
${cs}
${persist.body}\
${abody}
${rbody}\
    .if ( "C" == te_target.language )
};
    .end if
    .// Declare a structure that can be used to size the part of
    .// the class that needs to be saved persistently.  This will
    .// disclude the relationship storage.
    .if ( te_class.Persistent )
struct ${te_class.GeneratedName}_attr {
${persist.body}\
${cs}
${abody}
};
    .end if
.end function
.//
.//============================================================================
.// Handles the processing of the include files for the generated code.
.//============================================================================
.function ClassAddIncludeFiles
  .param inst_ref te_c
  .param boolean gen_declaration
  .select any te_target from instances of TE_TARGET
  .if ( gen_declaration )
    .if ( ( "C" != te_target.language ) and ( not_empty te_c ) )
class ${te_c.Name}; // forward reference
    .end if
  .else
    .select any te_file from instances of TE_FILE
#include "${te_file.types}.${te_file.hdr_file_ext}"
    .if ( ( "C" != te_target.language ) and ( not_empty te_c ) )
#include "${te_c.Name}.${te_file.hdr_file_ext}"
    .end if
    .// Get the TE_EEs that are not connected to any component.
    .select many te_ees from instances of TE_EE where ( selected.Included )
    .for each te_ee in te_ees
      .select one my_te_c related by te_ee->TE_C[R2085]
      .if ( not_empty my_te_c )
        .assign te_ees = te_ees - te_ee
      .end if
    .end for
    .invoke r = ee_sort( te_ees )
    .assign te_ee = r.result
    .while ( not_empty te_ee )
#include "${te_ee.Include_File}"
      .select one te_ee related by te_ee->TE_EE[R2096.'precedes']
    .end while
    .select one te_ee related by te_c->TE_EE[R2098]
    .while ( not_empty te_ee )
      .if ( te_ee.Included )
#include "${te_ee.Include_File}"
      .end if
      .select one te_ee related by te_ee->TE_EE[R2096.'precedes']
    .end while
    .if ( "C" == te_target.language )
      .select any te_sync related by te_c->TE_SYNC[R2084]
      .select any te_class related by te_c->TE_CLASS[R2064]
      .if ( ( not_empty te_sync ) or ( not_empty te_class ) )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
      .end if
    .end if
  .end if
.end function
.//
.//============================================================================
.// Generate access methods to read and write mathematically dependent
.// attributes.
.//============================================================================
.function CreateMathematicallyDependentAttributeMethods
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .//
  .select any te_instance from instances of TE_INSTANCE
  .select any te_file from instances of TE_FILE
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select many te_dbattrs related by o_obj->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107]->TE_DBATTR[R2026]
  .if ( not_empty te_dbattrs )
    .select one te_c related by te_class->TE_C[R2064]
    .for each te_dbattr in te_dbattrs
      .select one te_aba related by te_dbattr->TE_ABA[R2010]
      .select one dbattr related by te_dbattr->O_DBATTR[R2026]
      .select one te_attr related by dbattr->O_BATTR[R107]->O_ATTR[R106]->TE_ATTR[R2033]
      .if ( ( te_attr.Used ) or ( te_c.OptDisabled ) )
        .if ( gen_declaration )
          .include "${te_file.arc_path}/t.class.attribute.mda.h"
        .else
          .if ( dbattr.Suc_Pars != 1 )
            .assign te_aba.code = "\n  /* WARNING!  Skipping unsuccessful or unparsed action for attribute ${te_class.Name}.${te_attr.Name} */"
          .end if
          .include "${te_file.arc_path}/t.class.attribute.mda.c"
        .end if
      .end if
    .end for
  .end if
.end function
.//
.//============================================================================
.// Generate the generated code for the given class.
.//============================================================================
.function CreateObjectImplementation
  .param inst_ref te_class
  .param inst_ref te_c
  .param boolean  gen_declaration
  .//
  .select any te_file from instances of TE_FILE
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select any te_target from instances of TE_TARGET
  .select one o_obj related by te_class->O_OBJ[R2019]
  .select one sm_ism related by o_obj->SM_ISM[R518]
  .select one sm_asm related by o_obj->SM_ASM[R519]
  .invoke file_prologue = CreateFilePrologue( te_class, gen_declaration )
  .invoke file_epilogue = CreateFileEpilogue( te_class, gen_declaration )
  .assign instance_loader = ""
  .assign batch_relation = ""
  .select any te_sys from instances of TE_SYS
  .//
  .// !!! NOTE:  Invoke *BEFORE* generating object class!
  .// This function also returns an instance te_relstore which contains
  .// the appropriate code components for the object class.
  .invoke object_extent   = AddClassExtent( o_obj, gen_declaration )
  .invoke r = RenderObjectRelationships( o_obj, gen_declaration )
  .assign te_relstore = r.result
  .assign rendered_relationships = r.body
  .invoke obj_data_class = CreateObjectDataClass( o_obj, te_relstore )
  .invoke xforms = TranslateTransformerActions( o_obj, te_class, gen_declaration )
  .invoke mda = CreateMathematicallyDependentAttributeMethods( o_obj, gen_declaration )
  .invoke include_files = ClassAddIncludeFiles( te_c, gen_declaration )
  .if ( te_sys.InstanceLoading )
    .invoke s = gen_class_instance_loader( te_class, gen_declaration )
    .assign instance_loader = s.body
    .invoke s = gen_class_batch_relate( te_class, gen_declaration )
    .assign batch_relation = s.body
  .end if
  .invoke special_where = AddObjectSpecialWhereMethods( o_obj, gen_declaration )
${file_prologue.body}\
${include_files.body}\
  .if ( gen_declaration )
${obj_data_class.body}\
    .include "${te_file.arc_path}/t.class.instancedumper.h"
  .end if
${instance_loader}\
${batch_relation}\
${special_where.body}\
${xforms.body}
${rendered_relationships}
  .if ( gen_declaration )
    .if ( "C" != te_target.language )
};
    .end if
  .else
    .include "${te_file.arc_path}/t.class.instancedumper.c"
    .if ( "" != xforms.body )
      .include "${te_file.arc_path}/t.class.ops.c"
    .end if
  .end if
${object_extent.body}\
  .//
  .// *** Active object specifics section
  .// Generate state and transtion action routines.
  .if ( not gen_declaration )
    .if ( ( not_empty sm_ism ) or ( not_empty sm_asm ) )
      .include "${te_file.arc_path}/q.class.sm_sm.arc"
    .end if
  .end if
  .if ( not_empty sm_asm )
    .select one sm_sm related by sm_asm->SM_SM[R517]
    .invoke cevents = CreateAssignerStateModelEvents( o_obj, sm_sm, gen_declaration )

${cevents.body}\
    .if ( gen_declaration )
      .invoke dispatcher = CreateClassBasedStateModelEventDispatcher( te_c, o_obj, gen_declaration )
      .invoke state_enums = GetStateEnumsFromStateSet( sm_sm )
      .invoke event_enums = CreateStateModelEventEnum( sm_sm )
${state_enums.body}
${event_enums.body}
${dispatcher.body}
    .else
      .// Consider moving state matrix into scope of access for MISRA.  For now
      .// we leave the data at file scope.
      .invoke state_matrix   = CreateStateEventMatrixTable( sm_sm )
      .invoke action_array   = CreateStateActionArray( te_c, sm_sm )
      .invoke xaction_array  = CreateTransitionActionArray( sm_sm )
      .invoke dispatcher     = CreateClassBasedStateModelEventDispatcher( te_c, o_obj, gen_declaration )
${state_matrix.body}\
${action_array.body}\
${xaction_array.body}\
${dispatcher.body}\
    .end if
  .end if
  .if ( not_empty sm_ism )
    .select one sm_sm related by sm_ism->SM_SM[R517]
    .invoke ievents = CreateInstanceStateModelEvents( o_obj, sm_sm, gen_declaration )

${ievents.body}\
    .if ( gen_declaration )
      .invoke state_numbers = GetStateEnumsFromStateSet( sm_sm )
      .invoke event_numbers = CreateStateModelEventEnum( sm_sm )
${state_numbers.body}\
${event_numbers.body}\
    .else
      .invoke state_matrix = CreateStateEventMatrixTable( sm_sm )
      .invoke action_array = CreateStateActionArray( te_c, sm_sm )
      .invoke xaction_array  = CreateTransitionActionArray( sm_sm )
${state_matrix.body}\
${action_array.body}\
${xaction_array.body}\
    .end if  .// gen_declaration
    .invoke dispatcher = CreateInstanceStateModelEventDispatcher( te_c, o_obj, gen_declaration )
${dispatcher.body}\
    .invoke poly_crackers = AddSuperTypePolymorphicEventHandlers( o_obj, gen_declaration )
${poly_crackers.body}\
  .end if
${mda.body}\
${file_epilogue.body}
  .// Deallocate relationship storage.
  .invoke FiniRelStorageFragment( te_relstore )
.end function
.//
.//============================================================================
.function TranslateTransformerActions
  .param inst_ref o_obj
  .param inst_ref te_class
  .param boolean gen_declaration
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_target from instances of TE_TARGET
  .select one te_c related by te_class->TE_C[R2064]
  .select many te_tfrs related by o_obj->O_TFR[R115]->TE_TFR[R2024] where ( selected.XlateSemantics )
  .for each te_tfr in te_tfrs
    .select one te_aba related by te_tfr->TE_ABA[R2010]
    .select one o_tfr related by te_tfr->O_TFR[R2024]
    .select one rval_te_dt related by o_tfr->S_DT[R116]->TE_DT[R2021]
    .assign rval_te_dt.Included = true
    .assign prelude = "class"
    .assign instance_based_self_declaration = ""
    .if ( o_tfr.Instance_Based == 1 )
      .assign instance_based_self_declaration = te_class.GeneratedName + " *"
      .assign prelude = "instance"
    .end if
    .if ( gen_declaration )
      .select any te_parm related by te_aba->TE_PARM[R2062]
      .include "${te_file.arc_path}/t.class.op.h"
    .else
      .if ( o_tfr.Suc_Pars != 1 )
        .assign te_aba.code = "\n\tWARNING!  Skipping unsuccessful or unparsed operation ${te_tfr.Name}"
      .end if
      .include "${te_file.arc_path}/t.class.op.c"
    .end if
  .end for
.end function
.//
