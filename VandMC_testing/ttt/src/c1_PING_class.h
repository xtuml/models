/*----------------------------------------------------------------------------
 * File:  c1_PING_class.h
 *
 * Class:       ping  (PING)
 * Component:   c1
 *
 * 
 *--------------------------------------------------------------------------*/

#ifndef C1_PING_CLASS_H
#define C1_PING_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   ping  (PING)
 */
struct c1_PING {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t i;  /* - i */

  /* relationship storage */
  c1_PONG * PONG_R1;
};

void c1_PING_R1_Link( c1_PONG *, c1_PING * );
/* Note:  PONG<-R1->PING unrelate accessor not needed */


#define c1_PING_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_c1_PING_extent;

/*
 * instance event:  PING1:'hit'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} c1_PINGevent1;
extern const Escher_xtUMLEventConstant_t c1_PINGevent1c;

/*
 * union of events targeted towards 'PING' state machine
 */
typedef union {
  c1_PINGevent1 ping11;  
} c1_PING_Events_u;

/*
 * enumeration of state model states for class
 */
#define c1_PING_STATE_1 1  /* state [1]:  (ping one) */
#define c1_PING_STATE_2 2  /* state [2]:  (ping two) */
/*
 * enumeration of state model event numbers
 */
#define C1_PINGEVENT1NUM 0  /* PING1:'hit' */
extern void c1_PING_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* C1_PING_CLASS_H */


