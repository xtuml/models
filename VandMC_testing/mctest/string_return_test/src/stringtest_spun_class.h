/*----------------------------------------------------------------------------
 * File:  stringtest_spun_class.h
 *
 * Class:       spun  (spun)
 * Component:   stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef STRINGTEST_SPUN_CLASS_H
#define STRINGTEST_SPUN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   spun  (spun)
 */
struct stringtest_spun {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

};



#define stringtest_spun_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_stringtest_spun_extent;

/*
 * instance event:  spun1:'spun'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  stringtest_spin * p_spin; /* spin */
} stringtest_spunevent1;
extern const Escher_xtUMLEventConstant_t stringtest_spunevent1c;

/*
 * union of events targeted towards 'spun' state machine
 */
typedef union {
  stringtest_spunevent1 spun11;  
} stringtest_spun_Events_u;

/*
 * enumeration of state model states for class
 */
#define stringtest_spun_STATE_1 1  /* state [1]:  (spunning) */
/*
 * enumeration of state model event numbers
 */
#define STRINGTEST_SPUNEVENT1NUM 0  /* spun1:'spun' */
extern void stringtest_spun_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* STRINGTEST_SPUN_CLASS_H */


