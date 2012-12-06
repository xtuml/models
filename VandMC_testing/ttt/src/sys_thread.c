/*---------------------------------------------------------------------
 * File:  sys_thread.c
 *
 * Description:
 * This file provides implementation of multi-tasking/threading
 * capabilities allowing classes/subsystems to run in different
 * threads on a multi-tasking/threading OS/RTOS.
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *-------------------------------------------------------------------*/

#include <pthread.h>   /* POSIX thread declarations */
#include "ttt_sys_types.h"
#include "TIM_bridge.h"

static pthread_mutex_t mutices[ SEMAPHORE_FLAVOR_MAX ];
static pthread_cond_t nonbusy_wait_cond[ NUM_OF_TOTAL_THREADS ];
static u1_t threadnumber[ NUM_OF_TOTAL_THREADS ];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void Escher_InitializeThreading( void )
{
  u1_t i;
  int rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    threadnumber[ i ] = i;
    rc = pthread_cond_init( &nonbusy_wait_cond[ i ], 0 );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = pthread_mutex_init( &mutices[ i ], 0 );
  }
  rc = rc;
}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void Escher_mutex_lock( const u1_t flavor )
{
  int rc = pthread_mutex_lock( &mutices[ flavor ] );
  rc = rc;
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void Escher_mutex_unlock( const u1_t flavor )
{
  int rc = pthread_mutex_unlock( &mutices[ flavor ] );
  rc = rc;
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void Escher_nonbusy_wait( const u1_t thread )
{
  int rc;
  void * vp = 0;
  pthread_cond_t * dwc = &nonbusy_wait_cond[ thread ];
  Escher_mutex_lock( SEMAPHORE_FLAVOR_NONBUSY );
  if ( thread == 0 ) {
    struct timespec ts;
    vp = TIM_duration_until_next_timer_pop( ( void * ) &ts );
    if ( vp != 0 ) {
      rc = pthread_cond_timedwait(
        dwc, &mutices[ SEMAPHORE_FLAVOR_NONBUSY ], &ts );
    }
  }
  if ( ( thread != 0 ) || ( vp == 0 ) ) {
    rc = pthread_cond_wait( dwc, &mutices[ SEMAPHORE_FLAVOR_NONBUSY ] );
  }
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_NONBUSY );
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void Escher_nonbusy_wake( const u1_t thread )
{
  int rc;
  pthread_cond_t * dwc = &nonbusy_wait_cond[ thread ];
  Escher_mutex_lock( SEMAPHORE_FLAVOR_NONBUSY );
  rc = pthread_cond_broadcast( dwc );
  Escher_mutex_unlock( SEMAPHORE_FLAVOR_NONBUSY );
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void Escher_thread_create( void *(routine)(void *), const u1_t i )
{
  static pthread_t pthread[ NUM_OF_TOTAL_THREADS ];
  int rc = pthread_create( &pthread[ i - 1 ], 0, routine, &threadnumber[ i ] );
  rc = rc;
}

/*
 * Cleanup the structures initialized in Escher_InitializeThreading.
 */
void Escher_thread_shutdown( void )
{
  u1_t i;
  int rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    rc = pthread_cond_destroy( &nonbusy_wait_cond[ i ] );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = pthread_mutex_destroy( &mutices[ i ] );
  }
}
