/*---------------------------------------------------------------------
 * File:  ${te_file.thread}.${te_file.src_file_ext}
 *
 * Description:
 * This file provides implementation of multi-tasking/threading
 * capabilities allowing classes/subsystems to run in different
 * threads on a multi-tasking/threading OS/RTOS.
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#include <windows.h>   /* MS Windows declarations */
#include <process.h>
#include <stdio.h>
#include "${te_file.types}.${te_file.hdr_file_ext}"

static HANDLE mutices[ SEMAPHORE_FLAVOR_MAX ];
static HANDLE nonbusy_wait_cond[ NUM_OF_TOTAL_THREADS ];
static u1_t threadnumber[ NUM_OF_TOTAL_THREADS ];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  u1_t i;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    threadnumber[ i ] = i;
    nonbusy_wait_cond[ i ] = CreateSemaphore( NULL, 0, 1, NULL );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    mutices[i] = CreateSemaphore( NULL, 0, 1, NULL );
  }
}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  WaitForSingleObject( mutices[ flavor ], INFINITE );
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  ReleaseSemaphore(mutices[ flavor ], 1, NULL);
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{
.if ( not te_sys.SimulatedTime )
  HANDLE dwc;
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_NONBUSY );
  dwc = nonbusy_wait_cond[thread];
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_NONBUSY );
  if ( thread == 0 ) {
    /*
     * At least one thread has to wake up and service any
     * pending delayed events.  We let thread 0 do this.
     * So, thread 0 will only block a maximum of 10ms. Other 
     * threads will block forever waiting for the send event 
     * to wake them.
     */
    WaitForSingleObject( dwc, 10 );
  } else {
    WaitForSingleObject( dwc, INFINITE );
  }
.end if
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_NONBUSY );
  ReleaseSemaphore( nonbusy_wait_cond[ thread ], 1, NULL );
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_NONBUSY );
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void ${te_thread.create}( void *(routine)(void *), const u1_t i )
{
  _beginthread( (void *) routine, 0, (void*)&(threadnumber[i]) );
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
void ${te_thread.shutdown}( void )
{
  u1_t i;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    CloseHandle( nonbusy_wait_cond[ i ] );
    nonbusy_wait_cond[ i ] = 0;
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    CloseHandle( mutices[ i ] );
    mutices[ i ] = 0;
  }
}
.//
