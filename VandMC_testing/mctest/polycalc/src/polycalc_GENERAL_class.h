/*----------------------------------------------------------------------------
 * File:  polycalc_GENERAL_class.h
 *
 * Class:       general  (GENERAL)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_GENERAL_CLASS_H
#define POLYCALC_GENERAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   general  (GENERAL)
 */
struct polycalc_GENERAL {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t accumulator;  /* - accumulator */
  /* relationship storage */
  polycalc_PUZZLE * PUZZLE_R2;
};

void polycalc_GENERAL_R2_Link( polycalc_PUZZLE *, polycalc_GENERAL * );
void polycalc_GENERAL_R2_Unlink( polycalc_PUZZLE *, polycalc_GENERAL * );

#define polycalc_GENERAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_GENERAL_extent;

/*
 * instance event:  PUZZLE1*:'solve'
 * Note:  Event is mapped from polymorphic event PUZZLE::PUZZLE1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_GENERALevent_PUZZLE_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_GENERALevent_PUZZLE_PE1c;
/*
 * instance event:  GENERAL2:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_GENERALevent2;
extern const Escher_xtUMLEventConstant_t polycalc_GENERALevent2c;
/*
 * instance event:  PUZZLE2*:'done'
 * Note:  Event is mapped from polymorphic event PUZZLE::PUZZLE2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_value; /* value */
} polycalc_GENERALevent_PUZZLE_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_GENERALevent_PUZZLE_PE2c;
/*
 * union of events targeted towards 'GENERAL' state machine
 */
typedef union {
  polycalc_GENERALevent_PUZZLE_PE1 general1_1;  
  polycalc_GENERALevent2 general2_2;  
  polycalc_GENERALevent_PUZZLE_PE2 general2_3;  
} polycalc_GENERAL_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_GENERAL_STATE_1 1  /* state [1]:  (adding) */
#define polycalc_GENERAL_STATE_2 2  /* state [2]:  (subtracting) */
#define polycalc_GENERAL_STATE_3 3  /* state [3]:  (multiplying) */
#define polycalc_GENERAL_STATE_4 4  /* state [4]:  (dividing) */
#define polycalc_GENERAL_STATE_5 5  /* state [5]:  (logging result) */
#define polycalc_GENERAL_STATE_6 6  /* state [6]:  (finished) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_GENERALEVENT2NUM 0  /* GENERAL2:'go' */
#define POLYCALC_GENERALEVENT_PUZZLE_PE2NUM 1  /* PUZZLE2*:'done' */
#define POLYCALC_GENERALEVENT_PUZZLE_PE1NUM 2  /* PUZZLE1*:'solve' */
extern void polycalc_GENERAL_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_GENERAL_CLASS_H */
