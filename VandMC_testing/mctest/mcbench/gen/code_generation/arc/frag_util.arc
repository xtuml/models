.//============================================================================
.// $RCSfile: frag_util.arc,v $
.//
.// Description:
.// This archetype file provides general purpose functions used during 
.// action language translation. They are not specific to any particular
.// fragment generator entry points.
.//============================================================================
.//
.//============================================================================
.// Initialize the attributes of type unique_id that are identifiers
.// and therefore need to be automatically set up at create time.
.//============================================================================
.function AutoInitializeUniqueIDs .// string
  .param inst_ref te_class
  .param string instance
  .//
  .invoke oal( "T_clear(); // Ccode" )
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_string from instances of TE_STRING
  .select any te_sys from instances of TE_SYS
  .// Be sure we have the first attribute in the class.
  .select any first_te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty first_te_attr )
    .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'succeeds']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign first_te_attr = prev_te_attr
  .end while
  .assign te_attr = first_te_attr
  .while ( not_empty te_attr )
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .if ( te_attr.translate )
      .invoke r = GetAttributeCodeGenType( o_attr )
      .assign te_dt = r.result
      .assign not_empty_o_oida = false
      .if ( not_empty te_dt )
        .if ( 5 == te_dt.Core_Typ )
          .select any o_oida related by o_attr->O_OIDA[R105]
          .if ( not_empty o_oida )
            .assign not_empty_o_oida = true
          .end if
        .end if
        .include "${te_file.arc_path}/t.class.attribute.init.c"
      .end if
    .end if
    .//
    .// Advance to the next object attribute, if any.
    .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
  .end while
.end function
.//
.//============================================================================
.function ExpandNonOptimizedSpecialWhereComparison .// string
  .param inst_ref o_obj
  .param boolean special
  .param string selected_var_name
  .//
  .assign compare_stmt = ""
  .if ( special )
    .select any te_instance from instances of TE_INSTANCE
    .select any te_string from instances of TE_STRING
    .assign compare_stmt = ""
    .assign cmp_element = ""
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Be sure we have the first attribute in the class.
    .select any first_te_attr related by te_class->TE_ATTR[R2061]
    .while ( not_empty first_te_attr )
      .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'succeeds']
      .if ( empty prev_te_attr )
        .break while
      .end if
      .assign first_te_attr = prev_te_attr
    .end while
    .assign te_attr = first_te_attr
    .while ( not_empty te_attr )
      .//.if ( 4 == te_attr.Core_Typ )
      .if ( 4 == 4 )
        .assign cmp_element = "!${te_instance.module}${te_string.strcmp}(${selected_var_name}->${te_attr.GeneratedName}, ${te_attr.ParamBuffer})"
      .else
        .assign cmp_element = "${selected_var_name}->${te_attr.GeneratedName} == ${te_attr.ParamBuffer}"
      .end if
      .assign compare_stmt = compare_stmt + cmp_element
      .// Advance to the next object attribute, if any.
      .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
      .if ( not_empty te_attr )
        .assign compare_stmt = compare_stmt + " && "
      .end if
    .end while
  .end if
  .assign attr_result = compare_stmt
.end function
.//
.//============================================================================
.function CreateSpecialWhereComparisonArguments .// string
  .param inst_ref te_class
  .param inst_ref o_id
  .//
  .select many o_attrs related by o_id->O_OIDA[R105]->O_ATTR[R105]
  .assign num_ident_attr = cardinality o_attrs
  .//
  .assign param_list = ""
  .assign oida_count = 0
  .//
  .// Be sure we have the first attribute in the class.
  .select any first_te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty first_te_attr )
    .select one prev_te_attr related by first_te_attr->TE_ATTR[R2087.'succeeds']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign first_te_attr = prev_te_attr
  .end while
  .assign te_attr = first_te_attr
  .while ( not_empty te_attr )
    .if ( te_attr.Included )
      .assign oida_count = oida_count + 1
      .assign param_list = param_list + te_attr.ParamBuffer
      .if ( oida_count < num_ident_attr )
        .assign param_list = param_list + ", "
      .end if
    .end if
    .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
  .end while
  .//
  .assign attr_result = param_list
.end function
.//
.function oal
  .param string s
.end function
.//
