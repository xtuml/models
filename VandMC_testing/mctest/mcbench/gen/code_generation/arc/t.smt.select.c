.if ( "any" == te_select.multiplicity )
  .// Grab any from object extent
${ws}${te_select.var_name} = (${te_select.class_name} *) ${te_set.get_any}( &${extent}.${te_extent.active} );
.elif ( "many" == te_select.multiplicity )
  .// The copy method will clear out and free up system resources
  .// used within the set.
${ws}${te_set.module}${te_set.copy}( ${te_select.var_name}, &${extent}.${te_extent.active} );
.end if
