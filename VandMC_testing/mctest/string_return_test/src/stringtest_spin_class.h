/*----------------------------------------------------------------------------
 * File:  stringtest_spin_class.h
 *
 * Class:       spin  (spin)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_SPIN_CLASS_H
#define STRINGTEST_SPIN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   spin  (spin)
 */
struct stringtest_spin {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

};



#define stringtest_spin_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_spin_extent;

/*
 * instance event:  spin1:'spin'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_spun * p_spun; /* spun */
} stringtest_spinevent1;
extern const Escher_xtUMLEventConstant_t stringtest_spinevent1c;

/*
 * union of events targeted towards 'spin' state machine
 */
typedef union {
  stringtest_spinevent1 spin11;  
} stringtest_spin_Events_u;

/*
 * enumeration of state model states for class
 */
#define stringtest_spin_STATE_1 1  /* state [1]:  (spinning) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_SPINEVENT1NUM 0  /* spin1:'spin' */
extern void stringtest_spin_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_SPIN_CLASS_H */


