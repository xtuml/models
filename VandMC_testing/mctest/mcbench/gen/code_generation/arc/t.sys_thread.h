/*
 * Delcarations for multi-tasking/threading services.
 */


.if ( te_thread.enabled )
#define ${te_prefix.define_u}TASKING_${te_thread.flavor} 1
.end if
#define NUM_OF_XTUML_CLASS_THREADS ${te_thread.number_of_threads}
#define NUM_OF_TOTAL_THREADS NUM_OF_XTUML_CLASS_THREADS\
.if ( te_sys.PersistentClassCount > 0 )
 + 1
#define PERSISTENCE_THREAD_NUMBER NUM_OF_TOTAL_THREADS - 1
.else

.end if
.assign i = 0
#define SEMAPHORE_FLAVOR_IQUEUE    ${i}
.assign i = i + 1
#define SEMAPHORE_FLAVOR_SQUEUE    ${i}
.assign i = i + 1
#define SEMAPHORE_FLAVOR_FREELIST  ${i}
.assign i = i + 1
#define SEMAPHORE_FLAVOR_NONBUSY   ${i}
.if ( te_thread.serialize )
.assign i = i + 1
#define SEMAPHORE_FLAVOR_DISPATCH  ${i}
.end if
.assign i = i + 1
#define SEMAPHORE_FLAVOR_INSTANCE  ${i}
.assign i = i + 1
#define SEMAPHORE_FLAVOR_TIMER     ${i}
.assign i = i + 1
#define SEMAPHORE_FLAVOR_ILB       ${i}
.if ( te_sys.PersistentClassCount > 0 )
.assign i = i + 1
#define SEMAPHORE_FLAVOR_PERSIST   ${i}
.end if
.assign i = i + 1
#define SEMAPHORE_FLAVOR_MAX       ${i}

.if ( "SystemC" != te_thread.flavor )
void ${te_prefix.result}InitializeThreading( void );
void ${te_thread.create}( void *(f)(void *), const u1_t );
void ${te_thread.mutex_lock}( const u1_t );
void ${te_thread.mutex_unlock}( const u1_t );
void ${te_thread.nonbusy_wait}( const u1_t );
void ${te_thread.nonbusy_wake}( const u1_t );
void ${te_thread.shutdown}( void );

#ifdef NOMUTEX_DEBUG
#define pthread_mutex_lock( X ) 0
#define pthread_mutex_unlock( X ) 0
#endif
.end if
