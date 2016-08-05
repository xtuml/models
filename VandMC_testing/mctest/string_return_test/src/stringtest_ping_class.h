/*----------------------------------------------------------------------------
 * File:  stringtest_ping_class.h
 *
 * Class:       ping  (ping)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_PING_CLASS_H
#define STRINGTEST_PING_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   ping  (ping)
 */
struct stringtest_ping {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

};



#define stringtest_ping_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_ping_extent;

/*
 * instance event:  ping1:'bounce'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_pong * p_p; /* p */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_pingevent1;
extern const Escher_xtUMLEventConstant_t stringtest_pingevent1c;

/*
 * union of events targeted towards 'ping' state machine
 */
typedef union {
  stringtest_pingevent1 ping1_1;  
} stringtest_ping_Events_u;

/*
 * enumeration of state model states for class
 */
#define stringtest_ping_STATE_1 1  /* state [1]:  (pinging) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_PINGEVENT1NUM 0  /* ping1:'bounce' */
extern void stringtest_ping_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_PING_CLASS_H */


