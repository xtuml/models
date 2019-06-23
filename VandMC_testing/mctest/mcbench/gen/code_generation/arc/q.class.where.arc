.//============================================================================
.// This archetype file contains functions for generating optimized object
.// instance selection services.
.//============================================================================
.//
.//============================================================================
.// Generate a routine that encapsulates the scanning of a set for a 
.// specific instance.  The contents of this routine could be changed
.// to optimize for speed this type of selection.  As it stands here,
.// the optimization is more for space.
.//============================================================================
.function AddObjectExtentSelectAnyWhereMethod
  .param inst_ref o_obj
  .param inst_ref o_oid
  .param boolean  gen_declaration
  .//
  .select any te_extent from instances of TE_EXTENT
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select any te_set from instances of TE_SET
  .select any te_string from instances of TE_STRING
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_where related by o_oid->TE_WHERE[R2032]
  .assign param_list = ""
  .assign compare_stmt = ""
  .assign cmp_element = ""
  .assign temp_ptr = "w"
  .//
  .select many te_attrs related by te_class->TE_ATTR[R2061]
  .for each te_attr in te_attrs
    .assign te_attr.Included = FALSE
  .end for
  .//
  .// Tag the indentifying attribute(s) that comprise this where clause.
  .select many ident_te_attrs related by o_oid->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
  .assign num_ident_attr = cardinality ident_te_attrs
  .for each te_attr in ident_te_attrs
    .assign te_attr.Included = TRUE
    .assign te_attr.ParamBuffer = "w_${te_attr.Name}"
  .end for
  .//
  .select any te_attr related by te_class->TE_ATTR[R2061]
  .while ( not_empty te_attr )
    .select one prev_te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
    .if ( empty prev_te_attr )
      .break while
    .end if
    .assign te_attr = prev_te_attr
  .end while
  .assign oida_count = 0
  .while ( not_empty te_attr )
    .if ( te_attr.Included )
      .assign oida_count = oida_count + 1
      .assign param_list = param_list + te_attr.GeneratedType
      .if ( not gen_declaration )
        .select one te_dt related by te_attr->O_ATTR[R2033]->S_DT[R114]->TE_DT[R2021]
        .select one base_te_dt related by te_attr->O_ATTR[R2033]->O_RATTR[R106]->O_BATTR[R113]->O_ATTR[R106]->S_DT[R114]->TE_DT[R2021]
        .if ( not_empty base_te_dt )
          .assign te_dt = base_te_dt
        .end if
        .if ( ( te_attr.dimensions == 0 ) and ( 4 != te_dt.Core_Typ ) )
          .assign cmp_element = "${temp_ptr}->${te_attr.GeneratedName} == ${te_attr.ParamBuffer}"
        .else
          .// "string"
          .assign cmp_element = "!${te_instance.module}${te_string.strcmp}(${temp_ptr}->${te_attr.GeneratedName}, ${te_attr.ParamBuffer})"
        .end if
        .//
        .assign param_list = param_list + " ${te_attr.ParamBuffer}"
        .assign compare_stmt = compare_stmt + cmp_element
      .end if
      .assign param_list = param_list + te_attr.array_spec
      .//
      .if ( oida_count < num_ident_attr )
        .assign param_list = param_list + ", "
        .assign compare_stmt = compare_stmt + " && "
      .end if
    .end if
    .select one te_attr related by te_attr->TE_ATTR[R2087.'precedes']
  .end while
  .//
  .if ( gen_declaration )
    .include "${te_file.arc_path}/t.class.select_where.h"
  .else
    .invoke r = GetFixedSizeClassExtentInfo( te_class )
    .assign extent = r.result
    .assign iterator = "iter_${te_class.Key_Lett}"
    .include "${te_file.arc_path}/t.class.select_where.c"
  .end if  .// gen_declaration
.end function
.//
.//============================================================================
.// Generate the list of where methods.
.//============================================================================
.function AddObjectSpecialWhereMethods
  .param inst_ref o_obj
  .param boolean  gen_declaration
  .//
  .select many te_wheres related by o_obj->O_ID[R104]->TE_WHERE[R2032] where ( selected.WhereKey )
  .if ( (not_empty te_wheres) and gen_declaration )

/*
 * Where clause instance selection against identifying attribute set(s).
 */
  .end if
  .//
  .for each te_where in te_wheres
    .select one o_oid related by te_where->O_ID[R2032]
    .invoke method = AddObjectExtentSelectAnyWhereMethod( o_obj, o_oid, gen_declaration )
${method.body}\
  .end for
.end function
.//
