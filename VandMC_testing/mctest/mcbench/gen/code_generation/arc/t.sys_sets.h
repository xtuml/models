/*
 * This is the most simple and basic container class and
 * represents elements in the set (nodes in the list).
 */
typedef struct ${te_set.element_type} ${te_set.element_type};
struct ${te_set.element_type} {
  ${te_set.element_type} * next;
  void * object;
  .// Place previous pointer at end to allow dlist nodes to be
  .// shaped compatibly with slist nodes.  This way, slist forward
  .// traversals would work on dlist nodes.
.if ( te_sys.CollectionsFlavor == 20 )
  ${te_set.element_type} * prev;
.end if
};

/*
 * This is the set class and may contain attributes that apply
 * to the set as a whole.
 */
typedef struct {
  ${te_set.element_type} * head;
.if ( te_sys.InstanceLoading )
  ${te_set.element_type} * tail;
.end if
} ${te_set.base_class};

/*
 * Notice the symmetry between the object containoid, the
 * head of set structure and the set node containoid.
 */
typedef struct {
  ${te_set.element_type} * next;
.if ( te_sys.CollectionsFlavor == 20 )
  ${te_set.element_type} * prev;
.end if
} ${te_instance.base_class};

/*
 * Here is the shape of the general class extent.  This array contains list
 * heads for both active (animate) and inactive (inanimate) instances.
 */
typedef struct {
  ${te_extent.sets_type} ${te_extent.active}, ${te_extent.inactive};
  ${te_extent.container_type} ${te_extent.container_name};
  ${te_extent.pool_type} ${te_extent.pool_name};
  ${te_extent.size_type} ${te_extent.size_name};
  ${te_extent.istate_type} ${te_extent.istate_name};
  ${te_extent.population_type} ${te_extent.population_name};
.if ( te_sys.PersistentClassCount > 0 )
  /* not needed without persistence */
  ${te_extent.rstorsize_type} ${te_extent.rstorsize_name};
  void ( * ${te_extent.linkfunc_name} )(
    ${te_typemap.instance_index_name},
    ${te_instance.handle},
    ${te_instance.handle},
    ${te_instance.handle} );
  /* not needed without persistence */
.end if
} ${te_extent.type};

${te_prefix.type}UniqueID_t ${te_prefix.type}ID_factory( void );
void ${te_set.factory}( const i_t );
void ${te_set.copy}( ${te_set.base_class} *,
                const ${te_set.base_class} * const );
void ${te_set.clear}( ${te_set.base_class} * );
#define ${te_prefix.define_u}SET_LHS_IS_INSTANCE 0x01
#define ${te_prefix.define_u}SET_RHS_IS_INSTANCE 0x02
${te_set.base_class} *
${te_set.setunion}( ${te_set.base_class} * const, void * const, void * const, int );
${te_set.base_class} *
${te_set.setintersection}( ${te_set.base_class} * const, void * const, void * const, int );
${te_set.base_class} *
${te_set.setdifference}( ${te_set.base_class} * const, void * const, void * const, int );
${te_set.base_class} *
${te_set.setsymmetricdifference}( ${te_set.base_class} * const, void * const, void * const, int );
void ${te_set.insert_element}( ${te_set.base_class} *,
                         void * const );
${te_set.element_type} *
${te_set.insert_block}( ${te_set.element_type} *,
                       const u1_t *,
                       const ${te_prefix.type}size_t,
                       ${te_prefix.type}size_t );
.if ( te_sys.UnitsToDynamicallyAllocate != 0 )
#define ${te_set.remove_instance}( pextent, instance, slot, container, pool ) \\
  slot = ${te_slist.remove_node}( pextent, instance )
.else
  .if ( te_sys.CollectionsFlavor == 20 )
/*
 * Calculate address of containoid from address of instance.
 * Here we do some far out pointer arithmetic to determine in
 * constant time the address of the container for this instance.
 * With the container (along with next and prev), we can unlink
 * the node from the list quickly (without a search).
 */
#define ${te_set.remove_instance}( pextent, instance, slot, container, pool ) \\
  slot = (${te_set.element_type} *)( &container[0] + (instance - &pool[0]) ); \\
  ${te_dlist.remove_node}( pextent, slot )
  .else
#define ${te_set.remove_instance}( pextent, instance, slot, container, pool ) \\
  slot = ${te_slist.remove_node}( pextent, instance )
  .end if
.end if
#define ${te_set.insert_instance}( pextent, node ) \\
  node->next = (pextent)->head; \\
.if ( te_sys.CollectionsFlavor == 20 )
  if ( (pextent)->head ) (pextent)->head->prev = node; \\
  .// node->prev = 0 not necessary, never derefed
.end if
  (pextent)->head = node

.if ( te_sys.CollectionsFlavor == 20 )
/*
 * Remove an item from the given set which is a doubly linked
 * list.  This method uses a constant time method of calculating
 * the address of the container using pointer arithmetic.
 */
void ${te_dlist.remove_node}( ${te_set.base_class} *,
                      ${te_set.element_type} * const );
.end if

${te_set.element_type} *
${te_slist.remove_node}( ${te_set.base_class} *,
                      const void * const );
void ${te_set.remove_element}( ${te_set.base_class} *,
                         const void * const );
const void * ${te_set.contains}( const ${te_set.base_class} * const,
                    const void * const );
${te_prefix.type}size_t ${te_set.element_count}( const ${te_set.base_class} * const );
bool ${te_set.equality}( ${te_set.base_class} * const,
                    ${te_set.base_class} * const );
#define ${te_set.init}( S ) (S)->head = 0
#define ${te_set.get_any}( S ) ( ((S)->head != 0) ? (S)->head->object : 0 )
#define ${te_set.emptiness}( S ) ( (S)->head == 0 )

/*
 * Collection Iteration
 * The iterator uses a cursor external to the set (or extent).
 * This cursor maintains a flavor of current element.
 */
typedef struct ${te_set.iterator_class_name} ${te_set.iterator_class_name};
struct ${te_set.iterator_class_name} {
  ${te_set.element_type} * cursor;
};
#define ${te_set.iterator_reset}( I, S ) ( ((I)->cursor = (S)->head) )
void * ${te_set.iterator_next}( ${te_set.iterator_class_name} * const );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied strlen.  */
.// #define ${te_string.strlen}( s ) strlen( s )
${te_prefix.type}size_t ${te_string.strlen}( const c_t * );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied memset.  */
.// #define ${te_string.memset}( dst, val, len ) memset( dst, val, len )
void ${te_string.memset}( void * const, const u1_t, ${te_prefix.type}size_t );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied memmove.  */
.// #define ${te_string.memmove}( dst, src, len ) memmove( dst, src, len )
void ${te_string.memmove}( void * const, const void * const, ${te_prefix.type}size_t );
c_t * ${te_string.strcpy}( c_t *, const c_t * );
c_t * ${te_string.stradd}( const c_t *, const c_t * );
/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied strcmp.  */
.// #define ${te_string.strcmp}( s1, s2 ) strcmp( s1, s2 )
c_t ${te_string.strcmp}( const c_t *, const c_t * );
c_t * ${te_string.strget}( void );
.// not used but good stuff
.if ( te_sys.InstanceLoading )
c_t * ${te_string.u128touuid}( c_t *, ${te_prefix.type}UniqueID_t );
${te_prefix.type}UniqueID_t ${te_string.uuidtou128}( const c_t * );
#ifdef __SIZEOF_INT128__
c_t * ${te_string.itoa}( u128_t );
#else
c_t * ${te_string.itoa}( s4_t );
#endif
s4_t ${te_string.atoi}( const c_t * );
.end if
.if ( 0 != te_sys.UnitsToDynamicallyAllocate )
void * ${te_dma.allocate}( const ${te_prefix.type}size_t );
.end if
