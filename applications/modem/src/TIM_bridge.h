/*----------------------------------------------------------------------------
 * File:  TIM_bridge.h
 *
 * Description:
 * This file provides a insulation layer between the BridgePoint built-in
 * External Enity 'Time' (Key Letters: TIM) and the underlying implementation.
 *
 * xtUML Timer methods:
 * Note that in the software architecture there will be a (finite but
 * indeterminate) delay between the expiration of a timer and the delivery
 * of the associated event to the receiving state machine.
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TIM_BRIDGE_H
#define TIM_BRIDGE_H

#include <sys/timeb.h>
#include <time.h>
/*---------------------------------------------------------------------
 * Timer "Object" Structure Declaration
 *    [next] is the mechanism used to collect and sequence timers.
 *    Timer instances are strung together in an active (animate)
 *    list and an inactive (inanimate) list.  The next pointer
 *    provides the "hole for the beads".
 *    [expiration] is the system clock time at which this
 *    timer will pop.
 *    [recurrence] is the repeating expiration duration
 *    [event] is the handle of the event that the timer will
 *    generate upon expiration.
 *-------------------------------------------------------------------*/
typedef struct ETimer_s ETimer_t;
struct ETimer_s {
  ETimer_t * next;
  ETimer_time_t expiration;
  ETimer_time_t recurrence;
  Escher_xtUMLEvent_t * event;
  u4_t accesskey;
};

class TIM {
  public:
    TIM( i_t number_of_timers ) { timer_count = number_of_timers; swtimers = new ETimer_t[ number_of_timers ]; };

/*
 * Bridge method to create an analysis specific date instance.
 */
Escher_Date_t create_date(
  const i_t, const i_t, const i_t, const i_t, const i_t, const i_t );

/*
 * Bridge method to get the current date.
 */
Escher_Date_t current_date( void );

/*
 * Bridge methods to get time piece components of a given date.
 */
i_t get_year   ( const Escher_Date_t );
i_t get_month  ( const Escher_Date_t );
i_t get_day    ( const Escher_Date_t );
i_t get_hour   ( const Escher_Date_t );
i_t get_minute ( const Escher_Date_t );
i_t get_second ( const Escher_Date_t );

/*
 * Bridge method to get the current clock.
 */
Escher_TimeStamp_t current_clock( void );

/*
 * Starts a (one shot) timer to expire in <expression> microseconds,
 * sending the event instance <event> upon expiration.
 * Note that upon expiration the timer will be (automatically) deleted.
 * Returns the instance handle of the non-recurring timer.
 */
Escher_Timer_t * timer_start( Escher_xtUMLEvent_t *, const Escher_uSec_t );

/*
 * Starts a (recurring) timer to expire in <expression> microseconds,
 * sending the event instance <event> upon expiration.
 * Upon expiration, the timer will be restarted and fire again in
 * <expression> microseconds and (re)generate the event <event>.
 * Returns the instance handle of the recurring timer.
 */
Escher_Timer_t * timer_start_recurring( Escher_xtUMLEvent_t *, const Escher_uSec_t );

/*
 * Returns the time remaining (in microseconds) before the timer
 * specified by <timer> will expire.  If <timer> no longer exists,
 * a zero value will be returned.  It is important to note that even
 * if <timer> no longer exists, a <event> may still be in
 * transit (e.g., was generated) from a previous <timer> expiration.
 * Respectable analysis must account for this "ships passing" possibility.
 */
Escher_uSec_t timer_remaining_time( const Escher_Timer_t * const );

/*
 * This method attempts to set an existing timer handle <timer> to expire
 * in <expression> microseconds.  If the timer exists (e.g, it has not
 * already expired), a 'true' value is returned.  If the timer no longer
 * exists, a 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
bool timer_reset_time( const Escher_uSec_t,
                                  Escher_Timer_t * const );

/*
 * This method attempts to add <expression> microseconds to the
 * timer handle <timer>.  If the timer exists (e.g, it has not
 * already expired), a 'true' value is returned.  If the timer no longer
 * exists, a 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
bool timer_add_time( const Escher_uSec_t,
                                Escher_Timer_t * const );

/*
 * This method attempts to cancel and delete the timer handle specified
 * by <timer>.  If the timer still exists (e.g, it has not already
 * expired), a 'true' value is returned.  If the timer no longer exists,
 * 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
bool timer_cancel( Escher_Timer_t * const );

/*
 * This provides a periodic tick to give the timer subsystem the
 * opportunity to check for expired timers and fire them and their
 * respective delayed events.  Calling this routine as often as possible
 * increases the accuracy and resolution of the delayed event timers.  One
 * appropriate place to make this call is from UserBackgroundProcessingCallout
 * found among the system callout routines.
 */
void tick( void );

/*
 * This routine is used by some tasking implementation to get a value
 * to load into a timed wait.
 */
void * duration_until_next_timer_pop( void * );

/*
 * This method initializes the timer subsystem.  It must be called
 * during system bring-up.  An appropriate place to make this call
 * is from UserPreOoaInitializationCallout.
 */
void init( sc_event * );

/*
 * Pause all ticking timers.  This is useful during debugging.  It
 * allows timers to freeze during stepping and debug interfacing.
 */
void pause( void );

/*
 * Resume all ticking timers.  This is useful during debugging.  It
 * allows timers to freeze during stepping and debug interfacing.
 * Ticking timers will have their expirations adjusted, and ticker
 * will continue ticking.
 */
void resume( void );

private:
#ifdef USED_TO_ALLOW_PAUSING
ETimer_time_t start_of_pause;
bool paused;
#endif
ETimer_time_t tinit;
struct timeb systyme;
i_t timer_count;
ETimer_t * swtimers;
ETimer_t * animate, * inanimate;
sc_event * sc_xtuml_timer_event; // pointing to the sc_event in the parent module

void timer_insert_sorted( ETimer_t * );
void timer_fire( ETimer_t * const );
ETimer_t *start( const ETimer_time_t, Escher_xtUMLEvent_t * const );
bool cancel( ETimer_t * const );
bool timer_find_and_delete( ETimer_t * const );
ETimer_time_t ETimer_msec_time( void );

};


#endif   /* TIM_BRIDGE_H */
