/*---------------------------------------------------------------------
 * This code provides persistence mechanisms to maintain instances and
 * associations across power and reset cycles.
 *-------------------------------------------------------------------*/

${persist_class_union}
#define PERSIST_LARGEST_CLASS sizeof( ${persist_class_union_name} )
#define PERSIST_LINK_TYPE 0
#define PERSIST_INSTANCE_TYPE 1

/*
 * operation - 8 bits:
 *   Top nibble is operation.  Bottom nibble is item type.
 *   MSB  0 = delete, 1 = update
 *        0 =         1
 *        0 =         1
 *        0 =         1
 *        0 =         1
 *        0 =         1
 *        0 =         1
 *   LSB  0 = link,   1 = instance
 *
 *   00 = delete link
 *   01 = delete instance
 *   80 = update link
 *   81 = update instance
 */

/*
 * We need access to the ${te_cia.class_info_name} to access the instance
 * management structure.
 */
extern ${te_cia.class_info_type} * const * const ${te_cia.class_info_name}[];

/*
 * insts and links are dynamic lists of dirty instances and links
 * that need to be flushed to the non-volatile storage (upon on a
 * commit operation).
 * instlinks_active and insts/link_inactive are the collection of
 * animate and inanimate persistent instances and links.
 * inst/link_container is the list of containoids used to manage the
 * collection of persistent instances/links.
 * inst/link_pool represents the actual storage for these managed
 * instances/links.
 */
typedef struct {
  ${te_persist.instid_type} ${te_persist.instid_name};
  ${te_instance.handle} instance;
} persist_instance_t;
typedef struct { u1_t operation; persist_instance_t inst; } op_inst_t;
typedef struct { u1_t operation; ${te_persist.link_type_name} link; } op_link_t;
typedef union { op_inst_t inst; op_link_t link; } instlink_t;
static ${te_set.scope}${te_set.base_class} insts_inactive, links_inactive;
static struct { Escher_SetElement_s * head, * tail; } instlinks_active;
static ${te_set.scope}${te_set.element_type} inst_container[ ${te_persist.instance_cache_depth} ];
static ${te_set.scope}${te_set.element_type} link_container[ ${te_persist.link_cache_depth} ];
static op_inst_t inst_pool[ ${te_persist.instance_cache_depth} ] ;
static op_link_t link_pool[ ${te_persist.link_cache_depth} ] ;

static bool restoring = false;   /* flag to prevent recursion */

/*
 * Return true if input class is active (having a state machine).
 */
#ifdef MC3020_DEFAULT_STATE
static bool is_active_class( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
static bool is_active_class(
  const ${te_typemap.domain_number_name} ${domain_num_var},
  const ${te_typemap.object_number_name} class_num
)
{
  bool rc = false;
  static const ${te_typemap.object_number_name} ${te_cia.active_count}[ SYSTEM_DOMAIN_COUNT ] = {
${active_class_counts}\
  };
  if ( class_num < ${te_cia.active_count}[ ${domain_num_var} ] ) {
    rc = true;
  }
  return rc;
}
#endif

/*
 * Given the class number and the instance index, return the corresponding
 * instance handle.
 */
static ${te_instance.handle} ${te_prefix.result}getinstance(
  const ${te_typemap.domain_number_name},
  const ${te_typemap.object_number_name},
  const ${te_typemap.instance_index_name} );
static ${te_instance.handle} ${te_prefix.result}getinstance( 
  const ${te_typemap.domain_number_name} ${domain_num_var},
  const ${te_typemap.object_number_name} class_num,
  const ${te_typemap.instance_index_name} index
)
{
  ${te_cia.class_info_type} * dci = *( ${te_cia.class_info_name}[ ${domain_num_var} ] + class_num );
  return (${te_instance.handle})
    ( (c_t *) dci->pool + ( dci->size * index ) );
}

.if ( te_thread.enabled )
#ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
extern bool ${te_eq.run_flag};
static void * persist_commit_loop( void * );
static void * persist_commit_loop( void * thread )
{
  u1_t t = *( (u1_t *) thread );
  while ( true == ${te_eq.run_flag} ) {
    ${te_persist.commit}();
    ${te_thread.nonbusy_wait}( t );
  }
  ${te_persist.commit}();
  return 0;
}
#endif

.end if
static void Escher_PostPersistentInstance(
${persist_check_mark.arglist_types},
  const u1_t );
static void Escher_PostPersistentInstance(
${persist_check_mark.arglist},
  const u1_t operation
)
{
  op_inst_t * opinst;
  ${te_set.scope}${te_set.element_type} * node;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_PERSIST );
  #endif
.else
  if ( insts_inactive.head == 0 ) { /* Instance cache is full.  */
    ${te_persist.commit}(); /* Flush to NVS.  */
  }
.end if
  node = insts_inactive.head; /* Shift item from inactive to active.  */
  insts_inactive.head = insts_inactive.head->next;
  opinst = (op_inst_t *) node->object;
  /* Post to FIFO queue.  */
  node->next = 0;
  if ( instlinks_active.tail == 0 ) {
    instlinks_active.head = node;
  } else {
    instlinks_active.tail->next = node;
  }
  instlinks_active.tail = node;
  opinst->operation = operation;
  opinst->inst.instance_identifier.domainnum = domain_num;
  opinst->inst.instance_identifier.classnum = class_num;
  opinst->inst.instance_identifier.index =
    ${te_prefix.result}getindex( instance, ${domain_num_var}, class_num );
  opinst->inst.instance = instance;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
  ${te_thread.nonbusy_wake}( PERSISTENCE_THREAD_NUMBER );
  #endif
.end if
}

/*
 * Remove the instance from the non-volatile store.
 */
void
${te_persist.remove}(
  const ${te_instance.handle} instance,
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  Escher_PostPersistentInstance( instance, domain_num, class_num, 0x01 );
}

/*
 * Initialize the system level collection structures (for links).
 */
void
${te_persist.factory_init}( void )
{
.if ( te_thread.enabled )
  u1_t thread = PERSISTENCE_THREAD_NUMBER;
.end if
  links_inactive.head = ${te_prefix.result}SetInsertBlock(
    &link_container[0], (const u1_t *) &link_pool[0],
    sizeof( op_link_t ), ${te_persist.link_cache_depth} );
  insts_inactive.head = ${te_prefix.result}SetInsertBlock(
    &inst_container[0], (const u1_t *) &inst_pool[0],
    sizeof( op_inst_t ), ${te_persist.instance_cache_depth} );
.if ( te_thread.enabled )
  ${te_thread.create}( persist_commit_loop, thread );
.end if
}

/*
 * Check, mark and post the given instance to the persistent flush queue.
 * This routine places instances into the queue only if they have not
 * already been posted and marked as dirty.
 */
${persist_check_mark.type}
${persist_check_mark.name}(
${persist_check_mark.arglist}
)
{
  /* Check if instance is "clean".  If so (first mod), then queue it.  */
  if ( instance->${te_persist.dirty_name} == ${te_persist.dirty_clean} ) {
    instance->${te_persist.dirty_name} = ${te_persist.dirty_dirty}; /* Mark dirty.  */
    Escher_PostPersistentInstance( instance, domain_num, class_num, 0x81 );
  }
}

/*
 * Queue a link to be persisted.
 */
void ${persist_post_link.name}(
${persist_post_link.arglist}
)
{
  if ( restoring != true ) {
    op_link_t * oplink;
    ${te_set.scope}${te_set.element_type} * node;
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_PERSIST );
    #endif
.else
    if ( links_inactive.head == 0 ) { /* Link cache is full.  */
      ${te_persist.commit}(); /* Flush to NVS.  */
    }
.end if
    node = links_inactive.head; /* Shift item from inactive to active.  */
    links_inactive.head = links_inactive.head->next;
    /* Post to FIFO queue.  */
    node->next = 0;
    if ( instlinks_active.tail == 0 ) {
      instlinks_active.head = node;
    } else {
      instlinks_active.tail->next = node;
    }
    instlinks_active.tail = node;
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
    #endif
.end if
    oplink = (op_link_t *) node->object;
    /* Load with input data.  */
    oplink->link.owner.domainnum = domain;
    oplink->link.owner.classnum = owning_class;
    oplink->link.owner.index = ri;
    oplink->link.left.domainnum = domain;
    oplink->link.left.classnum = l;
    oplink->link.left.index = ${te_prefix.result}getindex( left, domain, l );
    oplink->link.right.domainnum = domain;
    oplink->link.right.classnum = r;
    oplink->link.right.index = ${te_prefix.result}getindex( right, domain, r );
    if ( assoc != 0 ) { /* associative class present */
      oplink->link.assoc.domainnum = domain;
      oplink->link.assoc.classnum = a;
      oplink->link.assoc.index = ${te_prefix.result}getindex( assoc, domain, a );
    } else {
      oplink->link.assoc.domainnum = 0;
      oplink->link.assoc.classnum = 0;
      oplink->link.assoc.index = 0;
    }
    if ( operation == 0 ) {
      oplink->operation = 0x80; /* insert/update + link */
    } else if ( operation == 1 ) {
      oplink->operation = 0x00; /* delete + link */
    } else {
      ${te_callout.persistence_error}( 0x44 );
    }
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.nonbusy_wake}( PERSISTENCE_THREAD_NUMBER );
    #endif
.end if
  } /* not restoring */
}

/*
 * Commit all queued dirty instances and links to non-volatile
 * storage.  Iterate through the accumulated list bridging to the
 * NVS domain to write or update the elements.
 */
i_t
${te_persist.commit}( void )
{
  i_t rc = 0;
  u1_t work_to_do;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_PERSIST );
  #endif
.end if
  work_to_do = ( instlinks_active.head != 0 ) ? 1 : 0;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
  #endif
.end if
  while ( work_to_do != 0 ) {
    ${te_set.scope}${te_set.element_type} * node;
    instlink_t * ili;
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_PERSIST );
    #endif
.end if
    node = instlinks_active.head; /* Shift item off of active queue.  */
    instlinks_active.head = instlinks_active.head->next;
    if ( instlinks_active.head == 0 ) {
      instlinks_active.tail = 0;
    }

    ili = (instlink_t *) node->object;

    if ( ( ili->inst.operation & 0x0f ) == 1 ) {
      /* Item is instance.  */
      ${te_typemap.domain_number_name} domain_num;
      ${te_typemap.object_number_name} class_num;
      ${te_typemap.instance_index_name} index_num;
      ${te_cia.class_info_type} * dci;
      node->next = insts_inactive.head; /* Shift item onto inst queue.  */
      insts_inactive.head = node;
.if ( te_thread.enabled )
      #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
      #endif
.end if
      domain_num = ili->inst.inst.instance_identifier.domainnum;
      class_num = ili->inst.inst.instance_identifier.classnum;
      index_num = ili->inst.inst.instance_identifier.index;
      dci = *( ${te_cia.class_info_name}[ domain_num ] + class_num );
      if ( ili->inst.operation == 0x81 ) {
        if ( ( rc = NVS_insert( (domain_num << 24) + (class_num << 16) +
          ili->inst.inst.instance_identifier.index, dci->size_no_rel,
          ( c_t * ) ili->inst.inst.instance, PERSIST_INSTANCE_TYPE )
           ) >= 0 ) {
          ili->inst.inst.instance->${te_persist.dirty_name} = ${te_persist.dirty_clean};
          rc = 0;
        } else {
          ${te_callout.persistence_error}( rc );
          break;
        }
      } else if ( ili->inst.operation == 0x01 ) {
        NVS_remove( (domain_num << 24) + (class_num << 16) + index_num,
          0, 0, PERSIST_INSTANCE_TYPE );
      } else {
        ${te_callout.persistence_error}( 0x77 );
        break;
      }
    } else if ( ( ili->link.operation & 0x0f ) == 0 ) {
      /* Item is link.  */
      node->next = links_inactive.head; /* Shift item onto link queue.  */
      links_inactive.head = node;
.if ( te_thread.enabled )
      #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
      #endif
.end if
      if ( ili->link.operation == 0x80 ) {
        if ( ( rc = NVS_insert( 0, sizeof( ${te_persist.link_type_name} ),
          ( c_t * ) &ili->link.link, PERSIST_LINK_TYPE ) ) >= 0 ) {
          rc = 0;
        } else {
          ${te_callout.persistence_error}( rc );
          break;
        }
      } else if ( ili->link.operation == 0x00 ) {
        NVS_remove( 0, sizeof( ${te_persist.link_type_name} ),
          ( c_t * ) &ili->link.link, PERSIST_LINK_TYPE );
      } else {
        ${te_callout.persistence_error}( 0x88 );
        break;
      }
    } else {
      ${te_callout.persistence_error}( 0x99 );
      break;
    }
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_PERSIST );
    #endif
.end if
    work_to_do = ( instlinks_active.head != 0 ) ? 1 : 0;
.if ( te_thread.enabled )
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_PERSIST );
    #endif
.end if
  }
  return rc;
}

/*
 * Restore instances and links from non-volatile storage (NVS).
 * First, restore the instances.
 * Then, restore the links by calling the Link routines from the
 * various owning classes.
 */
i_t
${te_persist.restore}( void )
{
  i_t rc = 0, type;
  c_t buffer[ PERSIST_LARGEST_CLASS + 1 ];
  c_t done = 0;
  ${te_cia.class_info_type} * dci;
  u4_t key;
  i_t length;
  restoring = true;
  NVS_initialize();
  /* Restore instances.  */
  while ( done == 0 ) {
    ${te_typemap.domain_number_name} dn;
    ${te_typemap.object_number_name} cn;
    ${te_typemap.instance_index_name} ii;
    ${te_set.scope}${te_set.element_type} * node;
    length = NVS_next( (i_t *) &key, PERSIST_LARGEST_CLASS, &buffer[0], &type );
    if ( length <= 0 ) {
      done = 1;
    } else if ( type == PERSIST_INSTANCE_TYPE ) {
      ${te_instance.handle} i1, i2;
      i1 = (${te_instance.handle}) buffer;
      ii = (${te_typemap.instance_index_name}) ( key & 0x0000ffff );
      cn = (${te_typemap.object_number_name}) ( ( key >> 16 ) & 0x000000ff );
      dn = (${te_typemap.domain_number_name}) ( ( key >> 24 ) & 0x000000ff );
      dci = *( ${te_cia.class_info_name}[ dn ] + cn );
      i1->${te_persist.dirty_name} = ${te_persist.dirty_clean}; /* Mark as "clean".  */
.if ( te_sys.CollectionsFlavor == 20 )
      node = dci->container + ii; /* pointer arithmetic */
      ${te_dlist.remove_node}( &dci->inactive, node );
.else
      node = ${te_slist.remove_node}( &dci->inactive,
        (c_t *) dci->pool + ( ii * dci->size ) );
.end if
      i2 = (${te_instance.handle}) node->object;
      ${te_set.insert_instance}( &dci->active, node );
      ${te_string.memmove}( i2, buffer, dci->size_no_rel );
      #ifdef MC3020_DEFAULT_STATE
      if ( is_active_class( dn, cn ) ) {
        i2->${te_instance.current_state} = dci->${te_extent.istate_name};
      }
      #endif
    } else { /* MISRA nop */ }
  }
  done = 0;
  NVS_initialize();
  /* Restore links.  */
  while ( done == 0 ) {
    length = NVS_next( (i_t *) &key, PERSIST_LARGEST_CLASS, &buffer[0], &type );
    if ( length <= 0 ) {
      done = 1;
    } else if ( type == PERSIST_LINK_TYPE ) {
      /* Populate local link structure with info from the NVS buffer.
       * Call the appropriate link routine.
       */
      ${te_persist.link_type_name} link;
      ${te_string.memmove}( &link, buffer, sizeof( ${te_persist.link_type_name} ) );
      dci = *( ${te_cia.class_info_name}[ link.owner.domainnum ]
        + link.owner.classnum );
      dci->link_function( link.owner.index,
        ${te_prefix.result}getinstance(
          link.left.domainnum, link.left.classnum, link.left.index ),
        ${te_prefix.result}getinstance(
          link.right.domainnum, link.right.classnum, link.right.index ),
        ${te_prefix.result}getinstance(
          link.assoc.domainnum, link.assoc.classnum, link.assoc.index )
      );
    } else { /* MISRA nop */ }
  }
  restoring = false;
  return rc;
}
.//
