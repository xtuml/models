/*----------------------------------------------------------------------------
 * File:  polycalc_PUZZLE_class.h
 *
 * Class:       puzzle  (PUZZLE)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_PUZZLE_CLASS_H
#define POLYCALC_PUZZLE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   puzzle  (PUZZLE)
 */
struct polycalc_PUZZLE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  void * R2_subtype;
  Escher_ClassNumber_t R2_object_id;
};


/* Accessors to PUZZLE[R2] subtypes */
#define polycalc_GENERAL_R2_From_PUZZLE( PUZZLE ) \
   ( (((PUZZLE)->R2_object_id) == polycalc_GENERAL_CLASS_NUMBER) ? \
     ((polycalc_GENERAL *)((PUZZLE)->R2_subtype)) : (0) )
#define polycalc_GARDEN_R2_From_PUZZLE( PUZZLE ) \
   ( (((PUZZLE)->R2_object_id) == polycalc_GARDEN_CLASS_NUMBER) ? \
     ((polycalc_GARDEN *)((PUZZLE)->R2_subtype)) : (0) )



#define polycalc_PUZZLE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_PUZZLE_extent;

/*
 * class-based event:  PUZZLE_A1:'start'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_PUZZLE_CBevent1;
extern const Escher_xtUMLEventConstant_t polycalc_PUZZLE_CBevent1c;

/*
 * class-based event:  PUZZLE_A2:'passed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_number; /* number */
} polycalc_PUZZLE_CBevent2;
extern const Escher_xtUMLEventConstant_t polycalc_PUZZLE_CBevent2c;

/*
 * union of events targeted towards 'PUZZLE' state machine
 */
typedef union {
  polycalc_PUZZLE_CBevent1 puzzle11;  
  polycalc_PUZZLE_CBevent2 puzzle22;  
} polycalc_PUZZLE_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_PUZZLE_CB_STATE_1 1  /* state [1]:  (test1) */
#define polycalc_PUZZLE_CB_STATE_2 2  /* state [2]:  (done) */
#define polycalc_PUZZLE_CB_STATE_3 3  /* state [3]:  (same again) */
#define polycalc_PUZZLE_CB_STATE_4 4  /* state [4]:  (test2gardening) */
#define polycalc_PUZZLE_CB_STATE_5 5  /* state [5]:  (gardening1) */
#define polycalc_PUZZLE_CB_STATE_6 6  /* state [6]:  (gardening2) */
#define polycalc_PUZZLE_CB_STATE_7 7  /* state [7]:  (done with test2) */

/*
 * enumeration of state model event numbers
 */
#define POLYCALC_PUZZLE_CBEVENT1NUM 0  /* PUZZLE_A1:'start' */
#define POLYCALC_PUZZLE_CBEVENT2NUM 1  /* PUZZLE_A2:'passed' */

extern void polycalc_PUZZLE_CBDispatch( Escher_xtUMLEvent_t * );


/*
 * instance event:  PUZZLE1:'solve'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_PUZZLEevent1;
extern const Escher_xtUMLEventConstant_t polycalc_PUZZLEevent1c;

/*
 * instance event:  PUZZLE2:'done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_value; /* value */
} polycalc_PUZZLEevent2;
extern const Escher_xtUMLEventConstant_t polycalc_PUZZLEevent2c;

/*
 * instance event:  PUZZLE3:'finished'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * union of events targeted towards 'PUZZLE' state machine
 */
typedef union {
  polycalc_PUZZLEevent1 puzzle11;  /* polymorphic event - not consumed by PUZZLE */
  polycalc_PUZZLEevent2 puzzle22;  /* polymorphic event - not consumed by PUZZLE */
} polycalc_PUZZLE_Events_u;

/* WARNING! No states defined for state model */
/*
 * enumeration of state model event numbers
 */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_PUZZLEEVENT1NUM 0  /* PUZZLE1:'solve' */
#define POLYCALC_PUZZLEEVENT2NUM 1  /* PUZZLE2:'done' */
extern void polycalc_PUZZLE_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_PUZZLE_R2PolymorphicEvent( const polycalc_PUZZLE * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_PUZZLE_CLASS_H */


