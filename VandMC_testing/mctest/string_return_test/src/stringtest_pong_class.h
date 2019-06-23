/*----------------------------------------------------------------------------
 * File:  stringtest_pong_class.h
 *
 * Class:       pong  (pong)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_PONG_CLASS_H
#define STRINGTEST_PONG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   pong  (pong)
 */
struct stringtest_pong {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
};



#define stringtest_pong_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_pong_extent;

/*
 * instance event:  pong1:'fly'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_ping * p_p; /* p */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_pongevent1;
extern const Escher_xtUMLEventConstant_t stringtest_pongevent1c;
/*
 * union of events targeted towards 'pong' state machine
 */
typedef union {
  stringtest_pongevent1 pong1_1;  
} stringtest_pong_Events_u;
/*
 * enumeration of state model states for class
 */
#define stringtest_pong_STATE_1 1  /* state [1]:  (ponging) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_PONGEVENT1NUM 0  /* pong1:'fly' */
extern void stringtest_pong_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_PONG_CLASS_H */
