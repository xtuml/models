.if ( "C" == te_target.language )
  .// If the number of containoids needed is zero (0), then
  .// do not allocate any.  In such a case, we need to eliminate
  .// the definition of this variable as it is illegal to define
  .// an array of length 0.
  .if ( te_sys.TotalContainers > 0 )
/*
 * Allocate the storage for the pool of container nodes.
 */
static ${te_set.base_class} node1_FreeList;
static ${te_set.element_type} node1s[ ${te_set.number_of_containoids} ];
  .else
/* No containers allocated.  */
  .end if
.end if

/*
 * Supply a unique integer ID.
 */
${te_prefix.type}UniqueID_t
${te_prefix.type}ID_factory( void )
{
  static ${te_prefix.type}UniqueID_t ${te_prefix.type}ID_factory = 1;
  return ${te_prefix.type}ID_factory++;
}

.if ( te_sys.InstanceLoading )
/*
 * Deserialize a UUID into a unique integer ID.
 * This routine also handles 32-bit integers as produced by xtumlmc_build cleanse.
 * String UUIDs are detected when exactly 4 dashes are found in the input.
 */
${te_prefix.type}UniqueID_t ${te_string.uuidtou128}( const c_t * s )
{
  u1_t b, isuuid = 0;
  ${te_prefix.type}UniqueID_t v = 0; /* 128-bit hex answer */
  s4_t n = 0; /* 32-bit decimal answer */

  while(*s) {
    b = *s++;

    switch(b) {
    case '0'...'9':
      b -= '0';
      n = n * 10 + b;
      break;

    case 'a'...'f':
      b -= 'a';
      b += 10;
      break;

    case 'A'...'F':
      b -= 'A';
      b += 10;
      break;

    case '-':
      isuuid++;
    default:
      continue;
    }
    v = (v << 4) | (b & 0xF);
  }

  if ( 4 == isuuid )
    return v;
  else
    return n;
}


#define $u{te_prefix.type}GET_BITS(v,b,m) (b < sizeof(v)*8 ? (m & (v >> b)) : 0)
/*
 * Serialize an unsigned 128-bit integer into a string format UUID.
 */
c_t * ${te_string.u128touuid}( c_t * s, ${te_prefix.type}UniqueID_t i )
{
  u4_t uuid1 = (u4_t) ${te_prefix.define_u}GET_BITS( i, 96, 0xffffffff );
  u2_t uuid2 = (u2_t) ${te_prefix.define_u}GET_BITS( i, 80, 0xffff );
  u2_t uuid3 = (u2_t) ${te_prefix.define_u}GET_BITS( i, 64, 0xffff );
  u2_t uuid4 = (u2_t) ${te_prefix.define_u}GET_BITS( i, 48, 0xffff );
  u2_t uuid5 = (u2_t) ${te_prefix.define_u}GET_BITS( i, 32, 0xffff );
  u4_t uuid6 = (u4_t) ${te_prefix.define_u}GET_BITS( i, 0, 0xffffffff );
  snprintf( s, 40, "\"%08lx-%04x-%04x-%04x-%04x%08lx\"", uuid1, uuid2, uuid3, uuid4, uuid5, uuid6 );
  return s;
}


.end if
/*
 * Detect empty handles in expressions.
 */
void * xtUML_detect_empty_handle( void * h, const char * s1, const char * s2 )
{
  if ( 0 == h ) {
    ${te_prefix.define_usw}XTUML_EMPTY_HANDLE_TRACE( s1, s2 );
  }
  return h;
}

/*
 * Initialize the node1 instances by linking them into a collection.
 * These containoids will be collected into a null-terminated,
 * singly linked list (slist).
 * This needs to be called during architecture initialization.
 */
void
${te_set.scope}${te_set.factory}( const i_t n1_size )
{
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
  ${te_prefix.type}size_t i;
  node1_FreeList.head = &node1s[ 0 ];
  /* Build the collection (linked list) of node1 instances.  */
  .if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
  for ( i = 0; ( i + 1 ) < n1_size; i++ ) {
    node1s[ i ].next = &node1s[ i + 1 ];
    node1s[ i ].object = 0;
  }
  .end if
  node1s[ n1_size - 1 ].next = 0;
.else
  /* Set factory initialization optimized out.  */
.end if
}

/*
 * This will copy all of the elements from one set into another
 * set.  If the target set is not empty, it will be cleared
 * before the copy operation occurs freeing any nodes in that set.
 * The new set will use containoids from the free list.
 */
    .// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
void 
${te_set.scope}${te_set.copy}( ${te_set.base_class} * to_set,
                const ${te_set.base_class} * const from_set )
{
  const ${te_set.element_type} * slot;

  /* May be copying into an existing set, release target collection nodes.  */
  ${te_set.clear}( to_set );

  for ( slot = from_set->head; ( slot != 0 ); slot = slot->next ) {
    ${te_set.insert_element}( to_set, slot->object ); 
  }
}
.else
/* Set copy code optimized out.  */
.end if

/*
 * Release all nodes in the given set back to the free pool.
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
void
${te_set.scope}${te_set.clear}( ${te_set.base_class} * set )
{
  if ( set->head != 0 ) {                                    /* empty set  */
    ${te_set.element_type} * slot;
    for ( slot = set->head; ( slot->next != 0 ); slot = slot->next ); /* Find end.  */
.if ( te_thread.enabled )
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
    slot->next = node1_FreeList.head;     /* Tie string to free list.      */
    node1_FreeList.head = set->head;      /* Point free list to head.      */
.if ( te_thread.enabled )
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
    ${te_set.init}( set );                /* Zero set out.  */
  }
}
.else
/* Set clearing code optimized out.  */
.end if

/*
 * Take the union of set1 and set2 and return to_set
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
${te_set.base_class} *
${te_set.scope}${te_set.setunion}( ${te_set.base_class} * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
  .if ( te_thread.enabled )
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
    /* Assure that the result set starts empty */
    ${te_set.clear}( to_set );
    /* Copy set1 to the result set */
    if ( 0 != set1 ) {
      if ( flags & ${te_prefix.define_u}SET_LHS_IS_INSTANCE ) {
        ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set1 );
      }
      else {
        ${te_set.scope}${te_set.copy}( to_set, set1 );
      }
    }
    /* Add any elements from set2 which are not already in the result set */
    if ( 0 != set2 ) {
      if ( flags & ${te_prefix.define_u}SET_RHS_IS_INSTANCE ) {
        if ( !${te_set.scope}${te_set.contains}( to_set, set2 ) ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set2 );
      }
      else {
        ${te_set.element_type} * slot;
        for ( slot = ((${te_extent.sets_type}*)set2)->head; ( slot != 0 ); slot = slot->next ) {
          if ( !${te_set.scope}${te_set.contains}( to_set, slot->object ) ) {
            ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), slot->object );
          }
        }
      }
    }
  .if ( te_thread.enabled )
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
  }
  return to_set;
}
.else
/* Set union optimized out.  */
.end if

/*
 * Take the intersection of set1 and set2 and return to_set
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
${te_set.base_class} *
${te_set.scope}${te_set.setintersection}( ${te_set.base_class} * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
  .if ( te_thread.enabled )
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
    /* Assure that the result set starts empty */
    ${te_set.clear}( to_set );
    if ( 0 != set1 && 0 != set2) {
      /* If both sets are single instances, only add to the result set if they are the same instance */
      if ( ( flags & ${te_prefix.define_u}SET_LHS_IS_INSTANCE ) && ( flags & ${te_prefix.define_u}SET_RHS_IS_INSTANCE ) ) {
        if ( set1 == set2 ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set1 );
      }
      /* If set1 is a single instance, add it to the result set if it is contained in set2 */
      else if ( flags & ${te_prefix.define_u}SET_LHS_IS_INSTANCE ) {
        if ( ${te_set.scope}${te_set.contains}( set2, set1 ) ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set1 );
      }
      /* If set2 is a single instance, add it to the result set if it is contained in set1 */
      else if ( flags & ${te_prefix.define_u}SET_RHS_IS_INSTANCE ) {
        if ( ${te_set.scope}${te_set.contains}( set1, set2 ) ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set2 );
      }
      /* For each instance in set1, add it to the result set if it is contained in set2 */
      else {
        ${te_set.element_type} * slot;
        for ( slot = ((${te_extent.sets_type}*)set1)->head; ( slot != 0 ); slot = slot->next ) {
          if ( ${te_set.scope}${te_set.contains}( set2, slot->object ) ) {
            ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), slot->object );
          }
        }
      }
    }
  .if ( te_thread.enabled )
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
  }
  return to_set;
}
.else
/* Set intersection optimized out.  */
.end if

/*
 * Subtract set2 from set1 and return to_set
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
${te_set.base_class} *
${te_set.scope}${te_set.setdifference}( ${te_set.base_class} * const to_set, void * const set1, void * const set2, int flags )
{
  if ( 0 != to_set ) {
  .if ( te_thread.enabled )
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
    /* Assure that the result set starts empty */
    ${te_set.clear}( to_set );
    if ( 0 != set1 ) {
      if ( flags & ${te_prefix.define_u}SET_LHS_IS_INSTANCE ) {
        /* If both sets are single instances, only add set1 to the result set if they are not the same instance */
        if ( flags & ${te_prefix.define_u}SET_RHS_IS_INSTANCE ) {
          if ( set1 != set2 ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set1 );
        }
        /* If set1 is a single instance, only add it to the result set if it is not contained in set2 */
        else {
          if ( 0 != set2 && !${te_set.scope}${te_set.contains}( set2, set1 ) ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), set1 );
        }
      }
      else {
        /* For each element in set1, check if it is also in set2 */
        ${te_set.element_type} * slot;
        for ( slot = ((${te_extent.sets_type}*)set1)->head; ( slot != 0 ); slot = slot->next ) {
          /* If set2 is a single instance, add the the set1 instance to the result set only if they are not the same instance */
          if ( flags & ${te_prefix.define_u}SET_RHS_IS_INSTANCE ) {
            if ( slot->object != set2 ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), slot->object );
          }
          /* Only add the set1 instance to the result set if it is not contained in set2 */
          else {
            if ( 0 != set2 && !${te_set.scope}${te_set.contains}( set2, slot->object ) ) ${te_set.insert_element}( ((${te_extent.sets_type}*)to_set), slot->object );
          }
        }
      }
    }
  .if ( te_thread.enabled )
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
  .end if
  }
  return to_set;
}
.else
/* Set difference optimized out.  */
.end if

/*
 * Take the symmetric difference of set1 and set2 and return to_set
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
${te_set.base_class} *
${te_set.scope}${te_set.setsymmetricdifference}( ${te_set.base_class} * const to_set, void * const set1, void * const set2, int flags )
{
  /* Symmetric difference is the difference of the union and the intersection */
  ${te_set.scope}${te_set.base_class} union_set={0};
  ${te_set.scope}${te_set.base_class} intersection_set={0};
  ${te_set.scope}${te_set.setdifference}( to_set, ${te_set.scope}${te_set.setunion}( &union_set, set1, set2, flags ), ${te_set.scope}${te_set.setintersection}( &intersection_set, set1, set2, flags ), 0 );
  ${te_set.module}${te_set.clear}( &union_set );
  ${te_set.module}${te_set.clear}( &intersection_set );
  return to_set;
}
.else
/* Set symmetric difference optimized out.  */
.end if

/*
 * Insert a single element into the set in no particular order.
 * The element is a data item.  A container node will be allocated
 * to link in the element.
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
void
${te_set.scope}${te_set.insert_element}(
  ${te_set.base_class} * set,
  void * const substance
)
{
  ${te_set.element_type} * slot;
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  if ( 0 == node1_FreeList.head ) {
  .if ( te_sys.UnitsToDynamicallyAllocate != 0 )
    ${te_set.element_type} * new_mem = ( ${te_set.element_type} *) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * sizeof( ${te_set.element_type} ) );
    if ( 0 == new_mem ) {
      ${te_callout.node_list_empty}(); /* Bad news!  No more heap space.  */
    } else {
      i_t i;
      for ( i = 0; i < ${te_sys.UnitsToDynamicallyAllocate} - 1; i++ ) {
        new_mem[ i ].next = (${te_set.element_type} *) &(new_mem[ i + 1 ]);
      }
      new_mem[ ${te_sys.UnitsToDynamicallyAllocate} - 1 ].next = 0;
      node1_FreeList.head = new_mem;
    }
  .else
    ${te_callout.node_list_empty}(); /* Bad news!  No more nodes.         */
  .end if
  }
  slot = node1_FreeList.head; /* Extract node from free list head. */
  node1_FreeList.head = node1_FreeList.head->next;
  slot->object = substance;
  slot->next = set->head;     /* Insert substance at list front.   */
  set->head = slot;
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
}
.else
/* Set insertion code optimized out.  */
.end if

/*
 * Insert a block of objects into the given set in sequence.  Link the
 * data into the supplied containers.
 * Return a pointer to the linked set.
 */
.if ( ( not_empty te_cs ) or ( "C++" == te_target.language ) )
${te_set.scope}${te_set.element_type} *
${te_set.scope}${te_set.insert_block}( ${te_set.element_type} * container,
                       const u1_t * instance,
                       const ${te_prefix.type}size_t length,
                       ${te_prefix.type}size_t count )
{
  ${te_set.element_type} * head = ( count > 0 ) ? container : 0;
.if ( te_sys.CollectionsFlavor == 20 )
  ${te_prefix.type}size_t n = count;
.end if
  while ( count > 0 ) {
.if ( te_sys.CollectionsFlavor == 20 )
    container->prev = ( count < n ) ? container - 1 : 0;
.end if
    count--;
    container->object = (void *) instance;  /* Link in the object data.     */
.// MISRA Revisit
.if ( TRUE )
    instance = instance + length;           /* Bump to next object image.   */
    .else
    { ${te_prefix.type}size_t i=length; while ( i>0 ) {instance++; i--;} } /* slow for MISRA-C */
.end if
    /* String together or ground containoids.  */
    container->next = ( count > 0 ) ? container + 1 : 0;
    container++;
  }
  return head;
}
.else
/* Block insertion optimized out.  */
.end if

/*
 * Remove an instance from an instance collection.
 */
/* Signature:  void ${te_set.remove_instance}( pextent, instance, slot, container, pool ) */

/*
 * Insert an instance onto an extent.
 */
/* Signature:  void ${te_set.insert_instance}( pextent, node ) */

.if ( te_sys.CollectionsFlavor == 20 )
/*
 * Remove an item from the given set which is a doubly linked list.
 */
void
${te_set.scope}${te_dlist.remove_node}(
  ${te_set.base_class} * set,
  ${te_set.element_type} * const slot
)
{
  if ( set->head == slot ) {     /* node found at head of list       */
    set->head = set->head->next; /* Shift off head of list.          */
    .// if ( set->head ) set->head->prev = 0 not necessary, never derefed
  } else {
    slot->prev->next = slot->next;
    if ( slot->next ) slot->next->prev = slot->prev;
  }
}
.end if

/*
 * Remove a data item from the given set.  This requires searching
 * the set for the item, unlinking the item (if found) and returning
 * the pointer to the removed node.  SetRemoveNode is used
 * when some knowledge of the linking mechanism is required (as
 * in extent management).  SetRemoveElement is used whenever
 * possible.
 */
${te_set.scope}${te_set.element_type} *
${te_set.scope}${te_slist.remove_node}(
  ${te_set.base_class} * set,
  const void * const d
)
{
  ${te_set.element_type} * t = set->head; /* Start with first node.           */
  ${te_set.element_type} * t_old = t;
  /* Find node containing data and unlink from list.                 */
  if ( t->object == d ) {        /* Element found at head.           */
    set->head = t->next;         /* Unlink it from the list.         */
  } else {
    do {                         /* Search for data element.         */
      t_old = t;
      t = t->next;
      if ( t == 0 ) { return 0; } /* absent       */
    } while ( t->object != d );
    t_old->next = t->next;      /* Unlink element from the list.     */
  }
.if ( te_sys.InstanceLoading )
  if ( set->tail == t ) {
    set->tail = t_old;
  }
.end if
  return t;
}

/*
 * This interface is used more often to remove an element.  This is
 * used when maximum anonymity is required.  Escher_SetRemoveNode is
 * used when some knowledge of the linking mechanism is required (as
 * in extent management).
 */
.// If no containers to manage, do not generate code.
.if ( ( te_sys.TotalContainers > 0 ) or ( "C++" == te_target.language ) )
void
${te_set.scope}${te_set.remove_element}(
  ${te_set.base_class} * set,
  const void * const d
)
{
  ${te_set.element_type} * t;
  if ( set->head != 0 ) {                     /* empty set */
    t = ${te_slist.remove_node}( set, d );
    /* Return node to architecture collection (free list).             */
    if ( t != 0 ) {
.if ( te_thread.enabled )
      ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
      t->next = node1_FreeList.head;
      node1_FreeList.head = t;
.if ( te_thread.enabled )
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
    }
  }
}
.else
/* Set remove element code optimized out.  */
.end if

/*
 * Return a pointer to the found element when the set contains the 
 * given data element.
 */
.if ( ( not_empty te_cs ) or ( "C++" == te_target.language ) )
const void *
${te_set.scope}${te_set.contains}(
  const ${te_set.base_class} * const set,
  const void * const element
)
{
  const ${te_set.element_type} * node = set->head;
  while ( node != 0 ) {
    if ( node->object == element ) { return node; }  /* found  */
    node = node->next;
  }
  if ( 0 == element ) return ( const void * ) 1; /* every set contains null */
  return 0;                                      /* absent */
}
.else
/* Set containment method optimized out.  */
.end if

/*
 * Count the elements in the set.  Return that count.
 * This routine counts nodes.
 */
.if ( ( not_empty te_cs ) or ( "C++" == te_target.language ) )
${te_prefix.type}size_t
${te_set.scope}${te_set.element_count}( const ${te_set.base_class} * const set )
{
  ${te_prefix.type}size_t result = 0;
  const ${te_set.element_type} * node = set->head;
  while ( node != 0 ) {
    result++;
    node = node->next;
  }
  return result;
}
.else
/* Counting of set elements optimized out.  */
.end if

/*
 * Return true when the left and right set are equivalent.
 * The left set is equal to the right set if and only if
 * the left set contains all elements of the right set AND
 * the right set contains all elements of the left set.
 */
.if ( ( not_empty te_cs ) or ( "C++" == te_target.language ) )
bool
${te_set.scope}${te_set.equality}( ${te_set.base_class} * const left_set,
                    ${te_set.base_class} * const right_set )
{
  bool rc = true;
  /* Assure the right set contains all elements in the left set */
  const ${te_set.element_type} * node = left_set->head;
  while ( 0 != node ) {
    if ( 0 == right_set || !${te_set.scope}${te_set.contains}( right_set, node->object ) ) {
      rc = false;
      break;
    }
    node = node->next;
  }
  if ( rc ) {
    /* Assure the left set contains all elements in the right set */
    node = right_set->head;
    while ( 0 != node ) {
      if ( 0 == left_set || !${te_set.scope}${te_set.contains}( left_set, node->object ) ) {
        rc = false;
        break;
      }
      node = node->next;
    }
  }
  return rc;
}
.else
/* Set equality function optimized out.  */
.end if

/*
 * Initialize a set variable.
 */
/* Signature:  void ${te_set.init}( ${te_set.base_class} * set ) */

/*
 * Get any element (1st) from a collection.
 */
/* Signature:  void * ${te_set.get_any}( ${te_set.base_class} * const set ) */

/*
 * Return true if set is empty.
 */
/* Signature:  bool ${te_set.emptiness}( const ${te_set.base_class} * const set ) */

/*
 * Use this method to reset the cursor.
 */
/* Signature:  void ${te_set.iterator_reset}( ${te_set.iterator_class_name} * const iterator,
 *                                        ${te_set.base_class} * const set )
 */

/*
 * Interate to the next element and return it.
 */
void *
${te_set.scope}${te_set.iterator_next}( ${te_set.iterator_class_name} * const iter )
{
  void * element = 0;
  if ( iter->cursor != 0 ) {
    element = iter->cursor->object;
    iter->cursor = iter->cursor->next;
  }
  return element;
}

/*
 * Set memory bytes to value at destination.
 */
void
${te_set.scope}${te_string.memset}( void * const dst, const u1_t val, ${te_prefix.type}size_t len )
{
  u1_t * d = (u1_t *) dst;
  while ( len > 0 ) {
    len--;
    *d++ = val;
  }
}

/*
 * Move memory bytes from source to destination.
 */
void
${te_set.scope}${te_string.memmove}( void * const dst, const void * const src, ${te_prefix.type}size_t len )
{
  u1_t * s = (u1_t *) src;
  u1_t * d = (u1_t *) dst;
  while ( len > 0 ) {
    len--;
    *d++ = *s++;
  }
}

/*
 * Copy characters and be paranoid about null delimiter.
 */
c_t *
${te_set.scope}${te_string.strcpy}( c_t * dst, const c_t * src )
{
  c_t * s = dst;
.if ( te_sys.InstanceLoading )
  if ( 0 != src ) {
    ${te_prefix.type}size_t i = ${te_set.scope}${te_string.strlen}( src ) + 1;
    s = ${te_set.scope}${te_dma.allocate}( i );
    dst = s;
.else
  if ( ( 0 != src ) && ( 0 != dst ) ) {
    ${te_prefix.type}size_t i = ${te_string.max_string_length} - 1;
.end if
    while ( ( i > 0 ) && ( *src != '\0' ) ) {
      --i;
      *dst++ = *src++;
    }
    *dst = '\0';  /* Ensure delimiter.  */
  }
  return s;
}

/*
 * Add two strings.  Allocate a temporary memory variable to return the value.
 */
c_t *
${te_set.scope}${te_string.stradd}( const c_t * left, const c_t * right )
{
  ${te_prefix.type}size_t i = ${te_string.max_string_length} - 1;
  c_t * s = ${te_set.scope}${te_string.strget}();
  c_t * dst = s;
  if ( 0 == left ) left = "";
  if ( 0 == right ) right = "";
  while ( ( i > 0 ) && ( *left != '\0' ) ) {
    --i;
    *dst++ = *left++;
  }
  while ( ( i > 0 ) && ( *right != '\0' ) ) {
    --i;
    *dst++ = *right++;
  }
  *dst = '\0';  /* Ensure delimiter.  */
  return s;
}

/*
 * Compare two strings.
 * Return negative number if s1 < s2.
 * Return zero if s1 == s2.
 * Return postive number if s1 > s2.
 */
c_t
${te_set.scope}${te_string.strcmp}( const c_t *p1, const c_t *p2 )
{
  const c_t *s1 = p1;
  const c_t *s2 = p2;
  c_t c1, c2;
  i_t i = ${te_string.max_string_length};
.if ( te_sys.InstanceLoading )
  if ( 0 == p1 ) s1 = "";
  if ( 0 == p2 ) s2 = "";
.end if
  do {
    c1 = *s1++;
    c2 = *s2++;
    if ( c1 == 0 ) { break; }
    --i;
  } while ( ( c1 == c2 ) && ( i >= 0 ) );
  return ( c1 - c2 );
}

/*
 * Return a string buffer.  Rotate through a pool.
 */
c_t *
${te_set.scope}${te_string.strget}( void )
{
  c_t * r;
  static u1_t i = 0;
  static c_t s[ 32 ][ ${te_string.max_string_length} ];
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_ILB );
.end if
  i = ( i + 1 ) % 32;
  r = &s[ i ][ 0 ];
  *r = 0;
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_ILB );
.end if
  return ( r );
}

.if ( ( te_sys.InstanceLoading ) or ( 0 != te_sys.UnitsToDynamicallyAllocate ) )
/*
 * Measure the length of the given string.
 */
${te_prefix.type}size_t
${te_set.scope}${te_string.strlen}( const c_t * s )
{
  ${te_prefix.type}size_t len = 0;
  i_t i = ${te_string.max_string_length} * 4;
  if ( s != 0 ) {
    while ( ( *s != 0 ) && ( i >= 0 ) ) {
      s++;
      len++;
      --i;
    }
  }
  return len;
}

.end if
.if ( te_sys.InstanceLoading )
#define ${te_prefix.define_u}ATOI_RADIX 10
c_t *
#ifdef __SIZEOF_INT128__
${te_set.scope}${te_string.itoa}( u128_t value )
#else
${te_set.scope}${te_string.itoa}( s4_t value )
#endif
{
  static c_t s[256][256];
  static u1_t bufnum = 0;
  c_t tmp[256];
  c_t * sp, * tp = tmp;
  bool sign = 0;
  s4_t i;
#ifdef __SIZEOF_INT128__
  u128_t v = value;
#else
  u4_t v;
  sign = ( value < 0 );
  if ( sign ) {
    v = -value;
  } else {
    v = (unsigned) value;
  }
#endif
  while ( ( v != 0 ) || ( tp == tmp ) ) {
    i = v % ${te_prefix.define_u}ATOI_RADIX;
    v = v / ${te_prefix.define_u}ATOI_RADIX;
    if ( i < 10 ) {
      *tp++ = i + '0';
    } else {
      *tp++ = i + 'a' - 10;
    }
  }
  bufnum++; /* byte size will rotate back to 0 */
  sp = s[ bufnum ];
  if ( sign ) {
    *sp++ = '-';
  }
  while ( tp > tmp ) {
    *sp++ = *--tp;
  }
  *sp = 0;
  return s[ bufnum ];
}

s4_t
${te_set.scope}${te_string.atoi}( const char * p )
{
  s4_t n = 0;
  s1_t f = 0;
  for ( ; ; p++ ) {
    switch( *p ) {
    case ' ':
    case '\t':
      continue;
    case '-':
      f++;
    case '+':
      p++;
    }
    break;
  }
  while ( ( *p >= '0' ) && ( *p <= '9' ) ) {
    n = n * 10 + *p++ - '0';
  }
  return ( f ? -n : n );
}
.end if
.if ( 0 != te_sys.UnitsToDynamicallyAllocate )

/*----------------------------------------------------------------------------
 * This routine provides a central connection to ANSI-standard system-level
 * memory allocation.  MC-3020 is optimized for static memory allocation
 * and only uses dynamic memory allocation when enabled with marking.
 * Dynamic memory allocation can be used in conjunction with static
 * allocation providing protection against unexpected memory "overflows"
 * conditions.
 *--------------------------------------------------------------------------*/

#include <stdlib.h>
  .if ( te_dma.debugging_heap )
#define ROX_MALLOC_HEAP_SIZE 0x7fffffff
static size_t used_heap = 0;
  .end if .// debugging_heap
/*
 * Allocate memory from the system heap.
 */
void * 
${te_set.scope}${te_dma.allocate}( const ${te_prefix.type}size_t b )
{
  void * new_mem = 0;
  size_t bytes = ( size_t ) b;

  .if ( te_dma.debugging_heap )
  if ( used_heap + bytes <= ROX_MALLOC_HEAP_SIZE ) {
    new_mem = malloc( bytes );
    if ( 0 != new_mem ) {
      used_heap = used_heap + bytes;
    }
  } 
  .else
  new_mem = malloc( bytes );
  if ( 0 == new_mem ) {
    // fprintf( stderr, "Escher_malloc:  out of memory\n" );
    // exit( 1 );
  }
  .end if

  return new_mem;
}
.end if
