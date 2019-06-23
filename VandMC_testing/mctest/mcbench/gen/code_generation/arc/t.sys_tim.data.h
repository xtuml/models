/*---------------------------------------------------------------------
 * Timer "Object" Structure Declaration
 *    [next] is the mechanism used to collect and sequence timers.
 *    Timer instances are strung together in an active (animate)
 *    list and an inactive (inanimate) list.  The next pointer
 *    provides the "hole for the beads".
 *    [expiration] is the system clock time at which this
 *    timer will pop.
.if ( te_tim.recurring_timer_support )
 *    [recurrence] is the repeating expiration duration
.end if
 *    [event] is the handle of the event that the timer will
 *    generate upon expiration.
.if ( te_tim.keyed_timer_support )
 *    [accesskey] is the unique serial number for this timer allocation
.end if
 *-------------------------------------------------------------------*/
typedef struct ETimer_s ${te_tim.internal_type};
struct ETimer_s {
  ${te_tim.internal_type} * next;
  ETimer_time_t expiration;
.if ( te_tim.recurring_timer_support )
  ETimer_time_t recurrence;
.end if
  ${te_eq.base_event_type} * event;
.if ( te_tim.keyed_timer_support )
  u4_t accesskey;
.end if
};
