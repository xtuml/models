/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
.// Pre-allocated object instance storage pool
${fixed_extent_begin}\
.if ( te_class.PEIsDefinedInData )
${peis.assset}\
.end if
static ${te_set.scope}${te_set.element_type} ${te_class.GeneratedName}_container[ ${te_class.GeneratedName}_MAX_EXTENT_SIZE ];
.// If PEI, then allow instance pool to be visible from other classes.
.if ( not te_class.PEIsDefinedInData )
static \
.end if
${te_class.GeneratedName} ${te_class.GeneratedName}_instances[ ${te_class.GeneratedName}_MAX_EXTENT_SIZE ]\
.if ( te_class.PEIsDefinedInData )
 = {
${peis.body}\
};
.else
;
.end if
${fixed_extent_end}\
.//
.// The following initialization of PEI count is a little nasty.
.// We will assign the active extent pointer to the count just for bringup.
.//
${te_set.scope}${te_extent.type} ${extent} = {
  {${pei_counter}\
.if ( te_sys.InstanceLoading )
,0}, {0,0},\
.else
}, {0},\
.end if
 &${te_class.GeneratedName}_container[ 0 ],
  (${te_instance.handle}) &${te_class.GeneratedName}_instances,
  sizeof( ${te_class.GeneratedName} ), ${state_init}, ${te_class.GeneratedName}_MAX_EXTENT_SIZE${persistent_extent_attrs.body}
  };
.//
