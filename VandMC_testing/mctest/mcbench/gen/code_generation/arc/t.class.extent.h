.//

#define ${te_class.GeneratedName}_MAX_EXTENT_SIZE \
.if ( 0 == te_class.MaxExtentSize )
1
.else
${te_class.MaxExtentSize}
.end if
extern ${te_set.scope}${te_extent.type} ${extent};
    .// If PEI, then allow instance pool to be visible from other classes.
.if ( te_class.PEIsDefinedInData )
extern ${te_class.GeneratedName} ${te_class.GeneratedName}_instances[ ${te_class.GeneratedName}_MAX_EXTENT_SIZE ];
.end if
.//
