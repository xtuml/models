.//============================================================================
.// Generate a routine that encapsulates the scanning of a set for a 
.// specific instance.  The contents of this routine could be changed
.// to optimize this type of selection for speed.  As it stands here,
.// the optimization is more for space.
.//============================================================================
.//

/*
 * Scan the extent for a matching instance.
 */
${te_class.GeneratedName} *
${te_where.select_any_where}( ${param_list} )
{
  ${te_class.GeneratedName} * ${temp_ptr}; 
  ${te_set.scope}${te_set.iterator_class_name} ${iterator};
  ${te_set.iterator_reset}( &${iterator}, &${extent}.${te_extent.active} );
  while ( (${temp_ptr} = (${te_class.GeneratedName} *) ${te_set.module}${te_set.iterator_next}( &${iterator} )) != 0 ) {
    if ( ${compare_stmt} ) {
      return ${temp_ptr};
    }
  }
  return 0;
}
.//
