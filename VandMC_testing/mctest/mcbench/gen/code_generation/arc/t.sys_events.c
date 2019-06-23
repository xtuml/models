.//============================================================================
.// This archetype file generates xtUML event pool mananagement
.// implementation code.
.//============================================================================
.//
/*
 * Following provides the dispatcher loops for the xtUML event queues.
 */
.if ( "C" == te_target.language )

bool ${te_eq.run_flag} = true; /* Turn this off to exit dispatch loop(s).  */
.end if
.//
.//============================================================================
.// Generate the data types and structures for the xtUML events.
.//============================================================================
.//
.// *** xtUML event pool.
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  .//
  .if ( te_thread.enabled and ( "C" == te_target.language ) )
/* Map the classes to the tasks/threads for each domain.  */
    .assign te_c = first_te_c
    .while ( not_empty te_c )
      .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
      .if ( not_empty te_sm )
        .select one te_dci related by te_c->TE_DCI[R2090]
static const ${te_typemap.object_number_name} ${te_dci.task_list}[ ${te_dci.max_models} ] = {
  ${te_dci.task_numbers}
};
      .end if
      .select one te_c related by te_c->TE_C[R2017.'precedes']
    .end while
static const ${te_typemap.object_number_name} * const class_thread_assignment[ SYSTEM_DOMAIN_COUNT ] = {
    .assign delimiter = ","
    .assign te_c = first_te_c
    .while ( not_empty te_c )
      .select any te_sm related by te_c->TE_CLASS[R2064]->TE_SM[R2072]
      .select one te_dci related by te_c->TE_DCI[R2090]
      .select one te_c related by te_c->TE_C[R2017.'precedes']
      .if ( empty te_c )
        .assign delimiter = ""
      .end if
      .if ( not_empty te_sm )
  &${te_dci.task_list}[0]${delimiter}
      .end if
    .end while
};
  .end if
  .// Define self reference storage and method.
  .if ( event_prioritization_needed.result )
static ${te_instance.handle} ${te_prefix.result}self;
  .end if  .// prioritization_needed

  .if ( "C" == te_target.language )
.// *** Declare a _super union_ of all domain level events union definitions.
/* Structure:  ${te_eq.system_events_union}
 * _Super-union_ of all xtUML events in the system. For translation
 * patterns which can not accept dynamic memory allocation for
 * xtUML events, this union is used to predetermine the maximum
 * size of any xtUML event in the system.  */
typedef union {
  ${te_eq.base_event_type} ${te_eq.base_variable};
  .assign te_c = first_te_c
  .while ( not_empty te_c )
    .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071] where ( selected.Used )
    .if ( te_c.OptDisabled )
      .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
    .end if
    .if ( not_empty te_evt )
  ${te_c.Name}_DomainEvents_u mc_events_in_domain_${te_c.Name};
    .end if
    .select one te_c related by te_c->TE_C[R2017.'precedes']
  .end while
} ${te_eq.system_events_union}_t;

/* anchor declaration for front and back of list of events */
typedef struct {
  ${te_eq.base_event_type} * head, * tail;
} xtUMLEventQueue_t;

/* Pointer to head of list of available event nodes.  */
static ${te_eq.base_event_type} * free_event_list = 0;
    .if ( non_self_event_queue_needed.result )
      .if ( 0 == te_sys.StateSaveBufferSize )
static \
      .end if
xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
    .end if
    .if ( self_event_queue_needed.result )
      .if ( 0 == te_sys.StateSaveBufferSize )
static \
      .end if
xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
    .end if
  .end if

/*
 * Link the event skeleton nodes together on the free list ready
 * for allocation.
 */
void
${te_eq.scope}InitializeOoaEventPool( \
.if ( "C" == te_target.language )
void )
.else
i_t max_event_size, i_t event_pool_length )
.end if
{
  /* Pre-allocated memory pool for xtUML events.  */
  .if ( "C" == te_target.language )
  static ${te_eq.system_events_union}_t ${te_eq.system_event_pool}[ ${te_eq.max_events} ];
  .end if
  u2_t i;
  ${te_eq.run_flag} = true; /* Default running enabled.  */
  .if ( te_thread.enabled )
  for ( i = 0; i < NUM_OF_XTUML_CLASS_THREADS; i++ ) {
    .if ( non_self_event_queue_needed.result )
    non_self_event_queue[ i ].head = 0; non_self_event_queue[ i ].tail = 0;
    .end if
    .if ( self_event_queue_needed.result )
    self_event_queue[ i ].head = 0; self_event_queue[ i ].tail = 0;
    .end if
  }
  .else
    .if ( non_self_event_queue_needed.result )
  non_self_event_queue[ 0 ].head = 0; non_self_event_queue[ 0 ].tail = 0;
    .end if
    .if ( self_event_queue_needed.result )
  self_event_queue[ 0 ].head = 0; self_event_queue[ 0 ].tail = 0;
    .end if
  .end if
  /* String events together into a singly linked list. */
  .if ( "C" == te_target.language )
  free_event_list = (${te_eq.base_event_type} *) &${te_eq.system_event_pool}[ 0 ];
  for ( i = 0; i < ${te_eq.max_events} - 1; i++ ) {
    ${te_eq.system_event_pool}[ i ].mc_event_base.next =
      (${te_eq.base_event_type} *) &(${te_eq.system_event_pool}[ i + 1 ]);
  .if ( event_prioritization_needed.result )
    ${te_eq.system_event_pool}[ i ].mc_event_base.prev = 0;
  .end if .// prioritization needed
  }
  ${te_eq.system_event_pool}[ ${te_eq.max_events} - 1 ].mc_event_base.next = 0;
  .else
  free_event_list = (${te_eq.base_event_type} *) ${te_eq.system_event_pool};
  char * pool_head = (char *) ${te_eq.system_event_pool}; // Use a byte-length pointer for the upcoming pointer math
  for ( i = 0; i < event_pool_length; i++ ) {
    ((${te_eq.system_events_union}_t *) (pool_head + (i * max_event_size)))->mc_event_base.next =
      (${te_eq.base_event_type} *) (pool_head + ((i+1) * max_event_size));
  }
  ((${te_eq.system_events_union}_t *) (pool_head + ((event_pool_length - 1) * max_event_size)))->mc_event_base.next = 0;
  .end if
}

/*
 * Obtain an empty event from the free list.
 */
${te_eq.base_event_type} * ${te_eq.scope}${te_eq.allocate}( void )
{
  ${te_eq.base_event_type} * event = 0;
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if
  if ( 0 == free_event_list ) {
  .if ( 0 != te_sys.UnitsToDynamicallyAllocate )
    ${te_eq.system_events_union}_t * new_mem = (${te_eq.system_events_union}_t *) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * sizeof( ${te_eq.system_events_union}_t ) );
    if ( 0 == new_mem ) {
      ${te_callout.event_free_list_empty}();   /* Bad news!  No more heap space.  */
    } else {
      i_t i;
      for ( i = 0; i < ${te_sys.UnitsToDynamicallyAllocate} - 1; i++ ) {
        new_mem[ i ].mc_event_base.next = (${te_eq.base_event_type} *) &(new_mem[ i + 1 ]);
      }
      new_mem[ ${te_sys.UnitsToDynamicallyAllocate} - 1 ].mc_event_base.next = 0;
      free_event_list = (${te_eq.base_event_type} *) new_mem;
    }
  }
  event = free_event_list;       /* Grab front of the free list.  */
  free_event_list = event->next; /* Unlink from front of free list.  */
  .else
    ${te_callout.event_free_list_empty}();   /* Bad news!  No more events.  */
  } else {
    event = free_event_list;       /* Grab front of the free list.  */
    free_event_list = event->next; /* Unlink from front of free list.  */
  }
  .end if
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
  return event;
}

/*
 * Allocate the event and initialize the base attributes.
 */
${te_eq.base_event_type} *
${te_eq.scope}${te_eq.new}( const void * const destination,
                   const ${te_eq.constant_type} * const event_info )
{
  ${te_eq.base_event_type} * event = ${te_eq.allocate}();
  SetEventTargetInstance( event, destination );
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  .if ( event_prioritization_needed.result )
  SetOoaEventPriority( event, event_info->priority );
  .end if
  .if ( "SystemC" == te_thread.flavor )
  event->sc_e = event_info->sc_e;
  .end if
  .if ( "C++" == te_target.language )
  event->thismodule = this;
  .end if
  return event;
}

/*
 * Update the base attributes of an event for polymorphic processing.
 */
${te_eq.base_event_type} *
${te_eq.scope}${te_eq.modify}( ${te_eq.base_event_type} * event,
                            const ${te_eq.constant_type} * const event_info )
{
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  .if ( event_prioritization_needed.result )
  SetOoaEventPriority( event, event_info->priority );
  .end if
  .if ( "SystemC" == te_thread.flavor )
  event->sc_e = event_info->sc_e;
  .end if
  .if ( "C++" == te_target.language )
  event->thismodule = event_info->thismodule;
  .end if
  return event;
}

/*
 * Delete an event by moving it onto the free list.
 */
void
${te_eq.scope}${te_eq.delete}( ${te_eq.base_event_type} * event )
{
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
  event->next = free_event_list;
  free_event_list = event;
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
}
.end if .// non_self_event_queue_needed.result or self_event_queue_needed.result
.//
.//============================================================================
.// Note:  One extra container needed to terminate queue.
.//============================================================================
.// *** xtUML non-self directed event queue.
.if ( non_self_event_queue_needed.result )

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
${te_eq.scope}${te_eq.non_self}( ${te_eq.base_event_type} * event )
{
  .if ( "SystemC" == te_thread.flavor )
  sc_event * sc_e = event->sc_e;
  .end if
  .if ( te_thread.enabled )
    .if ( "C" == te_target.language )
  u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]
    + GetEventDestObjectNumber( event ) );
    .else
  u1_t t = *( ${te_instance.get_thread_assignment}() );
    .end if
  xtUMLEventQueue_t * q = &non_self_event_queue[ t ];
  .else
  xtUMLEventQueue_t * q = &non_self_event_queue[ 0 ];
  .end if .// te_thread.enabled
  .if ( event_prioritization_needed.result )
  /* Insert event into empty event queue.  */
    .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
    .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;    /* first in queue */
    q->tail = event;    /* last in queue */
    event->next = 0;
    event->prev = 0;
  } else if ( event->priority == 0 ) {
    /* No priority, append to end of queue.  */
    event->next = 0;                          /* input at tail end */
    event->prev = q->tail;
    q->tail->next = event; /* non empty */
    q->tail = event;    /* tail points to last */
  } else {
    /* Priority event, insert at proper position.  */
    ${te_eq.base_event_type} * e = q->tail;
    /* Find slot before which to insert our new arrival.     */
    /* Break from the loop before the event we must follow.  */
    while ( e != 0 ) {
      if ( event->priority <= e->priority ) { break; }
      if ( GetEventTargetInstance( event ) == GetEventTargetInstance(e) ) {
        if ( GetEventSendingInstance( event ) == GetEventSendingInstance(e) ) {
          if ( GetEventTargetInstance( event ) != 0 ) { break; }
          else {
            /* Creator or assigner with no target instance handle.  */
            /* We must interrogate the object and domain numbers.   */
            if ( GetEventDestObjectNumber( event ) == GetEventDestObjectNumber( e ) ) {
              if ( GetEventDestDomainNumber( event ) == GetEventDestDomainNumber( e ) ) { break; }
            }
          }
        }
      }
      e = e->prev;
    }
    if ( e == 0 ) { /* Slot not found, insert after head.  */
      e = q->head;
      event->prev = 0;
      event->next = e;
      e->prev = event;
      q->head = event;
    } else { /* Slot found, insert before.  */
      event->prev = e;
      event->next = e->next;
      e->next = event;
      if ( event->next != 0 ) {
        event->next->prev = event;
      }
      if ( q->tail == e ) {
        q->tail = event;
      }
    }
  }
  .else
  event->next = 0;
  /* Append the event to the tail end of the queue.  */
  /* No need to maintain prev pointers when not prioritizing.  */
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;
  } else {
    q->tail->next = event;
  }
  q->tail = event;
  .end if .// prioritization needed
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_IQUEUE );
  ${te_thread.nonbusy_wake}( t );
  .end if
  .if ( "SystemC" == te_thread.flavor )
  sc_e->notify();
  .end if
}

/*
 * Drag an event from the instance directed queue if there is one.  This
 * routine also serves as the IsQueueEmpty routine.  A null return code 
 * indicates that the queue is empty.  Otherwise the handle to the
 * event will be returned.
 */
.if ( "C" == te_target.language )
static ${te_eq.base_event_type} * DequeueOoaNonSelfEvent( ${dq_arg_type} );
static \
.end if
${te_eq.base_event_type} * ${te_eq.scope}DequeueOoaNonSelfEvent( ${dq_arg_type} ${dq_arg})
{
  ${te_eq.base_event_type} * event;
  xtUMLEventQueue_t * q = &non_self_event_queue[ \
  .if ( te_thread.enabled )
${dq_arg}\
  .else
0 \
  .end if .// te_thread.enabled
];
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  /* Assign the event from the head of the queue.  */
  event = q->head;
  /* If the list is not empty, bump the head.  */
  if ( event != 0 ) {
    q->head = event->next;
    /* If empty, nullify tail.  Link prev pointers (if needed).  */
    if ( q->head == 0 ) {
      q->tail = 0;
    }\
  .if ( event_prioritization_needed.result )
 else {
      q->head->prev = 0;
    }
  .else

  .end if .// prioritization needed
  } else {
    ${te_callout.non_self_event_queue_empty}();
  }
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  return event;
}
  .include "${te_file.arc_path}/t.event.sand.c"
.end if .// non_self_event_queue_needed.result
.//
.//============================================================================
.// Note:  One extra container needed to terminate queue.
.//============================================================================
.// *** xtUML self directed event queue.
.if ( self_event_queue_needed.result )
  .//

/*
 * Send an event on the self queue.  No prioritization occurs on
 * this queue.
 */
void
${te_eq.scope}${te_eq.self}( ${te_eq.base_event_type} * event )
{
  .if ( "SystemC" == te_thread.flavor )
  sc_event * sc_e = event->sc_e;
  .end if
  .if ( te_thread.enabled )
    .if ( "C" == te_target.language )
  u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]
    + GetEventDestObjectNumber( event ) );
    .else
  u1_t t = *( ${te_instance.get_thread_assignment}() );
    .end if
  xtUMLEventQueue_t * q = &self_event_queue[ t ];
  .else
  xtUMLEventQueue_t * q = &self_event_queue[ 0 ];
  .end if .// te_thread.enabled
  event->next = 0;
  /* Append the event to the tail end of the queue.  */
  /* No need to maintain prev pointers for self directed events.  */
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;
  } else {
    q->tail->next = event;
  }
  q->tail = event;
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_SQUEUE );
  ${te_thread.nonbusy_wake}( t );
  .end if .// te_thread.enabled
  .if ( "SystemC" == te_thread.flavor )
  sc_e->notify();
  .end if
}

/*
 * Drag an event from the self queue if there is one.  This routine
 * also serves as the IsQueueEmpty routine.  A null return code 
 * indicates that the queue is empty.  Otherwise the handle to the
 * event will be returned.
 */
.if ( "C" == te_target.language )
static ${te_eq.base_event_type} * DequeueOoaSelfEvent( ${dq_arg_type} );
static \
.end if
${te_eq.base_event_type} * ${te_eq.scope}DequeueOoaSelfEvent( ${dq_arg_type} ${dq_arg})
{
  ${te_eq.base_event_type} * event;
  xtUMLEventQueue_t * q = &self_event_queue[ \
  .if ( te_thread.enabled )
${dq_arg}\
  .else
0 \
  .end if .// te_thread.enabled
];
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  /* Assign the event from the head of the queue.  */
  event = q->head;
  /* If the list is not empty, bump the head.  */
  if ( event != 0 ) {
    q->head = event->next;               /* bump */
    /* If empty, nullify tail.  No need to maintain prev pointers
       for the self queue.  They are not used.  */
    if ( q->head == 0 ) {
      q->tail = 0;
    }
  } else {
    ${te_callout.self_event_queue_empty}();
  }
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  return event;
}
.end if .// self_event_queue_needed.result
.//
.//============================================================================
.// Build a routine that provides dispatch for a set of event queues
.// associated with a thread.
.//============================================================================
.// *** Dispatch loop
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  .//
  .// Define method for access to self.
  .if ( event_prioritization_needed.result )
/*
 * ${te_instance.global_self}:  Access the reference to event target instance.
 */
void *
${te_instance.global_self}( void )
{
  return ${te_prefix.result}self;
}
 
  .end if .// event_prioritization_needed.result
/*
 * Loop on the event queues dispatching events for this thread.
 */
  .if ( te_thread.enabled )
static void * ooa_loop( void * );
static void * ooa_loop( void * thread )
  .else
    .if ( "C++" == te_target.language )
void ${te_eq.scope}ooa_loop( void * thismodule )
    .else
static void ooa_loop( void );
static void ooa_loop( void )
    .end if
  .end if
{
  .if ( "C" == te_target.language )
  .// Define the domain dispatcher table.
  .// It is defined locally for MISRA-C compliance.
  .// Create the data array of pointers to domain dispatcher functions.
  /* class dispatch table
   */
  static const ${class_dispatch_array.element_type} * DomainClassDispatcherTable[ ${num_ooa_doms} ] =
    {
    .assign te_c = first_te_c
    .while ( not_empty te_c )
      .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
      .if ( not_empty te_evt )
        .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
      ${class_dispatch_array.result}\
      .else
      0\
      .end if
      .select one te_c related by te_c->TE_C[R2017.'precedes']
      .if ( empty te_c )

      .else
,
      .end if
    .end while
    };
  .end if
  ${te_eq.base_event_type} * event;
  .if ( te_thread.enabled )
    .if ( "C" == te_target.language )
  u1_t t = *( (u1_t *) thread );
    .else
  u1_t t = *( ${te_instance.get_thread_assignment}() + c );
    .end if
  .end if .// te_thread.enabled
  /* Start consuming events and dispatching background processes.  */
  .if ( ( "SystemC" == te_thread.flavor ) )
  bool events_remaining_in_queue = true;
  while ( (true == events_remaining_in_queue) && (true == ${te_eq.run_flag}) ) {
  .elif ( "C++" == te_target.language )
  if ( true == ${te_eq.run_flag} ) {
  .else
  while ( true == ${te_eq.run_flag} ) {
  .end if
  .if ( self_event_queue_needed.result )
    event = DequeueOoaSelfEvent(${thread_number}); /* Self first.  */
    if ( 0 == event ) {
  \
  .end if
  .if ( non_self_event_queue_needed.result )
    event = DequeueOoaNonSelfEvent(${thread_number}); /* Instance next.  */
  .end if
  .if ( self_event_queue_needed.result )
    }
  .end if
    if ( 0 != event ) {
  .// Set up self reference for use by prioritized events (and others).
  .if ( event_prioritization_needed.result )
      /* Set up self reference for use by prioritized events (and others).  */
      ${te_prefix.result}self = GetEventTargetInstance( event );
  .end if
  .if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
  .end if
  .if ( "C++" == te_target.language )
      event->thismodule = thismodule;
  .end if
  .if ( "C" == te_target.language )
      ( *( DomainClassDispatcherTable[ GetEventDestDomainNumber( event ) ] )[ GetEventDestObjectNumber( event ) ] )( event );
  .else
      ( *( ${te_instance.get_event_dispatcher}() )[ GetEventDestObjectNumber( event ) ] )( event );
  .end if
  .if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
  .end if
      ${te_eq.delete}( event );
    } else {
      /* event queues empty */
  .if ( "SystemC" == te_thread.flavor )
      events_remaining_in_queue = false;
  .end if
  .if ( te_thread.enabled )
      ${te_thread.nonbusy_wait}( ${thread_number} );
  .end if
    }
  .if ( event_prioritization_needed.result )
    /* Clear self when not in normal state action.    */
    ${te_prefix.result}self = 0;
  .end if
  .assign more_indent = ""
  .if ( te_thread.enabled )
    if ( 0 == t ) {   /* Is this the default task/thread?  */
    .assign more_indent = "  "
  .end if
  .if ( te_sys.MaxInterleavedBridges > 0 )
    ${more_indent}/* Launch (interrupt) bridge actions that occurred during state.  */
    ${more_indent}if ( ! ${te_ilb.dispatch}() ) {
    .assign more_indent = more_indent + "  "
  .end if
  .if ( te_sys.MaxTimers > 0 )
    ${more_indent}/* To disable this timer tick, modify TIM_bridge.c in the gen folder.  */
    ${more_indent}#if ${te_tim.max_timers} > 0
    ${more_indent}if ( 0 == event ) { TIM_tick(); }
    ${more_indent}#endif
  .end if
  .if ( te_sys.MaxInterleavedBridges > 0 )
  ${more_indent}}
  .end if
    ${more_indent}${te_callout.background_processing}();
  .if ( te_thread.enabled )
    }
  .end if
  }
  .if ( te_thread.enabled )
    .if ( "SystemC" != te_thread.flavor )
  return 0;
    .end if
  .end if
}

  .if ( "C" == te_target.language )
/*
 * Load up the threads with event dispatchers and/or specific functionality.
 */
void ${te_eq.scope}${te_prefix.result}xtUML_run( void )
{
    .assign tasking_arguments = ""
    .assign return_code_assignment = ""
    .if ( te_thread.enabled )
      .assign tasking_arguments = " (void *) &i "
      .assign return_code_assignment = "vp = "
  void * vp;
  u1_t i;
  /* Create threads in reverse order saving thread 0 for default.  */
  for ( i = NUM_OF_XTUML_CLASS_THREADS - 1; i > 0; i-- ) {
    ${te_thread.create}( ooa_loop, i );
  }
  i = 0;
    .end if
  ${return_code_assignment}ooa_loop(${tasking_arguments});
}
  .end if
.end if
.//
