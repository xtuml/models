/*---------------------------------------------------------------------
 * File:  ${te_file.tim}.${te_file.src_file_ext}
 *
 * External Entity:  Time (TIM)
 *                            
 * Description:
 * This file provides an implementation of the time functionally
 * similar to the standard Shlaer-Mellor timer functionality.
 * Usage is conformed to the bridge interface
 * as described in the BridgePoint Action Language Users Guide.
 *
 * Modify this file to match project design requirements.  Simply add
 * or remove code.  Special comments draw attention to where
 * modifications can most easily be made.
 *
 * Only a subset of the TIM interfaces are provided in this simple
 * prototype implementation.
 * Long integers are used to store time values thus limiting the
 * duration of timers and the system ticker to about 71 minutes.
 * The sample implementation uses the localtime, mktime, ftime
 * and time library routines.
 *
 * For this example implementation to work, TIM_init() must be
 * invoked at start-up (perhaps from ${te_callout.initialization}).
 * Also, TIM_tick() must be invoked periodically and as often
 * as practical (perhaps from ${te_callout.background_processing}).
 * The resolution of the timers is driven largely by the frequency
 * of invocation of TIM_tick().  Note that TIM_tick could be invoked
 * asynchronously based upon the duration of the next most pending
 * timer.
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.//#include "${te_file.callout}.${te_file.hdr_file_ext}"
#include <sys/timeb.h>
#include <time.h>

.if ( "SystemC" == te_thread.flavor )
#define MSEC_CONVERT 1000UL
.end if
#define USEC_CONVERT \
1000UL

.if ( not te_tim.keyed_timer_support )
  .include "${te_file.arc_path}/t.sys_tim.data.h"
.end if

#ifdef USED_TO_ALLOW_PAUSING
static ETimer_time_t start_of_pause = 0;
static bool paused = false;
#endif
static ETimer_time_t tinit = 0;
.if ( te_sys.SimulatedTime )
static ETimer_time_t systyme;
.else
static struct timeb systyme;
.end if
#if ${te_tim.max_timers} > 0
static ETimer_t swtimers[ ${te_tim.max_timers} ];  /* system.clr color */
static ETimer_t * animate = 0, * inanimate = 0;
.if ( te_tim.keyed_timer_support )
static u4_t timer_access_key = 0;
.end if

static void timer_insert_sorted( ETimer_t * );
static void timer_fire( ETimer_t * const );
static ETimer_t *timer_start( const ETimer_time_t, ${te_eq.base_event_type} * const );
static bool timer_cancel( ETimer_t * const );
static bool timer_find_and_delete( ETimer_t * const );
static bool timer_find_and_reinsert_sorted( ETimer_t * const );
#endif   /* if ${te_tim.max_timers} > 0 */
static ETimer_time_t ETimer_msec_time( void );


#if ${te_tim.max_timers} > 0
/*=====================================================================
 * BridgePoint Primitive:
 * <timer_inst_ref_var> = TIM::timer_start(
 *   microseconds:<integer_var>,
 *   event_inst:<event_inst_var> )
 * This bridge starts up an instance of a one-shot xtUML timer.
 *===================================================================*/
.if ( te_tim.keyed_timer_support )
${te_prefix.type}Timer_t
.else
${te_prefix.type}Timer_t *
.end if
TIM_timer_start(
  ${te_eq.base_event_type} * ee_event_inst,
  const ${te_prefix.type}uSec_t ee_microseconds )
{
  /* Insert implementation specific code here.  */
  ETimer_t * t = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
.if ( te_tim.keyed_timer_support )
  ${te_prefix.type}Timer_t result = { t, t->accesskey };
.end if
.if ( te_tim.recurring_timer_support )
  t->recurrence = 0;
.end if
.if ( te_tim.keyed_timer_support )
  return result;
.else
  return (${te_prefix.type}Timer_t *) t;
.end if  
}

/*=====================================================================
 * BridgePoint Primitive:
 * <timer_inst_ref_var> = TIM::timer_start_recurring(
 *   microseconds:<integer_var>,
 *   event_inst:<event_inst_var> )
 * This bridge starts up an instance of a recurring xtUML timer.
 *===================================================================*/
.if ( te_tim.keyed_timer_support )
${te_prefix.type}Timer_t
.else
${te_prefix.type}Timer_t *
.end if
TIM_timer_start_recurring(
  ${te_eq.base_event_type} * ee_event_inst,
  const ${te_prefix.type}uSec_t ee_microseconds )
{
  /* Insert implementation specific code here.  */
.if ( te_tim.recurring_timer_support )
  ETimer_t * t = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
  .if ( te_tim.keyed_timer_support )
  ${te_prefix.type}Timer_t result = { t, t->accesskey };
  t->recurrence = ee_microseconds/USEC_CONVERT;
  return result;
  .else
  t->recurrence = ee_microseconds/USEC_CONVERT;
  return (${te_prefix.type}Timer_t *) t;
  .end if
.else
  .if ( te_tim.keyed_timer_support )
  ${te_prefix.type}Timer_t result = {0, 0};
  return result;
  .else
  return 0;
  .end if
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::timer_remaining_time(
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Return the remaining time of the specified timer.
 *===================================================================*/
${te_prefix.type}uSec_t
TIM_timer_remaining_time(
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  const ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
  ${te_prefix.type}uSec_t rv = 0UL;
  ETimer_t * t;
.if ( te_tim.keyed_timer_support )
  t = ee_timer_inst.timer;
  if ( ( 0 != t ) && ( ee_timer_inst.key == t->accesskey ) ) {
.else
  t = (ETimer_t *) ee_timer_inst_ref;
  if ( 0 != t ) {
.end if
    rv = ETimer_msec_time();
    rv = ( t->expiration > rv ) ? USEC_CONVERT * ( t->expiration - rv ) : 0UL;
  }
  return ( rv );  
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM::timer_reset_time(
 *   microseconds:<integer_var>,
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Try to change expiration of an existing timer.
 * If successful, return true.
 *===================================================================*/
bool
TIM_timer_reset_time(
  const ${te_prefix.type}uSec_t ee_microseconds,
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
  bool rc = false;
  ETimer_t * t;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
.if ( te_tim.keyed_timer_support )
  t = ee_timer_inst.timer;
  if ( ( 0 != t ) && ( ee_timer_inst.key == t->accesskey ) && ( t->expiration > 0UL ) ) {
.else
  t = (ETimer_t *) ee_timer_inst_ref;
  if ( ( 0 != t ) && ( t->expiration > 0UL ) ) {
.end if
.if ( "SystemC" == te_thread.flavor )
    t->expiration = ETimer_msec_time() + ee_microseconds/USEC_CONVERT;
.else
    t->expiration = ETimer_msec_time() + ee_microseconds/USEC_CONVERT + 1UL;
.end if
    rc = timer_find_and_reinsert_sorted( t );
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  return ( rc );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM::timer_add_time(
 *   microseconds:<integer_var>,
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Try to add time to an existing timer.
 * If successful, return true.
 *===================================================================*/
bool
TIM_timer_add_time(
  const ${te_prefix.type}uSec_t ee_microseconds,
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
  bool rc = false;
  ETimer_t * t;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
.if ( te_tim.keyed_timer_support )
  t = ee_timer_inst.timer;
  if ( ( 0 != t ) && ( ee_timer_inst.key == t->accesskey ) && ( t->expiration > 0UL ) ) {
.else
  t = (ETimer_t *) ee_timer_inst_ref;
  if ( ( 0 != t ) && ( t->expiration > 0UL ) ) {
.end if
    t->expiration += ee_microseconds/USEC_CONVERT;
    rc = timer_find_and_reinsert_sorted( t );
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  return ( rc );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM::timer_cancel(
 *   timer_inst_ref:<timer_inst_ref_var> )
 * This attempts to cancel the specified timer.
 * Return true if we actually cancelled the timer.
 *===================================================================*/
bool
TIM_timer_cancel(
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
.if ( te_tim.keyed_timer_support )
  ETimer_t * t = ee_timer_inst.timer;
  bool rc = false;
  if ( ( 0 != t ) && ( ee_timer_inst.key == t->accesskey ) ) {
    rc = timer_cancel( t );
  }
  return ( rc );
.else
  return timer_cancel( (ETimer_t * const) ee_timer_inst_ref );
.end if
}
#endif   /* if ${te_tim.max_timers} > 0 */


/*=====================================================================
 * BridgePoint Primitive:
 * <date_var> = TIM::current_date()
 * Return a variable representing the current calendar date.
 *===================================================================*/
${te_prefix.type}Date_t
TIM_current_date( void )
{
  /* Insert implementation specific code here.  */
  return ( (${te_prefix.type}Date_t) time( 0 ) );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <date_var> = TIM::create_date(
 *   day:<integer_var>,
 *   hour:<integer_var>,
 *   minute:<integer_var>,
 *   month:<integer_var>,
 *   second:<integer_var>,
 *   year:<integer_var> )
 * Return a variable representing the calendar date as specified
 * by the input components.
 *===================================================================*/
${te_prefix.type}Date_t
TIM_create_date(
  const i_t ee_day,
  const i_t ee_hour,
  const i_t ee_minute,
  const i_t ee_month,
  const i_t ee_second,
  const i_t ee_year )
{
  /* Insert implementation specific code here.  */
  ${te_prefix.type}Date_t r = 0;
  struct tm t;
  t.tm_isdst = -1;
  t.tm_mday = ee_day;
  t.tm_hour = ee_hour;
  t.tm_min = ee_minute;
  t.tm_mon = ee_month;
  t.tm_sec = ee_second;
  t.tm_year = ee_year - 1900;      /* not enough space for 100 years */
  r = (${te_prefix.type}Date_t) mktime( &t );
  return ( r );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_second(
 *   date:<integer_var> )
 * Return the second field of the date variable.
 *===================================================================*/
i_t
TIM_get_second(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_sec : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_minute(
 *   date:<integer_var> )
 * Return the minute field of the date variable.
 *===================================================================*/
i_t
TIM_get_minute(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_min : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_hour(
 *   date:<integer_var> )
 * Return the hour field of the date variable.
 *===================================================================*/
i_t
TIM_get_hour(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_hour : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_day(
 *   date:<integer_var> )
 * Return the day field of the date variable.
 *===================================================================*/
i_t
TIM_get_day(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_mday : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_month(
 *   date:<integer_var> )
 * Return the month field of the date variable.
 *===================================================================*/
i_t
TIM_get_month(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_mon : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_year(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM_get_year(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp ) ? tp->tm_year + 1900 : 0;
}

/*=====================================================================
 * BridgePoint Primitive:
 * <timestamp_var> = TIM::current_clock()
 * This bridge returns a system dependent time value.
 *===================================================================*/
${te_prefix.type}TimeStamp_t
TIM_current_clock( void )
{
  /* Insert implementation specific code here.  */
  return ( ETimer_msec_time() );
}


/* Routines below are implementation specific.  Modify to taste.     */


#if ${te_tim.max_timers} > 0



/*---------------------------------------------------------------------
 * Get a timer instance from the inanimate list, provide the
 * expiration time and insert it into its proper location among
 * the currently ticking timers.
 *-------------------------------------------------------------------*/
static ETimer_t *
timer_start(
  const ETimer_time_t duration,
  ${te_eq.base_event_type} * const event
)
{
  ETimer_t * t;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  t = inanimate;
  if ( 0 != t ) {
    inanimate = inanimate->next;
    t->event = event;
    /*---------------------------------------------------------------*/
    /* Calculate the timer expiration time.                          */
  .if ( "SystemC" == te_thread.flavor )
    /*---------------------------------------------------------------*/
    t->expiration = ETimer_msec_time() + duration;
  .else
    /* Note:  Add one to the duration to make sure that delay is     */
    /* at least as long as duration.                                 */
    /*---------------------------------------------------------------*/
    t->expiration = ETimer_msec_time() + duration + 1UL;
  .end if
  .if ( te_tim.keyed_timer_support )
    timer_access_key = timer_access_key + 1 ? timer_access_key + 1 : 1;
    t->accesskey = timer_access_key;
  .end if
    timer_insert_sorted( t );
  .if ( "SystemC" == te_thread.flavor )
    ${te_tim.event_name}->notify( animate->expiration - ETimer_msec_time(), SC_MS );
  .end if
  } else {
    /* no timers left */
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  ${te_thread.nonbusy_wake}( 0 ); /* Wake default task to service timers.  */
  #endif
.end if
  return ( t );
}

/*---------------------------------------------------------------------
 * Insert a timer into the list of ticking timers maintaining
 * an order that fires timers chronologically.
 *-------------------------------------------------------------------*/
static void
timer_insert_sorted(
  ETimer_t * t
)
{
  if ( 0 == animate ) {                              /* empty list   */
    t->next = 0;
    animate = t;
  } else {
    ETimer_time_t poptime = t->expiration;
    if ( poptime <= animate->expiration ) {          /* before head  */
      t->next = animate;
      animate = t;         
    } else {                                         /* find bigger  */
      ETimer_t * prev = animate;
      ETimer_t * cursor;
      while ( ( cursor = prev->next ) != 0 ) {
        if ( poptime <= cursor->expiration ) {
          break;
        }
        prev = cursor;
      }
      prev->next = t;                                /* link in      */
      t->next = cursor;
    }
  }
}

/*---------------------------------------------------------------------
 * Try to find a ticking timer and move to the non-ticking list.
 *-------------------------------------------------------------------*/
static bool
timer_find_and_delete( ETimer_t * const t )
{
  bool rc = false;
  if ( ( 0 != t ) && ( 0 != animate ) ) {
    /*---------------------------------------------------------------*/
    /* Check to see if the timer has already been reset.  This       */
    /* check is probabilistic; it could have a hole if multitasked.  */
    /* We need to try to unlink and see if we actually unlinked.     */
    /* Attempt to remove the timer from the list of running timers.  */
    /* If we succeed, then we can cancel/delete the timer.  If the   */
    /* timer is not in the list, then there is no point in           */
    /* attempting to do any more.                                    */
    /*---------------------------------------------------------------*/
    if ( t == animate ) {
      animate = animate->next;
    } else {
      ETimer_t * prev = animate;
      ETimer_t * cursor;
      while ( ( cursor = prev->next ) != t ) {           /* find */
        if ( 0 == cursor ) {
.if ( te_tim.timer_event_search_and_destroy )
          /* Timer not found.  It must have expired already!  */
          return ( ${te_eq.search_and_destroy}( t->event ) );
.else
          return ( false );
.end if
        }
        prev = cursor;
      }
      prev->next = t->next;                             /* unlink */
    }
    t->expiration = 0; /* in case anyone tries to read the handle */
    .if ( te_tim.keyed_timer_support )
    t->accesskey = 0;
    .end if
    t->next = inanimate;
    inanimate = t;
    rc = true;
  }
  return rc;
}

/*---------------------------------------------------------------------
 * Try to find a ticking timer and re-insert it in the ticking list.
 *-------------------------------------------------------------------*/
static bool
timer_find_and_reinsert_sorted( ETimer_t * const t )
{
  bool rc = false;
  if ( ( 0 != t ) && ( 0 != animate ) ) {
    /*---------------------------------------------------------------*/
    /* Try to find the timer in the list                             */
    /* If found, remove it from the list, and insert it sorted       */
    /*---------------------------------------------------------------*/
    if ( t == animate ) {
      animate = animate->next;
    } else {
      ETimer_t * prev = animate;
      ETimer_t * cursor;
      while ( ( cursor = prev->next ) != t ) {           /* find */
        if ( 0 == cursor ) {
          return ( false );
        }
        prev = cursor;
      }
      prev->next = t->next;                             /* unlink */
    }
    timer_insert_sorted( t );           /* re-insert item in list */
    rc = true;
  }
  return rc;
}

/*---------------------------------------------------------------------
 * Cancel the given timer if possible.
 *-------------------------------------------------------------------*/
static bool
timer_cancel(
  ETimer_t * const t
)
{
  bool rc = false; ${te_eq.base_event_type} * e;
  if ( 0 != t ) {
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  rc = timer_find_and_delete( t );
  e = t->event;
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  if ( true == rc ) {
    if ( 0 != e ) {
      ${te_eq.delete}( e );
    }
  }
  }
  return ( rc );
}


/*---------------------------------------------------------------------
 * Generate delayed event to the application.
 * Deactivate fired timer.
 *-------------------------------------------------------------------*/
static void
timer_fire(
  ETimer_t * const t
)
{
.if ( te_tim.recurring_timer_support )
  t->expiration = ( 0 == t->recurrence ) ? 0 : t->expiration + t->recurrence;
  .if ( te_tim.keyed_timer_support )
  t->accesskey = ( 0 == t->recurrence ) ? 0 : t->accesskey;
  .end if
.else
  t->expiration = 0;              /* Reset and mark inactive.      */
  .if ( te_tim.keyed_timer_support )
  t->accesskey = 0;
  .end if
.end if
  ${te_eq.non_self}( t->event );
.if ( te_tim.recurring_timer_support )
  if ( 0 != t->recurrence ) {
    ${te_eq.base_event_type} * e = ${te_eq.allocate}();
    ${te_string.memmove}( e, t->event, sizeof( ${te_eq.base_event_type} ) );
    t->event = e;
    animate = animate->next;      /* Remove from front of list.    */
    timer_insert_sorted( t );
  } else {
.end if
  t->event = 0;                   /* Be sure event is not reused.  */
  animate = animate->next;        /* Remove from active list.      */
  t->next = inanimate;            /* Connect to inactive list.     */
  inanimate = t;
.if ( te_tim.recurring_timer_support )
  }
.end if
.if ( "SystemC" == te_thread.flavor )
  if ( 0 != animate ) {
    ${te_tim.event_name}->notify( animate->expiration - ETimer_msec_time(), SC_MS );
  }
.end if
}
#endif   /* if ${te_tim.max_timers} > 0 */

/*---------------------------------------------------------------------
 * This is the low level mechanism for monotonically increasing
 * at a constant rate.  Substitute code here to read some
 * sort of hardware timer.
 *-------------------------------------------------------------------*/
static ETimer_time_t
ETimer_msec_time( void )
{
  ETimer_time_t t;
.if ( "SystemC" == te_thread.flavor )
  sc_time t1;
  t1 = sc_time_stamp();
  t = (ETimer_time_t) (t1.to_seconds() * MSEC_CONVERT);
  return ( t - tinit );
.else
  .if ( te_sys.SimulatedTime )
  t = systyme;
  .else
  ftime( &systyme );
  t = ( systyme.time * USEC_CONVERT ) + systyme.millitm;
  .end if
  return ( t - tinit );
.end if

}



.if ( te_thread.enabled )
  .if ( "POSIX" == te_thread.flavor )
/*=====================================================================
 * Return remaining duration in timespec format.
 *===================================================================*/
void *
TIM_duration_until_next_timer_pop( void * ts_in )
{
    .if ( not te_sys.SimulatedTime )
  struct timespec * ts = ( struct timespec * ) ts_in;
#if ${te_tim.max_timers} > 0
  ETimer_time_t t = 0UL;
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  if ( 0 != animate ) {
    t = animate->expiration;
  }
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  if ( 0 == t ) {
    ts = 0;   /* Return zero to indicate no timers ticking.  */
  } else {
    ETimer_time_t tnow = ETimer_msec_time();
    ts->tv_sec = systyme.time;      /* Load current time.  */
    ts->tv_nsec = systyme.millitm;  /* Stay milliseconds for now.  */
    if ( t > tnow ) {
      t -= tnow;
      ts->tv_sec += t / 1000;       /* Add the interval.   */
      ts->tv_nsec += t % 1000;
      if ( ts->tv_nsec >= 1000 ) {
        ts->tv_sec++; ts->tv_nsec -= 1000;
      }
    }
    ts->tv_nsec *= 1000000;         /* Now convert to nanoseconds.  */
  }
#else
  ts = 0;   /* Return zero to indicate no timers (ticking).  */
#endif   /* if ${te_tim.max_timers} > 0 */
  return ts;
    .else
  return 0;
    .end if
}

  .end if
.end if
/*---------------------------------------------------------------------
 * Initialize the tick mechanism and the timer instances.
 *-------------------------------------------------------------------*/
void
TIM_init(\
.if ( "SystemC" == te_thread.flavor )
 sc_event * sc_e\
.else
 void\
.end if
 )
{
#if ${te_tim.max_timers} > 0
  u2_t i;
  /*-----------------------------------------------------------------*/
  /* Build the collection (linked list) of timers.                   */
  /*-----------------------------------------------------------------*/
  animate = 0; inanimate = 0;
.if ( "SystemC" == te_thread.flavor )
  ${te_tim.event_name} = sc_e;
.end if
  for ( i = 0; i < ${te_tim.max_timers}; i++ ) {
    swtimers[ i ].expiration = 0;
.if ( te_tim.recurring_timer_support )
    swtimers[ i ].recurrence = 0;
.end if
    swtimers[ i ].event = 0;
    swtimers[ i ].next = inanimate;
    .if ( te_tim.keyed_timer_support )
    swtimers[ i ].accesskey = 0;
    .end if
    inanimate = &swtimers[ i ];
  }
#endif   /* if ${te_tim.max_timers} > 0 */
.if ( "SystemC" == te_thread.flavor )
  ftime( &systyme );            /* Initialize the hardware ticker.   */
  tinit = 0;
.else
  .if ( te_sys.SimulatedTime )
  systyme = 0;                  /* Initialize the hardware ticker.   */
  tinit = 0;
  .else
  ftime( &systyme );            /* Initialize the hardware ticker.   */
  tinit = ( systyme.time * USEC_CONVERT ) + systyme.millitm;
  .end if
.end if
}

/*---------------------------------------------------------------------
 * This is the repetitively invoked timer poller.
 * This routine needs to be run periodically.
 *-------------------------------------------------------------------*/
void
TIM_tick( void )
{
#if ${te_tim.max_timers} > 0
  /*-----------------------------------------------------------------*/
  /* Check to see if there are timers in the ticking timers list.    */
  /*-----------------------------------------------------------------*/
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
.if ( te_sys.SimulatedTime )
  if ( 0 != animate ) {
    systyme = animate->expiration;
    timer_fire( animate );
.else
  while ( 0 != animate ) {
    if ( animate->expiration <= ETimer_msec_time() ) {
      timer_fire( animate );
    } else {
      break;
    }
.end if
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
#endif   /* if ${te_tim.max_timers} > 0 */
}

#ifdef USED_TO_ALLOW_PAUSING
/*---------------------------------------------------------------------
 * Pause the tick mechanism such that all timers simply freeze
 * and do not advance toward expiration.  This is used for debug.
 * Record the system time when pause begins.
 *-------------------------------------------------------------------*/
void
TIM_pause( void )
{
  #if ${te_tim.max_timers} > 0
  paused = true;
  start_of_pause = ETimer_msec_time();
  #endif   /* if ${te_tim.max_timers} > 0 */
}

/*---------------------------------------------------------------------
 * Resume the tick mechanism.  Update the expiration time for all
 * ticking timers.
 *-------------------------------------------------------------------*/
void
TIM_resume( void )
{
  #if ${te_tim.max_timers} > 0
  ETimer_t * cursor = animate;
  ETimer_time_t t;      /* difference between now and start of pause */
  t = ETimer_msec_time() - start_of_pause;
  while ( 0 != cursor ) {
    cursor->expiration += t;
    cursor = cursor->next;
  }
  paused = false;
  #endif   /* if ${te_tim.max_timers} > 0 */
}
#endif
.//
