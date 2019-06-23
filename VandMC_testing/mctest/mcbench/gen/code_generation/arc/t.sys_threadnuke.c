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

#include "${te_file.types}.${te_file.hdr_file_ext}"

extern VOID Escher_main( UNSIGNED, VOID * );
static UNSIGNED ${te_prefix.result}task_stack_depth = 4096; /* default */
static NU_MEMORY_POOL * ${te_prefix.result}memory_pool; /* ptr to stack space */
static NU_SEMAPHORE mutices[ SEMAPHORE_FLAVOR_MAX ];
static NU_TASK xtUML_tasks[ NUM_OF_TOTAL_THREADS ];
static u1_t xtUML_task_priorities[ NUM_OF_TOTAL_THREADS ];
static u1_t threadnumber[ NUM_OF_TOTAL_THREADS ];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  u1_t i;
  STATUS rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    threadnumber[ i ] = i;
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = NU_Create_Semaphore( &mutices[ i ], "esc_sems", 1, NU_FIFO );
  }
  rc = rc;
}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  STATUS rc = NU_Obtain_Semaphore( &mutices[ flavor ], NU_SUSPEND );
  rc = rc;
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  STATUS rc = NU_Release_Semaphore( &mutices[ flavor ] );
  rc = rc;
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{
  STATUS rc = NU_Suspend_Task( &xtUML_tasks[ thread ] );
  rc = rc;
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
  STATUS rc = NU_Resume_Task( &xtUML_tasks[ thread ] );
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
typedef void (*fp)(UNSIGNED, VOID *);
void ${te_thread.create}( void (routine)(UNSIGNED, void *), const u1_t i )
{
  VOID * stack_ptr;
  STATUS rc = NU_Allocate_Memory(
    ${te_prefix.result}memory_pool,               /* system dynamic memory pool */
    &stack_ptr,                /* return pointer to allocated block */
    ${te_prefix.result}task_stack_depth,                      /* depth of stack */
    NU_NO_SUSPEND );             /* whether to suspend if no memory */
  rc = NU_Create_Task(
    &xtUML_tasks[ i ],       /* pointer to task control block (TCB) */
    "BPMC3020",                        /* alphabetic name for tasks */
    (fp) routine,                               /* task entry point */
    i,                                  /* integer for passing data */
    &threadnumber[ i ],               /* pointer to the task number */
    stack_ptr,                  /* pointer to block of stack memory */
    ${te_prefix.result}task_stack_depth,                 /* size of stack block */
    xtUML_task_priorities[ i ],            /* priority of this task */
    0,                    /* time slicing control - no time slicing */
    NU_PREEMPT,                              /* preemptibility flag */
    NU_START );                            /* Go ready right away.  */
  rc = rc;
}

/*
 * Create the default xtUML task.
 * Stow stack memory information "under a rock" for use by the
 * task initialization routines later on.
 */
void
xtUML_Application_Initialize(
  NU_MEMORY_POOL * system_stack_memory_pool,
  const UNSIGNED stack_depth
)
{
  ${te_prefix.result}task_stack_depth = stack_depth;
  ${te_prefix.result}memory_pool = system_stack_memory_pool;
${te_thread.extra_initialization}\
  ${te_thread.create}( ${te_prefix.result}main, 0 );
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
void ${te_thread.shutdown}( void )
{
  u1_t i;
  STATUS rc;
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = NU_Delete_Semaphore( &mutices[ i ] );
  }
  rc = rc;
}
.//
