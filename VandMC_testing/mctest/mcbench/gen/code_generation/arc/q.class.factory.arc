.//============================================================================
.// $RCSfile: q.class.factory.arc,v $
.//
.// Description:
.// This archetype file contains the functions for generating object
.// factory services.
.//
.// Note that most of the generation functions below use a parameter
.// (boolean gen_declaration) which is used to determine whether to generate
.// the declaration or definition.  If gen_declaration is TRUE, the generated
.// code is declaration, FALSE is definition.
.//============================================================================
.//
.//============================================================================
.// Define the structure of the classes for declaration and
.// definition code generation.
.//============================================================================
.function AddClassExtent
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .select any te_extent from instances of TE_EXTENT
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_sys related by te_class->TE_C[R2064]->TE_SYS[R2065]
  .invoke r = GetFixedSizeClassExtentInfo( te_class )
  .assign extent = r.result
  .if ( gen_declaration )
    .include "${te_file.arc_path}/t.class.extent.h"
  .else
    .invoke peis = PEIRenderInitializers( o_obj )
    .assign fixed_extent_begin = ""
    .assign fixed_extent_end = ""
    .assign base_address = "${o_obj.Descrip:BASE_ADDRESS}"
    .if ( "" != base_address )
      .invoke s = UserFixExtentBaseBegin( base_address )
      .assign fixed_extent_begin = s.result
      .invoke s = UserFixExtentBaseEnd( base_address )
      .assign fixed_extent_end = s.result
    .end if
    .//
    .// Note that the extent is initialized with the active and inactive
    .// set values (nulled out) and the size information for this class.
    .// Also, initial state is set up.
    .// If active instance, initialize initial state.
    .invoke current_state = GetInstanceInitialStateEnum( o_obj )
    .invoke persistent_extent_attrs = PersistExtentAttributes( o_obj )
    .assign state_init = current_state.result
    .assign pei_counter = "0"
    .if ( te_class.PEIsDefinedInData )
      .invoke count_instances = PEINumberOfPreexistingInstances( o_obj )
      .assign pei_counter = ( "(" + te_extent.container_type ) + ( ")" + count_instances.result )
    .end if
    .include "${te_file.arc_path}/t.class.extent.c"
  .end if
.end function
.//
.//
.//=============================================================================
.// Generate a routine that will initialize instances from string data.
.//=============================================================================
.function gen_class_instance_loader
  .param inst_ref te_class
  .param boolean  gen_declaration
  .//
  .select any te_dma from instances of TE_DMA
  .select any te_prefix from instances of TE_PREFIX
  .select any te_string from instances of TE_STRING
  .select any te_instance from instances of TE_INSTANCE
  .select one te_sys related by te_class->TE_C[R2064]->TE_SYS[R2065]
  .if ( gen_declaration )
${te_prefix.type}UniqueID_t ${te_class.GeneratedName}_instanceloader( ${te_instance.handle}, const c_t * [] );
  .else

/*
 * Instance Loader (from string data).
 */
${te_prefix.type}UniqueID_t
${te_class.GeneratedName}_instanceloader( ${te_instance.handle} instance, const c_t * avlstring[] )
{
  ${te_prefix.type}UniqueID_t return_identifier = 0;
  ${te_class.GeneratedName} * ${te_instance.self} = (${te_class.GeneratedName} *) instance;
  /* Initialize application analysis class attributes.  */
    .select any te_attr related by te_class->TE_ATTR[R2061]
    .while ( not_empty te_attr )
      .select one prev_te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
      .if ( empty prev_te_attr )
        .break while
      .end if
      .assign te_attr = prev_te_attr
    .end while
    .assign attribute_number = 1
    .while ( not_empty te_attr )
      .select one o_attr related by te_attr->O_ATTR[R2033]
      .assign persistent = ( "$l{o_attr.Descrip:Persistent}" != "false" )
      .if ( te_attr.translate and persistent )
        .invoke r = GetAttributeCodeGenType( o_attr )
        .assign te_dt = r.result
        .if ( te_dt.Core_Typ < 0 )
          .// sdt
        .elif ( 0 == te_dt.Core_Typ )
          .// void
        .elif ( 1 == te_dt.Core_Typ )
          .// boolean
  ${te_instance.self}->${te_attr.GeneratedName} = ( '0' != *avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( 2 == te_dt.Core_Typ )
          .// integer
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( 3 == te_dt.Core_Typ )
          .// real
        .elif ( 4 == te_dt.Core_Typ )
          .// string
          .if ( ( "Action_Semantics_internal" == te_attr.Name ) or ( "Descrip" == te_attr.Name ) )
  {i_t i = avlstring[ ${attribute_number} + 1 ] - avlstring[ ${attribute_number} ];
  ${te_instance.self}->${te_attr.GeneratedName} = ( i > 0 ) ? (c_t *) ${te_dma.allocate}( i ) : "";
  while ( --i >= 0 ) { ${te_instance.self}->${te_attr.GeneratedName}[ i ] = avlstring[ ${attribute_number} ][ i ]; }
  }
          .else
            .if ( te_sys.InstanceLoading )
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.strcpy}( ${te_instance.self}->${te_attr.GeneratedName}, avlstring[ ${attribute_number} ] );
            .else
  ${te_instance.module}${te_string.strcpy}( ${te_instance.self}->${te_attr.GeneratedName}, avlstring[ ${attribute_number} ] );
            .end if
          .end if
          .assign attribute_number = attribute_number + 1
        .elif ( 5 == te_dt.Core_Typ )
          .// unique_id
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.uuidtou128}( avlstring[ ${attribute_number} ] );
          .select any o_oida related by o_attr->O_OIDA[R105] where ( selected.Oid_ID == 0 )
          .select one o_rattr related by o_attr->O_RATTR[R106]
          .if ( ( not_empty o_oida ) and ( empty o_rattr ) )
  return_identifier = ${te_instance.self}->${te_attr.GeneratedName};
          .end if
          .assign attribute_number = attribute_number + 1
        .elif ( 6 == te_dt.Core_Typ )
          .// current_state
        .elif ( 7 == te_dt.Core_Typ )
          .// same as base<Attribute>
        .elif ( ( 8 == te_dt.Core_Typ ) or ( 20 == te_dt.Core_Typ ) )
          .// inst_ref<Object>
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( ( 9 == te_dt.Core_Typ ) or ( 21 == te_dt.Core_Typ ) )
          .// inst_ref_set<Object>
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( 10 == te_dt.Core_Typ )
          .// inst<Event>
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( 11 == te_dt.Core_Typ )
          .// inst<Mapping>
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .elif ( 12 == te_dt.Core_Typ )
          .// inst_ref<Mapping>
  ${te_instance.self}->${te_attr.GeneratedName} = ${te_instance.module}${te_string.atoi}( avlstring[ ${attribute_number} ] );
          .assign attribute_number = attribute_number + 1
        .else
  ${te_instance.module}${te_string.memset}( &${te_instance.self}->${te_attr.GeneratedName}, avlstring[ ${attribute_number} ], sizeof( ${te_instance.self}->${te_attr.GeneratedName} ) );
        .end if
      .end if
      .//
      .// Advance to the next object attribute, if any.
      .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
    .end while
  return return_identifier;
}
  .end if  .// gen_declaration
.end function
.//
.//
.//
.function gen_class_batch_relate
  .param inst_ref te_class
  .param boolean gen_declaration
  .select any te_instance from instances of TE_INSTANCE
  .select one o_obj related by te_class->O_OBJ[R2019]
  .select many r_rgos related by o_obj->R_OIR[R201]->R_RGO[R203]
  .if ( not_empty r_rgos )
    .if ( gen_declaration )
void ${te_class.GeneratedName}_batch_relate( ${te_instance.handle} );
    .else

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ${te_class.GeneratedName}_batch_relate( ${te_instance.handle} instance )
{
  ${te_class.GeneratedName} * ${te_class.GeneratedName}_instance = (${te_class.GeneratedName} *) instance;
    .assign r_rgo_count = 0
    .// Loop through the associations.
    .for each r_rgo in r_rgos
      .assign rel_phrase = ""
      .select one r_form related by r_rgo->R_FORM[R205]
      .if ( not_empty r_form )
        .assign rel_phrase = r_form.Txt_Phrs
      .end if
      .assign navigation_needed = false
      .select one te_oir related by r_rgo->R_OIR[R203]->TE_OIR[R2035]
      .assign rgo_NavigatedTo = te_oir.NavigatedTo
      .if ( 0 < r_rgo_count )
  {
      .end if
      .assign batch_relate = true
      .select one r_rel related by r_rgo->R_OIR[R203]->R_REL[R201]
      .select many r_rtos related by r_rel->R_OIR[R201]->R_RTO[R203]
      .// Loop through the referred to classes.
      .assign null_test = ""
      .assign null_test_conjunction = ""
      .assign parameters = ""
      .assign parameters_delimeter = ""
      .assign r_rto_count = 1
      .for each r_rto in r_rtos
        .select one te_oir related by r_rto->R_OIR[R203]->TE_OIR[R2035]
        .assign rto_NavigatedTo = te_oir.NavigatedTo
        .//.if ( rto_NavigatedTo or rgo_NavigatedTo )
          .assign navigation_needed = true
          .select one rto_obj related by r_rto->R_OIR[R203]->O_OBJ[R201]
          .select one o_id related by r_rto->O_ID[R109]
          .if ( empty o_id )
            .assign batch_relate = false
            .break for
          .end if
          .select any o_attr related by o_id->O_OIDA[R105]->O_ATTR[R105]
          .if ( "$l{o_attr.Descrip:Persistent}" == "false" )
            .assign batch_relate = false
            .break for
          .end if
          .select one part_te_class related by rto_obj->TE_CLASS[R2019]
          .select one te_where related by o_id->TE_WHERE[R2032]
          .select many o_rtidas related by r_rto->O_RTIDA[R110]
          .assign param_list = ""
          .assign delimeter = ""
          .select any te_attr related by part_te_class->TE_ATTR[R2061]
          .while ( not_empty te_attr )
            .select one prev_te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
            .if ( empty prev_te_attr )
              .break while
            .end if
            .assign te_attr = prev_te_attr
          .end while
          .while ( not_empty te_attr )
            .select one current_o_attr related by te_attr->O_ATTR[R2033]
            .for each o_rtida in o_rtidas
              .select one o_attr related by o_rtida->O_OIDA[R110]->O_ATTR[R105]
              .if ( o_attr == current_o_attr )
                .select one o_rattr related by current_o_attr->O_RATTR[R106]
                .select any o_attr related by o_rtida->O_REF[R111]->O_RATTR[R108]->O_ATTR[R106] where ( selected.Obj_ID == r_rgo.Obj_ID )
                .select one ref_te_attr related by o_attr->TE_ATTR[R2033]
                .assign param_list = param_list + "${delimeter}${te_class.GeneratedName}_instance->${ref_te_attr.GeneratedName}"
                .assign delimeter = ", "
              .end if
            .end for
            .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
          .end while
  ${part_te_class.GeneratedName} * ${part_te_class.GeneratedName}related_instance$t{r_rto_count} = ${te_where.select_any_where}( ${param_list} );
          .assign null_test = null_test + "${null_test_conjunction}${part_te_class.GeneratedName}related_instance$t{r_rto_count}"
          .assign null_test_conjunction = " && "
          .if ( r_rto_count < 2 )
            .assign parameters = "${part_te_class.GeneratedName}related_instance$t{r_rto_count}"
            .select one r_part related by r_rto->R_PART[R204]
            .if ( not_empty r_part )
              .if ( r_form.Obj_ID != r_part.Obj_ID )
                .assign rel_phrase = r_part.Txt_Phrs
              .end if
            .end if
          .else
            .select one r_aone related by r_rto->R_AONE[R204]
            .if ( empty r_aone )
              .select one r_aoth related by r_rto->R_AOTH[R204]
              .assign rel_phrase = r_aoth.Txt_Phrs
              .assign parameters = parameters + "${parameters_delimeter}${part_te_class.GeneratedName}related_instance$t{r_rto_count}"
            .else
              .assign rel_phrase = r_aone.Txt_Phrs
              .select one r_aoth related by r_aone->R_ASSOC[R209]->R_AOTH[R210]
              .if ( r_aone.Obj_ID != r_aoth.Obj_ID )
                .assign parameters = "${part_te_class.GeneratedName}related_instance$t{r_rto_count}${parameters_delimeter}" + parameters
              .else
                .// for reflexive associatives, the parameter order always follows the role phrase
                .assign parameters = parameters + "${parameters_delimeter}${part_te_class.GeneratedName}related_instance$t{r_rto_count}"
              .end if
            .end if
          .end if
          .assign parameters_delimeter = ", "
          .assign r_rto_count = r_rto_count + 1
        .//.end if
      .end for
      .select one te_rel related by r_rel->TE_REL[R2034]
      .if ( navigation_needed or te_rel.LinkNeeded )
        .if ( batch_relate )
  if ( ${null_test} ) {
          .invoke r = GetRelateToName( o_obj, r_rel, rel_phrase )
          .assign method = r.result
    ${method}( ${parameters}, ${te_class.GeneratedName}_instance );
  }
        .end if
      .end if
      .if ( 0 < r_rgo_count )
  }
      .end if
      .assign r_rgo_count = r_rgo_count + 1
    .end for
}
    .end if .// gen_declaration
  .else
    .if ( gen_declaration )
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ${te_class.GeneratedName}_batch_relate 0
    .end if
  .end if
.end function
.//
