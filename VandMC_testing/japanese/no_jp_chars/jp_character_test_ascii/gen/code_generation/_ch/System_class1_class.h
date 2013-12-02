/*----------------------------------------------------------------------------
 * File:  System_class1_class.h
 *
 * Class:       class1  (class1)
 * Component:   System
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SYSTEM_CLASS1_CLASS_H
#define SYSTEM_CLASS1_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   class1  (class1)
 */
struct System_class1 {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t number;  /* - number */

};



#define System_class1_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_System_class1_extent;

/*
 * instance event:  class11:'count'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  class12:'reset'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define System_class1_STATE_1 1  /* state [1]:  (one) */
#define System_class1_STATE_2 2  /* state [2]:  (two) */
#define System_class1_STATE_3 3  /* state [3]:  (three) */
/*
 * enumeration of state model event numbers
 */
extern void System_class1_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* SYSTEM_CLASS1_CLASS_H */


