/*----------------------------------------------------------------------------
 * File:  keypad_TEST_class.h
 *
 * Class:       tests  (TEST)
 * Component:   keypad
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef KEYPAD_TEST_CLASS_H
#define KEYPAD_TEST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   tests  (TEST)
 */
struct keypad_TEST {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t i;  /* - i */
};



#define keypad_TEST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_keypad_TEST_extent;


/*
 * enumeration of state model states for class
 */
#define keypad_TEST_STATE_1 1  /* state [1]:  (one) */
/* note:  no events defined in state model */
extern void keypad_TEST_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* KEYPAD_TEST_CLASS_H */
