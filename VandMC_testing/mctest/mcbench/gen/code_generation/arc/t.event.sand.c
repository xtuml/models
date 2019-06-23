.if ( te_tim.timer_event_search_and_destroy )

/*
 * Try to find an event and remove it from the queue.  Dangerous!
 * This feature is only reasonable in a single thread.
 */
bool
${te_eq.search_and_destroy}( ${te_eq.base_event_type} * event )
{
  bool rc = false;
  OoaEventQueue_t * q = &non_self_event_queue[ 0 ];
  /* Assign the event from the head of the queue.  */
  if ( ( event != 0 ) && ( q->head != 0 ) ) {
    if ( event == q->head ) {
      q->head = q->head->next;                          /* unlink */
      if ( 0 == q->head ) {
        q->tail = 0;
      }
    } else {
      ${te_eq.base_event_type} * prev = q->head;
      ${te_eq.base_event_type} * cursor;
      while ( ( cursor = prev->next ) != event ) {      /* find */
        if ( cursor == 0 ) {
          return ( false );
        }
        prev = cursor;
      }
      prev->next = event->next;                         /* unlink */
      if ( cursor == q->head ) {
        q->tail = prev;
      }
    }
    rc = true;
  }
  return rc;
}
.end if
.//
