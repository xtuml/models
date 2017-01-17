/*----------------------------------------------------------------------------
 * File:  ARM_training_class.h
 *
 * Class:       training  (training)
 * Component:   ARM
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef ARM_TRAINING_CLASS_H
#define ARM_TRAINING_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   training  (training)
 */
struct ARM_training {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

};



#define ARM_training_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ARM_training_extent;


/* WARNING! No states defined for state model */
/* note:  no events defined in state model */
extern void ARM_training_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* ARM_TRAINING_CLASS_H */


