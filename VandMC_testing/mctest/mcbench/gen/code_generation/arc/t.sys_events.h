/*
 * Data structures and methods associated with the event base class of this
 * model compiler.
 */
/* ${te_typemap.event_flags_name} bit masks */
#define ${te_prefix.define_u}IS_INSTANCE_EVENT     0x01
#define ${te_prefix.define_u}IS_CREATION_EVENT     0x02
#define ${te_prefix.define_u}IS_ASSIGNER_EVENT     0x04
#define ${te_prefix.define_u}IS_DELAYED_EVENT      0x08
#define ${te_prefix.define_u}NO_FSM_RELEASE_EVENT  0x10
#define ${te_prefix.define_u}IS_POLYMORPHIC_EVENT  0x20
#define ${te_prefix.define_u}IS_TRUE_EVENT         0x40
#define ${te_prefix.define_u}IS_POLY_IN_FLIGHT     0x80

#define ${te_prefix.define_usw}UNINITIALIZED_STATE 0
#define ${te_prefix.define_usw}EVENT_CANT_HAPPEN ((${te_typemap.state_number_name}) -1)
#define ${te_prefix.define_usw}EVENT_IS_IGNORED  ((${te_typemap.state_number_name}) -2)

/* This represents the constant part of the event structure.  */
typedef struct {
  ${te_typemap.domain_number_name} destination_domain_number;
  ${te_typemap.object_number_name} destination_object_number;
  ${te_typemap.event_number_name} event_number;
  ${te_typemap.event_flags_name} event_flags;
.if ( "SystemC" == te_thread.flavor )
  sc_event * sc_e;
.end if
.if ( "C++" == te_target.language )
  void * thismodule;
.end if
.if ( event_prioritization_needed.result )
  ${te_typemap.event_priority_name} priority;
.end if .// event_prioritization_needed
} ${te_eq.constant_type};

/* Structure:  ${te_eq.base_event_type}
 * Base class of application analysis xtUML events.  */
#define EVENT_BASE_ATTRIBUTE_LIST \\
  struct ${te_prefix.type}xtUMLevent_s * next;\\
.if ( event_prioritization_needed.result )
  struct ${te_prefix.type}xtUMLevent_s * prev;\\
.end if .// event_prioritization_needed
  ${te_instance.handle} object_instance;\\
.if ( event_prioritization_needed.result )
  ${te_instance.handle} sending_instance;\\
.end if
  ${te_typemap.domain_number_name} destination_domain_number;\\
  ${te_typemap.object_number_name} destination_object_number;\\
  ${te_typemap.event_number_name} event_number;\\
  ${te_typemap.event_flags_name} event_flags;\\
.if ( "SystemC" == te_thread.flavor )
  sc_event * sc_e;\\
.end if
.if ( "C++" == te_target.language )
  void * thismodule;\\
.end if
.if ( event_prioritization_needed.result )
  ${te_typemap.event_priority_name} priority;
.end if

struct ${te_prefix.type}xtUMLevent_s {
  EVENT_BASE_ATTRIBUTE_LIST
};
typedef struct ${te_prefix.type}xtUMLevent_s ${te_eq.base_event_type};

typedef unsigned long ETimer_time_t;

.if ( te_tim.keyed_timer_support )
  .include "${te_file.arc_path}/t.sys_tim.data.h"

typedef struct {
  ${te_tim.internal_type} * timer;
  u4_t key;
} ${te_prefix.type}Timer_t;
.else
typedef void ${te_prefix.type}Timer_t;
.end if

/*
 * Event Macros
 */
.if ( event_prioritization_needed.result )
#define ${te_prefix.define_csw}GetOoaEventPriority(X) (((X))->priority)
#define ${te_prefix.define_csw}SetOoaEventPriority(X, Y) (((X))->priority = Y)

.end if
#define ${te_prefix.define_csw}GetOoaEventFlags(X) (((X))->event_flags)
#define ${te_prefix.define_csw}SetOoaEventFlags(X, Y) (((X))->event_flags = Y)

#define ${te_prefix.define_csw}GetIsInstanceEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}IS_INSTANCE_EVENT)
#define ${te_prefix.define_csw}SetIsInstanceEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}IS_INSTANCE_EVENT)

#define ${te_prefix.define_csw}GetIsCreationEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}IS_CREATION_EVENT)
#define ${te_prefix.define_csw}SetIsCreationEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}IS_CREATION_EVENT)

#define ${te_prefix.define_csw}GetIsAssignerEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}IS_ASSIGNER_EVENT)
#define ${te_prefix.define_csw}SetIsAssignerEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}IS_ASSIGNER_EVENT)

#define ${te_prefix.define_csw}GetIsDelayedEvent(X)  (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}IS_DELAYED_EVENT)
#define ${te_prefix.define_csw}SetIsDelayedEvent(X)  (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}IS_DELAYED_EVENT)

#define ${te_prefix.define_csw}GetIsPolymorphicEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}IS_POLYMORPHIC_EVENT)
#define ${te_prefix.define_csw}SetIsPolymorphicEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}IS_POLYMORPHIC_EVENT)
#define ${te_prefix.define_csw}ClearIsPolymorphicEvent(X)  (${te_prefix.define_csw}GetOoaEventFlags(X) &= ~(${te_typemap.event_flags_name})${te_prefix.define_u}IS_POLYMORPHIC_EVENT)

#define ${te_prefix.define_csw}GetFsmReleasesEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) & ${te_prefix.define_u}NO_FSM_RELEASE_EVENT)
#define ${te_prefix.define_csw}SetFsmReleasesEvent(X) (${te_prefix.define_csw}GetOoaEventFlags(X) |= ${te_prefix.define_u}NO_FSM_RELEASE_EVENT)

#define ${te_prefix.define_csw}GetOoaEventNumber(X) (((X))->event_number)
#define ${te_prefix.define_csw}SetOoaEventNumber(X, Y) (((X))->event_number = (Y))

#define ${te_prefix.define_csw}GetEventTargetInstance(X) (((X))->object_instance)
#define ${te_prefix.define_csw}SetEventTargetInstance(X, Y) (((X))->object_instance = (${te_instance.handle})(Y))

#define ${te_prefix.define_csw}GetEventSendingInstance(X) (((X))->sending_instance)
#define ${te_prefix.define_csw}SetEventSendingInstance(X, Y) (((X))->sending_instance = (${te_instance.handle})(Y))

#define ${te_prefix.define_csw}GetEventDestDomainNumber(X) (((X))->destination_domain_number)
#define ${te_prefix.define_csw}SetEventDestDomainNumber(X, Y) (((X))->destination_domain_number = (Y))

#define ${te_prefix.define_csw}GetEventDestObjectNumber(X) (((X))->destination_object_number)
#define ${te_prefix.define_csw}SetEventDestObjectNumber(X, Y) (((X))->destination_object_number = (Y))

/* Opaque type definition of a translated state action member function.  */
typedef _reentrant void (*StateAction_t)( ${te_instance.handle}, const ${te_eq.base_event_type} * const );

/* Opaque type definition of class event dispatcher member function.  */
typedef _reentrant void (*EventTaker_t)( ${te_eq.base_event_type} * );

/* Opaque type definition of domain level event dispatcher member function.  */
typedef _reentrant void (*DomainDispatcher_t)( ${te_eq.base_event_type} * );


.if ( "C" != te_target.language )
.// *** Declare a _super union_ of all domain level events union definitions.
/* Structure:  ${te_eq.system_events_union}
 * Provides a default event structure for use while initializing
 * the event pool.  */
typedef union {
  ${te_eq.base_event_type} ${te_eq.base_variable};
} ${te_eq.system_events_union}_t;

/* anchor declaration for front and back of list of events */
typedef struct {
  ${te_eq.base_event_type} * head, * tail;
} xtUMLEventQueue_t;

class sys_events {
protected:
  sys_events() {
      // This constructor should only be called by the compiler during static
      // initialization and never by clients.  Here we don't allocate the
      // event pool space during static initialization.
  }

  sys_events(i_t max_event_size, i_t event_pool_size, i_t num_class_threads) {
  .if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
    ${te_eq.system_event_pool} = (${te_eq.system_events_union}_t *) operator new (max_event_size * event_pool_size);
    .if ( non_self_event_queue_needed.result )
    non_self_event_queue = new xtUMLEventQueue_t[ num_class_threads ];
    .end if
    .if ( self_event_queue_needed.result )
    self_event_queue = new xtUMLEventQueue_t[ num_class_threads ];
    .end if
    InitializeOoaEventPool( max_event_size, event_pool_size );
    ${te_eq.run_flag} = true;
  .end if
  }

  ~sys_events() {
    delete [] ${te_eq.system_event_pool};
    .if ( non_self_event_queue_needed.result )
    delete [] non_self_event_queue;
    .end if
    .if ( self_event_queue_needed.result )
    delete [] self_event_queue;
    .end if
  }

public:
  ${te_eq.system_events_union}_t * ${te_eq.system_event_pool};
  ${te_eq.base_event_type} * free_event_list;  /* Pointer to head of list of available event nodes.  */
  bool ${te_eq.run_flag};
  .if ( non_self_event_queue_needed.result )
  xtUMLEventQueue_t * non_self_event_queue;
  ${te_eq.base_event_type} * DequeueOoaNonSelfEvent( ${dq_arg_type} );
  .end if
  .if ( self_event_queue_needed.result )
  xtUMLEventQueue_t * self_event_queue;
  ${te_eq.base_event_type} * DequeueOoaSelfEvent( ${dq_arg_type} );
  .end if
.end if

${te_eq.base_event_type} * ${te_eq.allocate}( void );
${te_eq.base_event_type} * ${te_eq.new}( const void * const, const ${te_eq.constant_type} * const );
${te_eq.base_event_type} * ${te_eq.modify}( ${te_eq.base_event_type} *, const ${te_eq.constant_type} * const );
void ${te_eq.delete}( ${te_eq.base_event_type} * );
void ${te_prefix.symbolsw}InitializeOoaEventPool( \
.if ( "C" == te_target.language )
void );
.else
i_t, i_t );
.end if
void ${te_prefix.result}xtUML_run( void );
void * ${te_instance.global_self}( void );
void ${te_eq.non_self}( ${te_eq.base_event_type} * );
void ${te_eq.self}( ${te_eq.base_event_type} * );
.if ( te_tim.timer_event_search_and_destroy )
bool ${te_eq.search_and_destroy}( ${te_eq.base_event_type} * );
.end if
.if ( ( 0 < te_sys.StateSaveBufferSize ) or ( te_sys.PersistentClassCount > 0 ) )
${te_typemap.instance_index_name} ${te_prefix.result}getindex( const ${te_instance.handle}, const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
.end if
.if ( "C++" == te_target.language )
  void ooa_loop( void * );
  virtual EventTaker_t * ${te_instance.get_event_dispatcher}( void ) { return 0; }
  .if ( te_thread.enabled )
  virtual ${te_typemap.object_number_name} * ${te_instance.get_thread_assignment}( void ) { return 0; }
  .end if
.end if
.if ( "C" != te_target.language )
};
.end if

.include "${te_file.arc_path}/t.sys_thread.h"
.if ( not_empty tim_te_ee )
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.end if
