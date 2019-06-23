/*
 * These routines provides a means to safely receive calls from interrupt
 * handlers or other tasks/threads/contexts.
 */

typedef void ( * interleaved_bridge_t )( void );
static interleaved_bridge_t interleaved_bridges[ ${te_ilb.define_name} ];
typedef struct { u4_t space[ (${te_ilb.data_define_name} + sizeof(u4_t) - 1) / sizeof(u4_t) ]; } ilb_data_t;
static ilb_data_t ilb_data[ ${te_ilb.define_name} ];
static u1_t ilb_head = 0;
static u1_t ilb_tail = 0;
static bool ilb_empty = true;

/*
 * Post a bridge routine for execution after any executing state
 * action completes.
 * Protect the data structures from being clobbered by another context
 * by disabling interrupts around the data access.
 * Return a pointer to the argument data used by this bridge operation.
 */
void *
${te_ilb.interleave_bridge}( void (vfp)(void) )
{
  void * ilb = 0;
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_ILB );
.end if
  ${disable_interrupts.result}
  if ( ( ilb_head == ilb_tail ) && ( true != ilb_empty ) ) {
    /* Overflowed array of interleaved bridges.  */
    ${te_callout.interleaved_bridge_overflow}();
  } else {
    ilb_empty = false;
    ilb = (void *) &ilb_data[ ilb_head ];
    interleaved_bridges[ ilb_head ] = vfp;
    /* Bump the head of the circular list.  */
    ilb_head = ( ilb_head == (${te_ilb.define_name} - 1) ) ? 0 : ilb_head + 1;
  }
  return ilb;
}

/*
 * Unlock the resource that is protecting our interleaved bridge.
 */
void
${te_ilb.interleave_bridge_done}( void )
{
  ${enable_interrupts.result}
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_ILB );
  ${te_thread.nonbusy_wake}( 0 ); /* Wake default thread to process.  */
.end if
}

/*
 * Sequentially execute each of the bridge routines that have been
 * posted during the most recent executing state action.
 * Protect the data structures from being clobbered by another context
 * by disabling interrupts around the data access.
 */
bool
${te_ilb.dispatch}( void )
{
  bool rakedleaves = false;
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_ILB );
.end if
  ${disable_interrupts.result}
  if ( true != ilb_empty ) {
    do {
      ${enable_interrupts.result}
.if ( te_thread.enabled )
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_ILB );
.end if
      rakedleaves = true;
.if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
.end if
      interleaved_bridges[ ilb_tail ]();  /* Run with interrupts enabled.  */
.if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
.end if
.if ( te_thread.enabled )
      ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_ILB );
.end if
      ${disable_interrupts.result}
      /* Bump the tail of the circular list.  */
      ilb_tail = ( ilb_tail == (${te_ilb.define_name} - 1) ) ? 0 : ilb_tail + 1;
    } while ( ilb_head != ilb_tail );
    ilb_empty = true;
  }
  ${enable_interrupts.result}
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_ILB );
.end if
  return rakedleaves;
}

/*
 * Get a pointer to the data for the current interleaved bridge.
 */
void *
${te_ilb.get_data}( void )
{ 
  void * ilb;
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_ILB );
.end if
  ilb = (void *) &ilb_data[ ilb_tail ];
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_ILB );
.end if
  return ilb;
}
