/*----------------------------------------------------------------------------
 * File:  sys_xtuml.h
 *
 * Description:
 * Here we have the system-level instance create and delete declaration.
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef SYS_XTUML_H
#define SYS_XTUML_H


class sys_sets {
  protected:
    sys_sets() {
      // This constructor should only be called by the compiler during static
      // initialization and never by clients.  Here we don't allocate the
      // node1s space during static initialization.
    }

    sys_sets(i_t n1_size) {
      node1s = new Escher_SetElement_s[ n1_size ];
      Escher_SetFactoryInit( n1_size );
    }

    ~sys_sets() {
      delete [] node1s;
    }

  public:
/*
 * This is the most simple and basic container class and
 * represents elements in the set (nodes in the list).
 */
struct Escher_SetElement_s {
  Escher_SetElement_s * next;
  void * object;
};

/*
 * This is the set class and may contain attributes that apply
 * to the set as a whole.
 */
typedef struct {
  Escher_SetElement_s * head;
} Escher_ObjectSet_s;

/*
 * Notice the symmetry between the object containoid, the
 * head of set structure and the set node containoid.
 */
typedef struct {
  Escher_SetElement_s * next;
} Escher_Object_s;

/*
 * Here is the shape of the general class extent.  This array contains list
 * heads for both active (animate) and inactive (inanimate) instances.
 */
typedef struct {
  Escher_ObjectSet_s active, inactive;
  Escher_SetElement_s* container;
  Escher_iHandle_t pool;
  Escher_ClassSize_t size;
  Escher_StateNumber_t initial_state;
  Escher_InstanceIndex_t population;
} Escher_Extent_t;

  Escher_ObjectSet_s node1_FreeList;
  Escher_SetElement_s* node1s;

void Escher_SetFactoryInit( const i_t );
void Escher_CopySet( Escher_ObjectSet_s *,
                Escher_ObjectSet_s * const );
void Escher_ClearSet( Escher_ObjectSet_s * );
void Escher_SetInsertElement( Escher_ObjectSet_s *,
                         void * const );
Escher_SetElement_s *
Escher_SetInsertBlock( Escher_SetElement_s *,
                       const u1_t *,
                       const u2_t,
                       u2_t );
#define Escher_SetRemoveInstance( pextent, instance, slot, container, pool ) \
  slot = Escher_SetRemoveNode( pextent, instance )
#define Escher_SetInsertInstance( pextent, node ) \
  node->next = (pextent)->head; \
  (pextent)->head = node


Escher_SetElement_s *
Escher_SetRemoveNode( Escher_ObjectSet_s *,
                      const void * const );
void Escher_SetRemoveElement( Escher_ObjectSet_s *,
                         const void * const );
const void * Escher_SetContains( const Escher_ObjectSet_s * const,
                    const void * const );
u2_t Escher_SetCardinality( const Escher_ObjectSet_s * const );
bool Escher_SetEquality( Escher_ObjectSet_s * const,
                    Escher_ObjectSet_s * const );
#define Escher_InitSet( S ) (S)->head = 0
#define Escher_SetGetAny( S ) ( ((S)->head != 0) ? (S)->head->object : 0 )
#define Escher_SetIsEmpty( S ) ( (S)->head == 0 )

/*
 * Collection Iteration
 * The iterator uses a cursor external to the set (or extent).
 * This cursor maintains a flavor of current element.
 */
struct Escher_Iterator_s {
  Escher_SetElement_s * cursor;
};
#define Escher_IteratorReset( I, S ) ( ((I)->cursor = (S)->head) )
void * Escher_IteratorNext( Escher_Iterator_s * const );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied strlen.  */
u2_t Escher_strlen( const c_t * );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied memset.  */
void Escher_memset( void * const, const u1_t, u2_t );

/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied memmove.  */
void Escher_memmove( void * const, const void * const, u2_t );
c_t * Escher_strcpy( c_t *, const c_t * );
c_t * Escher_stradd( const c_t *, const c_t * );
/* We could easily replace this function declaration with a macro
   that invoked the compiler (C library) supplied strcmp.  */
c_t Escher_strcmp( const c_t *, const c_t * );
c_t * Escher_strget( void );
};

class sys_factory : public sys_sets {
  public:
    sys_factory(i_t n1_size) : sys_sets(n1_size) {}

  Escher_iHandle_t Escher_CreateInstance( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
  void Escher_DeleteInstance( Escher_iHandle_t, const Escher_DomainNumber_t, const Escher_ClassNumber_t );
/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
  void Escher_ClassFactoryInit( const Escher_DomainNumber_t, const Escher_ClassNumber_t );
  virtual Escher_Extent_t * Escher_GetDCI( const Escher_ClassNumber_t ) { return 0; }

};
/*
 * Data structures and methods associated with the event base class of this
 * model compiler.
 */
/* Escher_EventFlags_t bit masks */
#define ESCHER_IS_INSTANCE_EVENT     0x01
#define ESCHER_IS_CREATION_EVENT     0x02
#define ESCHER_IS_ASSIGNER_EVENT     0x04
#define ESCHER_IS_DELAYED_EVENT      0x08
#define ESCHER_NO_FSM_RELEASE_EVENT  0x10
#define ESCHER_IS_POLYMORPHIC_EVENT  0x20
#define ESCHER_IS_TRUE_EVENT         0x40
#define ESCHER_IS_POLY_IN_FLIGHT     0x80

#define UNINITIALIZED_STATE 0
#define EVENT_CANT_HAPPEN ((Escher_StateNumber_t) -1)
#define EVENT_IS_IGNORED  ((Escher_StateNumber_t) -2)

/* This represents the constant part of the event structure.  */
typedef struct {
  Escher_DomainNumber_t destination_domain_number;
  Escher_ClassNumber_t destination_object_number;
  Escher_EventNumber_t event_number;
  Escher_EventFlags_t event_flags;
  sc_event * sc_e;
  void * thismodule;
} Escher_xtUMLEventConstant_t;

/* Structure:  Escher_xtUMLEvent_t
 * Base class of application analysis xtUML events.  */
#define EVENT_BASE_ATTRIBUTE_LIST \
  struct Escher_xtUMLevent_s * next;\
  Escher_iHandle_t object_instance;\
  Escher_DomainNumber_t destination_domain_number;\
  Escher_ClassNumber_t destination_object_number;\
  Escher_EventNumber_t event_number;\
  Escher_EventFlags_t event_flags;\
  sc_event * sc_e;\
  void * thismodule;\

struct Escher_xtUMLevent_s {
  EVENT_BASE_ATTRIBUTE_LIST
};
typedef struct Escher_xtUMLevent_s Escher_xtUMLEvent_t;

typedef unsigned long ETimer_time_t;

typedef void Escher_Timer_t;

/*
 * Event Macros
 */
#define GetOoaEventFlags(X) (((X))->event_flags)
#define SetOoaEventFlags(X, Y) (((X))->event_flags = Y)

#define GetIsInstanceEvent(X) (GetOoaEventFlags(X) & ESCHER_IS_INSTANCE_EVENT)
#define SetIsInstanceEvent(X) (GetOoaEventFlags(X) |= ESCHER_IS_INSTANCE_EVENT)

#define GetIsCreationEvent(X) (GetOoaEventFlags(X) & ESCHER_IS_CREATION_EVENT)
#define SetIsCreationEvent(X) (GetOoaEventFlags(X) |= ESCHER_IS_CREATION_EVENT)

#define GetIsAssignerEvent(X) (GetOoaEventFlags(X) & ESCHER_IS_ASSIGNER_EVENT)
#define SetIsAssignerEvent(X) (GetOoaEventFlags(X) |= ESCHER_IS_ASSIGNER_EVENT)

#define GetIsDelayedEvent(X)  (GetOoaEventFlags(X) & ESCHER_IS_DELAYED_EVENT)
#define SetIsDelayedEvent(X)  (GetOoaEventFlags(X) |= ESCHER_IS_DELAYED_EVENT)

#define GetIsPolymorphicEvent(X) (GetOoaEventFlags(X) & ESCHER_IS_POLYMORPHIC_EVENT)
#define SetIsPolymorphicEvent(X) (GetOoaEventFlags(X) |= ESCHER_IS_POLYMORPHIC_EVENT)
#define ClearIsPolymorphicEvent(X)  (GetOoaEventFlags(X) &= ~(Escher_EventFlags_t)ESCHER_IS_POLYMORPHIC_EVENT)

#define GetFsmReleasesEvent(X) (GetOoaEventFlags(X) & ESCHER_NO_FSM_RELEASE_EVENT)
#define SetFsmReleasesEvent(X) (GetOoaEventFlags(X) |= ESCHER_NO_FSM_RELEASE_EVENT)

#define GetOoaEventNumber(X) (((X))->event_number)
#define SetOoaEventNumber(X, Y) (((X))->event_number = (Y))

#define GetEventTargetInstance(X) (((X))->object_instance)
#define SetEventTargetInstance(X, Y) (((X))->object_instance = (Escher_iHandle_t)(Y))

#define GetEventSendingInstance(X) (((X))->sending_instance)
#define SetEventSendingInstance(X, Y) (((X))->sending_instance = (Escher_iHandle_t)(Y))

#define GetEventDestDomainNumber(X) (((X))->destination_domain_number)
#define SetEventDestDomainNumber(X, Y) (((X))->destination_domain_number = (Y))

#define GetEventDestObjectNumber(X) (((X))->destination_object_number)
#define SetEventDestObjectNumber(X, Y) (((X))->destination_object_number = (Y))

/* Opaque type definition of a translated state action member function.  */
typedef _reentrant void (*StateAction_t)( Escher_iHandle_t, const Escher_xtUMLEvent_t * const );

/* Opaque type definition of class event dispatcher member function.  */
typedef _reentrant void (*EventTaker_t)( Escher_xtUMLEvent_t * );

/* Opaque type definition of domain level event dispatcher member function.  */
typedef _reentrant void (*DomainDispatcher_t)( Escher_xtUMLEvent_t * );


/* Structure:  Escher_systemxtUMLevents
 * Provides a default event structure for use while initializing
 * the event pool.  */
typedef union {
  Escher_xtUMLEvent_t mc_event_base;
} Escher_systemxtUMLevents_t;

/* anchor declaration for front and back of list of events */
typedef struct {
  Escher_xtUMLEvent_t * head, * tail;
} xtUMLEventQueue_t;

class sys_events {
protected:
  sys_events() {
      // This constructor should only be called by the compiler during static
      // initialization and never by clients.  Here we don't allocate the
      // event pool space during static initialization.
  }

  sys_events(i_t max_event_size, i_t event_pool_size, i_t num_class_threads) {
    Escher_xtUML_event_pool = (Escher_systemxtUMLevents_t *) operator new (max_event_size * event_pool_size);
    non_self_event_queue = new xtUMLEventQueue_t[ num_class_threads ];
    self_event_queue = new xtUMLEventQueue_t[ num_class_threads ];
    InitializeOoaEventPool( max_event_size, event_pool_size );
    Escher_run_flag = true;
  }

  ~sys_events() {
    delete [] Escher_xtUML_event_pool;
    delete [] non_self_event_queue;
    delete [] self_event_queue;
  }

public:
  Escher_systemxtUMLevents_t * Escher_xtUML_event_pool;
  Escher_xtUMLEvent_t * free_event_list;  /* Pointer to head of list of available event nodes.  */
  bool Escher_run_flag;
  xtUMLEventQueue_t * non_self_event_queue;
  Escher_xtUMLEvent_t * DequeueOoaNonSelfEvent( void );
  xtUMLEventQueue_t * self_event_queue;
  Escher_xtUMLEvent_t * DequeueOoaSelfEvent( void );

Escher_xtUMLEvent_t * Escher_AllocatextUMLEvent( void );
Escher_xtUMLEvent_t * Escher_NewxtUMLEvent( const void * const, const Escher_xtUMLEventConstant_t * const );
Escher_xtUMLEvent_t * Escher_ModifyxtUMLEvent( Escher_xtUMLEvent_t *, const Escher_xtUMLEventConstant_t * const );
void Escher_DeletextUMLEvent( Escher_xtUMLEvent_t * );
void InitializeOoaEventPool( i_t, i_t );
void Escher_xtUML_run( void );
void * Escher_GetSelf( void );
void Escher_SendEvent( Escher_xtUMLEvent_t * );
void Escher_SendSelfEvent( Escher_xtUMLEvent_t * );
  void ooa_loop( const u1_t, const u1_t, void * );
  virtual EventTaker_t * Escher_GetEventDispatcher( void ) { return 0; }
};

/*
 * Delcarations for multi-tasking/threading services.
 */


#define NUM_OF_XTUML_CLASS_THREADS 1
#define NUM_OF_TOTAL_THREADS NUM_OF_XTUML_CLASS_THREADS
#define SEMAPHORE_FLAVOR_IQUEUE    0
#define SEMAPHORE_FLAVOR_SQUEUE    1
#define SEMAPHORE_FLAVOR_FREELIST  2
#define SEMAPHORE_FLAVOR_NONBUSY   3
#define SEMAPHORE_FLAVOR_INSTANCE  4
#define SEMAPHORE_FLAVOR_TIMER     5
#define SEMAPHORE_FLAVOR_ILB       6
#define SEMAPHORE_FLAVOR_MAX       7

#include "TIM_bridge.h"


#endif   /* SYS_XTUML_H */
