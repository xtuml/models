/*--------------------------------------------------------------------------
 * File:  sys_xtuml.c
 *
 * Description:
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "string_return_test_sys_types.h"
#include "stringtest_classes.h"

/* No containers allocated.  */

/*
 * Supply a unique integer ID.
 */
Escher_UniqueID_t
Escher_ID_factory( void )
{
  static Escher_UniqueID_t Escher_ID_factory = 1;
  return Escher_ID_factory++;
}

/*
 * Detect empty handles in expressions.
 */
void * xtUML_detect_empty_handle( void * h, const char * s1, const char * s2 )
{
  if ( 0 == h ) {
    XTUML_EMPTY_HANDLE_TRACE( s1, s2 );
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
Escher_SetFactoryInit( const i_t n1_size )
{
  /* Set factory initialization optimized out.  */
}

/*
 * This will copy all of the elements from one set into another
 * set.  If the target set is not empty, it will be cleared
 * before the copy operation occurs freeing any nodes in that set.
 * The new set will use containoids from the free list.
 */
/* Set copy code optimized out.  */

/*
 * Release all nodes in the given set back to the free pool.
 */
/* Set clearing code optimized out.  */

/*
 * Take the union of set1 and set2 and return to_set
 */
/* Set union optimized out.  */

/*
 * Take the intersection of set1 and set2 and return to_set
 */
/* Set intersection optimized out.  */

/*
 * Subtract set2 from set1 and return to_set
 */
/* Set difference optimized out.  */

/*
 * Take the symmetric difference of set1 and set2 and return to_set
 */
/* Set symmetric difference optimized out.  */

/*
 * Insert a single element into the set in no particular order.
 * The element is a data item.  A container node will be allocated
 * to link in the element.
 */
/* Set insertion code optimized out.  */

/*
 * Insert a block of objects into the given set in sequence.  Link the
 * data into the supplied containers.
 * Return a pointer to the linked set.
 */
Escher_SetElement_s *
Escher_SetInsertBlock( Escher_SetElement_s * container,
                       const u1_t * instance,
                       const Escher_size_t length,
                       Escher_size_t count )
{
  Escher_SetElement_s * head = ( count > 0 ) ? container : 0;
  while ( count > 0 ) {
    count--;
    container->object = (void *) instance;  /* Link in the object data.     */
    instance = instance + length;           /* Bump to next object image.   */
    /* String together or ground containoids.  */
    container->next = ( count > 0 ) ? container + 1 : 0;
    container++;
  }
  return head;
}

/*
 * Remove an instance from an instance collection.
 */
/* Signature:  void Escher_SetRemoveInstance( pextent, instance, slot, container, pool ) */

/*
 * Insert an instance onto an extent.
 */
/* Signature:  void Escher_SetInsertInstance( pextent, node ) */


/*
 * Remove a data item from the given set.  This requires searching
 * the set for the item, unlinking the item (if found) and returning
 * the pointer to the removed node.  SetRemoveNode is used
 * when some knowledge of the linking mechanism is required (as
 * in extent management).  SetRemoveElement is used whenever
 * possible.
 */
Escher_SetElement_s *
Escher_SetRemoveNode(
  Escher_ObjectSet_s * set,
  const void * const d
)
{
  Escher_SetElement_s * t = set->head; /* Start with first node.           */
  Escher_SetElement_s * t_old = t;
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
  return t;
}

/*
 * This interface is used more often to remove an element.  This is
 * used when maximum anonymity is required.  Escher_SetRemoveNode is
 * used when some knowledge of the linking mechanism is required (as
 * in extent management).
 */
/* Set remove element code optimized out.  */

/*
 * Return a pointer to the found element when the set contains the 
 * given data element.
 */
const void *
Escher_SetContains(
  const Escher_ObjectSet_s * const set,
  const void * const element
)
{
  const Escher_SetElement_s * node = set->head;
  while ( node != 0 ) {
    if ( node->object == element ) { return node; }  /* found  */
    node = node->next;
  }
  if ( 0 == element ) return ( const void * ) 1; /* every set contains null */
  return 0;                                      /* absent */
}

/*
 * Count the elements in the set.  Return that count.
 * This routine counts nodes.
 */
Escher_size_t
Escher_SetCardinality( const Escher_ObjectSet_s * const set )
{
  Escher_size_t result = 0;
  const Escher_SetElement_s * node = set->head;
  while ( node != 0 ) {
    result++;
    node = node->next;
  }
  return result;
}

/*
 * Return true when the left and right set are equivalent.
 * The left set is equal to the right set if and only if
 * the left set contains all elements of the right set AND
 * the right set contains all elements of the left set.
 */
bool
Escher_SetEquality( Escher_ObjectSet_s * const left_set,
                    Escher_ObjectSet_s * const right_set )
{
  bool rc = true;
  /* Assure the right set contains all elements in the left set */
  const Escher_SetElement_s * node = left_set->head;
  while ( 0 != node ) {
    if ( 0 == right_set || !Escher_SetContains( right_set, node->object ) ) {
      rc = false;
      break;
    }
    node = node->next;
  }
  if ( rc ) {
    /* Assure the left set contains all elements in the right set */
    node = right_set->head;
    while ( 0 != node ) {
      if ( 0 == left_set || !Escher_SetContains( left_set, node->object ) ) {
        rc = false;
        break;
      }
      node = node->next;
    }
  }
  return rc;
}

/*
 * Initialize a set variable.
 */
/* Signature:  void Escher_InitSet( Escher_ObjectSet_s * set ) */

/*
 * Get any element (1st) from a collection.
 */
/* Signature:  void * Escher_SetGetAny( Escher_ObjectSet_s * const set ) */

/*
 * Return true if set is empty.
 */
/* Signature:  bool Escher_SetIsEmpty( const Escher_ObjectSet_s * const set ) */

/*
 * Use this method to reset the cursor.
 */
/* Signature:  void Escher_IteratorReset( Escher_Iterator_s * const iterator,
 *                                        Escher_ObjectSet_s * const set )
 */

/*
 * Interate to the next element and return it.
 */
void *
Escher_IteratorNext( Escher_Iterator_s * const iter )
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
Escher_memset( void * const dst, const u1_t val, Escher_size_t len )
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
Escher_memmove( void * const dst, const void * const src, Escher_size_t len )
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
Escher_strcpy( c_t * dst, const c_t * src )
{
  c_t * s = dst;
  if ( ( 0 != src ) && ( 0 != dst ) ) {
    Escher_size_t i = ESCHER_SYS_MAX_STRING_LEN - 1;
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
Escher_stradd( const c_t * left, const c_t * right )
{
  Escher_size_t i = ESCHER_SYS_MAX_STRING_LEN - 1;
  c_t * s = Escher_strget();
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
Escher_strcmp( const c_t *p1, const c_t *p2 )
{
  const c_t *s1 = p1;
  const c_t *s2 = p2;
  c_t c1, c2;
  i_t i = ESCHER_SYS_MAX_STRING_LEN;
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
Escher_strget( void )
{
  c_t * r;
  static u1_t i = 0;
  static c_t s[ 32 ][ ESCHER_SYS_MAX_STRING_LEN ];
  Escher_mutex_lock( SEMAPHORE_FLAVOR_ILB );
  i = ( i + 1 ) % 32;
  r = &s[ i ][ 0 ];
  *r = 0;
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_ILB );
  return ( r );
}


/* xtUML class info for all of the components (collections, sizes, etc.) */
Escher_Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ] = {
  &stringtest_class_info[0]
};

/*
 * Create an instance of the class numbered on the input.
 * Return the handle of the created instance.
 */
Escher_iHandle_t
Escher_CreateInstance(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_SetElement_s * node;
  Escher_iHandle_t instance;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  Escher_mutex_lock( SEMAPHORE_FLAVOR_INSTANCE );
  node = dci->inactive.head;

  if ( 0 == node ) {
    UserObjectPoolEmptyCallout( domain_num, class_num );
  }

  dci->inactive.head = dci->inactive.head->next;
  instance = (Escher_iHandle_t) node->object;
  if ( 0 != dci->initial_state ) {
    instance->current_state = dci->initial_state;
  }
  Escher_SetInsertInstance( &dci->active, node );
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_INSTANCE );
  return instance;
}

/*
 * Delete an instance of the class passed and numbered on the input.
 */
void
Escher_DeleteInstance(
  Escher_iHandle_t instance,
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num
)
{
  Escher_SetElement_s * node;
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  if ( 0 != instance ) {
    Escher_mutex_lock( SEMAPHORE_FLAVOR_INSTANCE );
    node = Escher_SetRemoveNode( &dci->active, instance );
    node->next = dci->inactive.head;
    dci->inactive.head = node;
    /* Initialize storage to zero.  */
    Escher_memset( instance, 0, dci->size );
    if ( ( 0 != dci->size ) && ( 0 != dci->initial_state ) ) {
      instance->current_state = -1; /* 0xff max for error detection */
    }
    Escher_mutex_unlock( SEMAPHORE_FLAVOR_INSTANCE );
  }
}

/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
void
Escher_ClassFactoryInit(
  const Escher_DomainNumber_t domain_num,
  const Escher_ClassNumber_t class_num )
{
  Escher_Extent_t * dci = *(domain_class_info[ domain_num ] + class_num);
  if ( 0 != dci ) {
  dci->active.head = 0;
  dci->inactive.head = Escher_SetInsertBlock(
    dci->container,
    (const u1_t *) dci->pool,
    dci->size,
    dci->population );
  }
}
/*
 * Following provides the dispatcher loops for the xtUML event queues.
 */

bool Escher_run_flag = true; /* Turn this off to exit dispatch loop(s).  */
/* Map the classes to the tasks/threads for each domain.  */
static const Escher_ClassNumber_t stringtest_task_numbers[ stringtest_STATE_MODELS ] = {
  stringtest_TASK_NUMBERS
};
static const Escher_ClassNumber_t * const class_thread_assignment[ SYSTEM_DOMAIN_COUNT ] = {
  &stringtest_task_numbers[0]
};

/* Structure:  Escher_systemxtUMLevents
 * _Super-union_ of all xtUML events in the system. For translation
 * patterns which can not accept dynamic memory allocation for
 * xtUML events, this union is used to predetermine the maximum
 * size of any xtUML event in the system.  */
typedef union {
  Escher_xtUMLEvent_t mc_event_base;
  stringtest_DomainEvents_u mc_events_in_domain_stringtest;
} Escher_systemxtUMLevents_t;

/* anchor declaration for front and back of list of events */
typedef struct {
  Escher_xtUMLEvent_t * head, * tail;
} xtUMLEventQueue_t;

/* Pointer to head of list of available event nodes.  */
static Escher_xtUMLEvent_t * free_event_list = 0;
static xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];

/*
 * Link the event skeleton nodes together on the free list ready
 * for allocation.
 */
void
InitializeOoaEventPool( void )
{
  /* Pre-allocated memory pool for xtUML events.  */
  static Escher_systemxtUMLevents_t Escher_xtUML_event_pool[ ESCHER_SYS_MAX_XTUML_EVENTS ];
  u2_t i;
  Escher_run_flag = true; /* Default running enabled.  */
  for ( i = 0; i < NUM_OF_XTUML_CLASS_THREADS; i++ ) {
    non_self_event_queue[ i ].head = 0; non_self_event_queue[ i ].tail = 0;
  }
  /* String events together into a singly linked list. */
  free_event_list = (Escher_xtUMLEvent_t *) &Escher_xtUML_event_pool[ 0 ];
  for ( i = 0; i < ESCHER_SYS_MAX_XTUML_EVENTS - 1; i++ ) {
    Escher_xtUML_event_pool[ i ].mc_event_base.next =
      (Escher_xtUMLEvent_t *) &(Escher_xtUML_event_pool[ i + 1 ]);
  }
  Escher_xtUML_event_pool[ ESCHER_SYS_MAX_XTUML_EVENTS - 1 ].mc_event_base.next = 0;
}

/*
 * Obtain an empty event from the free list.
 */
Escher_xtUMLEvent_t * Escher_AllocatextUMLEvent( void )
{
  Escher_xtUMLEvent_t * event = 0;
  Escher_mutex_lock( SEMAPHORE_FLAVOR_FREELIST );
  if ( 0 == free_event_list ) {
    UserEventFreeListEmptyCallout();   /* Bad news!  No more events.  */
  } else {
    event = free_event_list;       /* Grab front of the free list.  */
    free_event_list = event->next; /* Unlink from front of free list.  */
  }
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_FREELIST );
  return event;
}

/*
 * Allocate the event and initialize the base attributes.
 */
Escher_xtUMLEvent_t *
Escher_NewxtUMLEvent( const void * const destination,
                   const Escher_xtUMLEventConstant_t * const event_info )
{
  Escher_xtUMLEvent_t * event = Escher_AllocatextUMLEvent();
  SetEventTargetInstance( event, destination );
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  return event;
}

/*
 * Update the base attributes of an event for polymorphic processing.
 */
Escher_xtUMLEvent_t *
Escher_ModifyxtUMLEvent( Escher_xtUMLEvent_t * event,
                            const Escher_xtUMLEventConstant_t * const event_info )
{
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  return event;
}

/*
 * Delete an event by moving it onto the free list.
 */
void
Escher_DeletextUMLEvent( Escher_xtUMLEvent_t * event )
{
  Escher_mutex_lock( SEMAPHORE_FLAVOR_FREELIST );
  event->next = free_event_list;
  free_event_list = event;
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_FREELIST );
}

/*
 * Send an event to the instance queue.  Use priority where applicable.
 *
 * The following table summarizes the construction of events
 * as expected in Escher.  For each type of object that
 * may be the source or target of an event, the expected
 * value of the source and destination handles in the event are
 * given.
 *
 *   object type | as event source     | as destination
 *   ------------+---------------------+----------------------
 *   instance    | handle              | handle
 *   class       | manufactured handle | 0
 *   creator     | manufactured handle | 0
 */
void
Escher_SendEvent( Escher_xtUMLEvent_t * event )
{
  u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]
    + GetEventDestObjectNumber( event ) );
  xtUMLEventQueue_t * q = &non_self_event_queue[ t ];
  event->next = 0;
  /* Append the event to the tail end of the queue.  */
  /* No need to maintain prev pointers when not prioritizing.  */
  Escher_mutex_lock( SEMAPHORE_FLAVOR_IQUEUE );
  if ( q->tail == 0 ) {
    q->head = event;
  } else {
    q->tail->next = event;
  }
  q->tail = event;
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_IQUEUE );
  Escher_nonbusy_wake( t );
}

/*
 * Drag an event from the instance directed queue if there is one.  This
 * routine also serves as the IsQueueEmpty routine.  A null return code 
 * indicates that the queue is empty.  Otherwise the handle to the
 * event will be returned.
 */
static Escher_xtUMLEvent_t * DequeueOoaNonSelfEvent( const u1_t );
static Escher_xtUMLEvent_t * DequeueOoaNonSelfEvent( const u1_t t )
{
  Escher_xtUMLEvent_t * event;
  xtUMLEventQueue_t * q = &non_self_event_queue[ t ];
  Escher_mutex_lock( SEMAPHORE_FLAVOR_IQUEUE );
  /* Assign the event from the head of the queue.  */
  event = q->head;
  /* If the list is not empty, bump the head.  */
  if ( event != 0 ) {
    q->head = event->next;
    /* If empty, nullify tail.  Link prev pointers (if needed).  */
    if ( q->head == 0 ) {
      q->tail = 0;
    }
  } else {
    UserNonSelfEventQueueEmptyCallout();
  }
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_IQUEUE );
  return event;
}
/*
 * Loop on the event queues dispatching events for this thread.
 */
static void * ooa_loop( void * );
static void * ooa_loop( void * thread )
{
  /* class dispatch table
   */
  static const EventTaker_t * DomainClassDispatcherTable[ 1 ] =
    {
      stringtest_EventDispatcher
    };
  Escher_xtUMLEvent_t * event;
  u1_t t = *( (u1_t *) thread );
  /* Start consuming events and dispatching background processes.  */
  while ( true == Escher_run_flag ) {
    event = DequeueOoaNonSelfEvent(t); /* Instance next.  */
    if ( 0 != event ) {
      ( *( DomainClassDispatcherTable[ GetEventDestDomainNumber( event ) ] )[ GetEventDestObjectNumber( event ) ] )( event );
      Escher_DeletextUMLEvent( event );
    } else {
      /* event queues empty */
      Escher_nonbusy_wait( t );
    }
    if ( 0 == t ) {   /* Is this the default task/thread?  */
      UserBackgroundProcessingCallout();
    }
  }
  return 0;
}

/*
 * Load up the threads with event dispatchers and/or specific functionality.
 */
void Escher_xtUML_run( void )
{
  void * vp;
  u1_t i;
  /* Create threads in reverse order saving thread 0 for default.  */
  for ( i = NUM_OF_XTUML_CLASS_THREADS - 1; i > 0; i-- ) {
    Escher_thread_create( ooa_loop, i );
  }
  i = 0;
  vp = ooa_loop( (void *) &i );
}
