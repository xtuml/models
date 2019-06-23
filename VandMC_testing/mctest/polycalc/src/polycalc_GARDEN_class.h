/*----------------------------------------------------------------------------
 * File:  polycalc_GARDEN_class.h
 *
 * Class:       garden  (GARDEN)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_GARDEN_CLASS_H
#define POLYCALC_GARDEN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   garden  (GARDEN)
 */
struct polycalc_GARDEN {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t percentage;  /* - percentage */
  /* relationship storage */
  polycalc_PUZZLE * PUZZLE_R2;
};

void polycalc_GARDEN_R2_Link( polycalc_PUZZLE *, polycalc_GARDEN * );
void polycalc_GARDEN_R2_Unlink( polycalc_PUZZLE *, polycalc_GARDEN * );

#define polycalc_GARDEN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_GARDEN_extent;

/*
 * instance event:  GARDEN1:'done'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  PUZZLE1*:'solve'
 * Note:  Event is mapped from polymorphic event PUZZLE::PUZZLE1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_GARDENevent_PUZZLE_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_GARDENevent_PUZZLE_PE1c;
/*
 * instance event:  PUZZLE2*:'done'
 * Note:  Event is mapped from polymorphic event PUZZLE::PUZZLE2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_value; /* value */
} polycalc_GARDENevent_PUZZLE_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_GARDENevent_PUZZLE_PE2c;
/*
 * union of events targeted towards 'GARDEN' state machine
 */
typedef union {
  polycalc_GARDENevent_PUZZLE_PE1 garden1_1;  
  polycalc_GARDENevent_PUZZLE_PE2 garden2_2;  
} polycalc_GARDEN_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_GARDEN_STATE_1 1  /* state [1]:  (juicing the orange) */
#define polycalc_GARDEN_STATE_2 2  /* state [2]:  (juicing the tomato) */
#define polycalc_GARDEN_STATE_3 3  /* state [3]:  (growing the tomato) */
#define polycalc_GARDEN_STATE_4 4  /* state [4]:  (growing the carrot) */
#define polycalc_GARDEN_STATE_5 5  /* state [5]:  (done) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_GARDENEVENT_PUZZLE_PE2NUM 0  /* PUZZLE2*:'done' */
#define POLYCALC_GARDENEVENT_PUZZLE_PE1NUM 1  /* PUZZLE1*:'solve' */
extern void polycalc_GARDEN_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_GARDEN_CLASS_H */
