/*--------------------------------------------------------------------------
 * File:  ${te_file.factory}.${te_file.src_file_ext}
 *
 * Description:
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( "C" == te_target.language )
${all_domain_include_files}
.end if

.include "${te_file.arc_path}/t.sys_sets.c"

.if ( "C" == te_target.language )
${system_class_array.class_info}
.end if

/*
 * Create an instance of the class numbered on the input.
 * Return the handle of the created instance.
 */
${te_instance.handle}
${te_instance.scope}${te_instance.create}(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_set.element_type} * node;
  ${te_instance.handle} instance;
  ${te_cia.class_info_type} * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ ${domain_num_var} ] + class_num);
.end if
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  node = dci->${te_extent.inactive}.head;

  if ( 0 == node ) {
.if ( te_sys.UnitsToDynamicallyAllocate != 0 )
    ${te_set.element_type} * container =
      ( ${te_set.element_type} *) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * sizeof( ${te_set.element_type} ) );
    ${te_instance.handle} pool = ( ${te_instance.handle} ) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * dci->${te_extent.size_name} );
    if ( ( 0 == container ) || ( 0 == pool ) ) {
      ${te_callout.object_pool_empty}( ${domain_num_var}, class_num );
    } else {
      ${te_string.memset}( pool, 0, ${te_sys.UnitsToDynamicallyAllocate} * dci->${te_extent.size_name} );
      dci->${te_extent.inactive}.head = ${te_set.insert_block}(
        container, (const u1_t *) pool, dci->${te_extent.size_name}, ${te_sys.UnitsToDynamicallyAllocate} );
      node = dci->${te_extent.inactive}.head;
    }
.else
    ${te_callout.object_pool_empty}( ${domain_num_var}, class_num );
.end if
  }

  dci->${te_extent.inactive}.head = dci->${te_extent.inactive}.head->next;
  instance = (${te_instance.handle}) node->object;
  if ( 0 != dci->${te_extent.istate_name} ) {
    instance->${te_instance.current_state} = dci->${te_extent.istate_name};
  }
.if ( te_sys.InstanceLoading )
  if ( 0 == dci->active.head ) {
    dci->${te_extent.active}.head = node;
  } else {
    dci->${te_extent.active}.tail->next = node;
  }
  dci->${te_extent.active}.tail = node;
  node->next = 0;
.else
  ${te_set.insert_instance}( &dci->${te_extent.active}, node );
.end if
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  return instance;
}
.if ( te_sys.PersistentClassCount > 0 )
${te_instance.handle}
${te_instance.scope}${te_instance.create_persistent}(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num )
{ /* Use this interface to create persistent instances.  */
  ${te_instance.handle} instance = ${te_instance.scope}${te_instance.create}( domain_num, class_num );
  /* Mark the persistent instance as "clean".  */
  instance->${te_persist.dirty_name} = ${te_persist.dirty_clean};
  ${persist_check_mark.name}( instance, ${domain_num_var}, class_num );
  return instance;
}
.end if

/*
 * Delete an instance of the class passed and numbered on the input.
 */
void
${te_instance.scope}${te_instance.delete}(
  ${te_instance.handle} instance,
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_set.element_type} * node;
  ${te_cia.class_info_type} * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ ${domain_num_var} ] + class_num);
.end if
    .//
  if ( 0 != instance ) {
.if ( te_thread.enabled )
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
    .end if
.if ( te_sys.CollectionsFlavor == 20 )
  .if ( te_sys.UnitsToDynamicallyAllocate != 0 )
    node = ( ${te_set.element_type} * ) ${te_set.contains}( &dci->${te_extent.active}, instance );
  .else
    node = &dci->${te_extent.container_name}[ 0 ] +
      (((char *) instance - (char *) dci->${te_extent.pool_name} ) / dci->${te_extent.size_name} );
  .end if
    ${te_dlist.remove_node}( &dci->${te_extent.active}, node );
.else
    node = ${te_slist.remove_node}( &dci->active, instance );
.end if
    node->next = dci->${te_extent.inactive}.head;
    dci->${te_extent.inactive}.head = node;
    /* Initialize storage to zero.  */
    ${te_string.memset}( instance, 0, dci->${te_extent.size_name} );
    if ( ( 0 != dci->${te_extent.size_name} ) && ( 0 != dci->${te_extent.istate_name} ) ) {
      instance->current_state = -1; /* 0xff max for error detection */
    }
.if ( te_thread.enabled )
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  }
}
.if ( te_sys.PersistentClassCount > 0 )
void
${te_instance.scope}${te_instance.delete_persistent}(
  ${te_instance.handle} instance,
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num )
{ /* Use this interface to delete persistent instances.  */
  ${te_instance.scope}${te_instance.delete}( instance, ${domain_num_var}, class_num );
  Escher_PersistDelete( instance, domain_num, class_num );
}
  .include "${te_file.arc_path}/t.sys_persist.c"
.end if
.if ( te_sys.MaxInterleavedBridges > 0 )
  .invoke disable_interrupts = UserDisableInterrupts()
  .invoke enable_interrupts = UserEnableInterrupts()

  .include "${te_file.arc_path}/t.sys_ilb.c"
.end if
.if ( te_sys.InstanceLoading )

typedef void (*brf)( Escher_iHandle_t );
static brf batch_relaters[] = {
${all_batch_relaters}\
};

/*
 * Self- inter-relate instances one to another.
 */
void ${te_prefix.result}batch_relate( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
void ${te_prefix.result}batch_relate(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_typemap.instance_index_name} i;
  ${te_set.iterator_class_name} iterator;
  ${te_instance.handle} instance;
  ${te_cia.class_info_type} * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ domain_num ] + class_num);
.end if
  ${te_set.iterator_reset}( &iterator, &dci->${te_extent.active} );
  /* Cycle through the active list of instances of this class.  */
  while ( (instance = ${te_set.iterator_next}( &iterator )) != 0 ) {
    if ( 0 != batch_relaters[ class_num ] ) {
      (batch_relaters[ class_num ])( instance );
    }
  }
}

${all_instance_dumpersd}\
static ${te_prefix.result}idf * instance_dumpers[ SYSTEM_DOMAIN_COUNT ] = {
${all_instance_dumpers}\
};

/*
 * Dump out instances of this class.
 */
void ${te_prefix.result}dump_instances( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
void ${te_prefix.result}dump_instances(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_set.iterator_class_name} iterator;
  ${te_instance.handle} instance;
  ${te_prefix.result}idf * instance_dumper = instance_dumpers[ domain_num ];
  ${te_cia.class_info_type} * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ domain_num ] + class_num);
.end if
  if ( 0 != *instance_dumper[ class_num ] ) {
    ${te_set.iterator_reset}( &iterator, &dci->${te_extent.active} );
    /* Cycle through the active list of instances of this class.  */
    while ( (instance = ${te_set.iterator_next}( &iterator )) != 0 ) {
      (*instance_dumper[ class_num ])( instance );
    }
  }
}
.end if .// te_sys.InstanceLoading

/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
void
${te_instance.scope}${te_instance.factory_init}(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num )
{
.// Pre-existing Instances (PEI)
.// Generate code to link the statically initialized instances into
.// the active extent.
.//
.// Link the instances in reverse order to allow preexisting
.// instances (if any) to use the front of the array.
.//
  ${te_cia.class_info_type} * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ domain_num ] + class_num);
.end if
  if ( 0 != dci ) {
.if ( te_sys.PEIClassCount > 0 )
    int i = (intptr_t) dci->${te_extent.active}.head;
    dci->${te_extent.active}.head = ${te_set.insert_block}(
      dci->${te_extent.container_name},
      (const u1_t *) dci->${te_extent.pool_name},
      dci->${te_extent.size_name},
      i );
    dci->${te_extent.inactive}.head = ${te_set.insert_block}(
      dci->${te_extent.container_name} + i,
      (const u1_t *) dci->${te_extent.pool_name} + ( i * dci->${te_extent.size_name} ),
      dci->${te_extent.size_name},
      dci->${te_extent.population_name} - i );
.else
  dci->${te_extent.active}.head = 0;
  dci->${te_extent.inactive}.head = ${te_set.insert_block}(
    dci->${te_extent.container_name},
    (const u1_t *) dci->${te_extent.pool_name},
    dci->${te_extent.size_name},
    dci->${te_extent.population_name} );
.end if
  }
}
.if ( ( 0 < te_sys.StateSaveBufferSize ) or ( te_sys.PersistentClassCount > 0 ) )

/*
 * Given the instance handle and class number, return the instance index
 * (into the instance collection).
 */
${te_typemap.instance_index_name} ${te_prefix.result}getindex(
  const ${te_instance.handle} instance,
  const ${te_typemap.domain_number_name} ${domain_num_var},
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_cia.class_info_type} * dci = *( ${te_cia.class_info_name}[ ${domain_num_var} ] + class_num );
  return ( ((c_t *) instance - (c_t *) dci->pool ) / dci->size );
}
.end if
.include "${te_file.arc_path}/t.sys_events.c"
