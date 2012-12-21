/*----------------------------------------------------------------------------
 * File:  polycalc_PORTAL_class.h
 *
 * Class:       portal  (PORTAL)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_PORTAL_CLASS_H
#define POLYCALC_PORTAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   portal  (PORTAL)
 */
struct polycalc_PORTAL {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */

  /* relationship storage */
  void * R300_subtype;
  Escher_ClassNumber_t R300_object_id;
};
void polycalc_PORTAL_op_dispose( polycalc_PORTAL * );


/* Accessors to PORTAL[R300] subtypes */
#define polycalc_LOCATION_R300_From_PORTAL( PORTAL ) \
   ( (((PORTAL)->R300_object_id) == polycalc_LOCATION_CLASS_NUMBER) ? \
     ((polycalc_LOCATION *)((PORTAL)->R300_subtype)) : (0) )



#define polycalc_PORTAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_PORTAL_extent;

/*
 * instance event:  PORTAL1:'remove'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_PORTALevent1;
extern const Escher_xtUMLEventConstant_t polycalc_PORTALevent1c;

/*
 * instance event:  PORTAL2:'removed'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_PORTALevent2;
extern const Escher_xtUMLEventConstant_t polycalc_PORTALevent2c;

/*
 * union of events targeted towards 'PORTAL' state machine
 */
typedef union {
  polycalc_PORTALevent1 portal11;  /* polymorphic event - not consumed by PORTAL */
  polycalc_PORTALevent2 portal22;  
} polycalc_PORTAL_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_PORTAL_STATE_1 1  /* state [1]:  (removed) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_PORTALEVENT2NUM 0  /* PORTAL2:'removed' */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_PORTALEVENT1NUM 1  /* PORTAL1:'remove' */
extern void polycalc_PORTAL_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_PORTAL_R300PolymorphicEvent( const polycalc_PORTAL * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_PORTAL_CLASS_H */


