/*----------------------------------------------------------------------------
 * File:  stringtest_host_class.h
 *
 * Class:       host  (host)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_HOST_CLASS_H
#define STRINGTEST_HOST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   host  (host)
 */
struct stringtest_host {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t upper[ESCHER_SYS_MAX_STRING_LEN];  /* - upper */
  /* relationship storage */
  /* Note:  No storage needed for host->buffer[R1] */
};
c_t * stringtest_host_op_rstr( stringtest_host *, c_t[ESCHER_SYS_MAX_STRING_LEN] );


#define stringtest_host_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_host_extent;

/*
 * instance event:  host1:'get'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_device * p_d; /* d */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_hostevent1;
extern const Escher_xtUMLEventConstant_t stringtest_hostevent1c;
/*
 * instance event:  host2:'put'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_device * p_d; /* d */
  c_t p_s[ESCHER_SYS_MAX_STRING_LEN]; /* s */
} stringtest_hostevent2;
extern const Escher_xtUMLEventConstant_t stringtest_hostevent2c;
/*
 * union of events targeted towards 'host' state machine
 */
typedef union {
  stringtest_hostevent1 host1_1;  
  stringtest_hostevent2 host2_2;  
} stringtest_host_Events_u;
/*
 * enumeration of state model states for class
 */
#define stringtest_host_STATE_1 1  /* state [1]:  (sending) */
#define stringtest_host_STATE_2 2  /* state [2]:  (receiving) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_HOSTEVENT1NUM 0  /* host1:'get' */
#define STRINGTEST_HOSTEVENT2NUM 1  /* host2:'put' */
extern void stringtest_host_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_HOST_CLASS_H */
