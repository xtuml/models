.if ( "any" == te_select_where.multiplicity )
  .if ( not te_select_where.special )
    .// Clear inst_ref<Object> handle variable prior to select statement.
${ws}${te_select_where.var_name} = 0;
  .end if
  .//
.elif ( "many" == te_select_where.multiplicity )
  .if ( te_select_where.is_implicit )
    .// CDS Check here if we are in a while loop or not.
    .// if ( in_loop )
${ws}${te_set.module}${te_set.clear}( ${te_select_where.var_name} );
    .// end if
  .else
    .// Existing inst_ref_set<Object> handle set. Clear current contents of collection.
${ws}${te_set.module}${te_set.clear}( ${te_select_where.var_name} );
  .end if
.end if
.//
.if ( ( not te_select_where.special ) or ( "many" == te_select_where.multiplicity ) )
  .if ( "FALSE" == te_select_where.where_clause )
    .// We optimize select any i from instances of KL where ( false )
    .// simply to leave the result initialized to empty.
  .else
    .//
    .// Iterate over the instances in the (extent) collection.
${ws}{ ${te_select_where.class_name} * ${te_select_where.selected_var_name};
${ws}  ${te_set.scope}${te_set.iterator_class_name} ${iterator};
${ws}  ${te_set.iterator_reset}( &${iterator}, &${extent}.${te_extent.active} );
${ws}  while ( (${te_select_where.selected_var_name} = (${te_select_where.class_name} *) ${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
    .if ( not te_select_where.special )
${ws}    if ( ${te_select_where.where_clause} ) \
    .else
${ws}    if ( ${where_comp} ) \
    .end if
{
    .if ( "any" == te_select_where.multiplicity )
      .// Expression satisfied. Assign to OAL select inst_ref<Object> handle and terminate search.
${ws}      ${te_select_where.var_name} = ${te_select_where.selected_var_name};
${ws}      break;
    .elif ( "many" == te_select_where.multiplicity )
      .// Expression satisfied. Append instance to OAL select inst_ref<Object> handle set.
${ws}      ${te_set.module}${te_set.insert_element}( ${te_select_where.var_name}, ${te_select_where.selected_var_name} );
    .end if
${ws}    }
${ws}  }
${ws}}
  .end if
.else
${ws}${te_select_where.var_name} = ${te_where.select_any_where}( ${arguments} );
.end if
