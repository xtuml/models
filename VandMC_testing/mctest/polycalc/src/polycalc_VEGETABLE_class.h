/*----------------------------------------------------------------------------
 * File:  polycalc_VEGETABLE_class.h
 *
 * Class:       vegetable  (VEGETABLE)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_VEGETABLE_CLASS_H
#define POLYCALC_VEGETABLE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   vegetable  (VEGETABLE)
 */
struct polycalc_VEGETABLE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  bool peelable;  /* - peelable */
  /* relationship storage */
  void * R4_subtype;
  Escher_ClassNumber_t R4_object_id;
};


/* Accessors to VEGETABLE[R4] subtypes */
#define polycalc_TOMATO_R4_From_VEGETABLE( VEGETABLE ) \
   ( (((VEGETABLE)->R4_object_id) == polycalc_TOMATO_CLASS_NUMBER) ? \
     ((polycalc_TOMATO *)((VEGETABLE)->R4_subtype)) : (0) )
#define polycalc_CARROT_R4_From_VEGETABLE( VEGETABLE ) \
   ( (((VEGETABLE)->R4_object_id) == polycalc_CARROT_CLASS_NUMBER) ? \
     ((polycalc_CARROT *)((VEGETABLE)->R4_subtype)) : (0) )


#define polycalc_VEGETABLE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_VEGETABLE_extent;

/*
 * instance event:  VEGETABLE1:'grow'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_VEGETABLEevent1;
extern const Escher_xtUMLEventConstant_t polycalc_VEGETABLEevent1c;
/*
 * instance event:  VEGETABLE2:'grown'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_height; /* height */
} polycalc_VEGETABLEevent2;
extern const Escher_xtUMLEventConstant_t polycalc_VEGETABLEevent2c;
/*
 * union of events targeted towards 'VEGETABLE' state machine
 */
typedef union {
  polycalc_VEGETABLEevent1 vegetable1_1;  /* polymorphic event - not consumed by VEGETABLE */
  polycalc_VEGETABLEevent2 vegetable2_2;  
} polycalc_VEGETABLE_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_VEGETABLE_STATE_1 1  /* state [1]:  (planting) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_VEGETABLEEVENT2NUM 0  /* VEGETABLE2:'grown' */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_VEGETABLEEVENT1NUM 1  /* VEGETABLE1:'grow' */
extern void polycalc_VEGETABLE_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_VEGETABLE_R4PolymorphicEvent( const polycalc_VEGETABLE * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_VEGETABLE_CLASS_H */
