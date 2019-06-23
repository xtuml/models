/*----------------------------------------------------------------------------
 * File:  polycalc_FRUIT_class.h
 *
 * Class:       fruit  (FRUIT)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_FRUIT_CLASS_H
#define POLYCALC_FRUIT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   fruit  (FRUIT)
 */
struct polycalc_FRUIT {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t level_of_vitC;  /* - level_of_vitC */
  /* relationship storage */
  void * R3_subtype;
  Escher_ClassNumber_t R3_object_id;
};


/* Accessors to FRUIT[R3] subtypes */
#define polycalc_ORANGE_R3_From_FRUIT( FRUIT ) \
   ( (((FRUIT)->R3_object_id) == polycalc_ORANGE_CLASS_NUMBER) ? \
     ((polycalc_ORANGE *)((FRUIT)->R3_subtype)) : (0) )
#define polycalc_TOMATO_R3_From_FRUIT( FRUIT ) \
   ( (((FRUIT)->R3_object_id) == polycalc_TOMATO_CLASS_NUMBER) ? \
     ((polycalc_TOMATO *)((FRUIT)->R3_subtype)) : (0) )


#define polycalc_FRUIT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_FRUIT_extent;

/*
 * instance event:  FRUIT1:'juice'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_FRUITevent1;
extern const Escher_xtUMLEventConstant_t polycalc_FRUITevent1c;
/*
 * instance event:  FRUIT2:'juiced'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_percentage; /* percentage */
} polycalc_FRUITevent2;
extern const Escher_xtUMLEventConstant_t polycalc_FRUITevent2c;
/*
 * instance event:  FRUIT3:'localdummy'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * union of events targeted towards 'FRUIT' state machine
 */
typedef union {
  polycalc_FRUITevent1 fruit1_1;  /* polymorphic event - not consumed by FRUIT */
  polycalc_FRUITevent2 fruit2_2;  
} polycalc_FRUIT_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_FRUIT_STATE_1 1  /* state [1]:  (squeezing) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_FRUITEVENT2NUM 0  /* FRUIT2:'juiced' */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_FRUITEVENT1NUM 1  /* FRUIT1:'juice' */
extern void polycalc_FRUIT_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_FRUIT_R3PolymorphicEvent( const polycalc_FRUIT * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_FRUIT_CLASS_H */
