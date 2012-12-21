/*----------------------------------------------------------------------------
 * File:  polycalc_CD_class.h
 *
 * Class:       compact disc drive  (CD)
 * Component:   polycalc
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_CD_CLASS_H
#define POLYCALC_CD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   compact disc drive  (CD)
 */
struct polycalc_CD {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  bool rewritable;  /* - rewritable */

  /* relationship storage */
  polycalc_DRIVE * DRIVE_R200;
};

void polycalc_CD_R200_Link( polycalc_DRIVE *, polycalc_CD * );
void polycalc_CD_R200_Unlink( polycalc_DRIVE *, polycalc_CD * );


#define polycalc_CD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_CD_extent;

/*
 * instance event:  LOCATION2*:'mount'
 * Note:  Event is mapped from polymorphic event LOCATION::LOCATION2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_CDevent_LOCATION_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_CDevent_LOCATION_PE2c;

/*
 * instance event:  PORTAL1*:'remove'
 * Note:  Event is mapped from polymorphic event PORTAL::PORTAL1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_CDevent_PORTAL_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_CDevent_PORTAL_PE1c;

/*
 * union of events targeted towards 'CD' state machine
 */
typedef union {
  polycalc_CDevent_LOCATION_PE2 cd21;  
  polycalc_CDevent_PORTAL_PE1 cd12;  
} polycalc_CD_Events_u;

/*
 * enumeration of state model states for class
 */
#define polycalc_CD_STATE_1 1  /* state [1]:  (mounting cd) */
#define polycalc_CD_STATE_2 2  /* state [2]:  (offline) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_CDEVENT_LOCATION_PE2NUM 0  /* LOCATION2*:'mount' */
#define POLYCALC_CDEVENT_PORTAL_PE1NUM 1  /* PORTAL1*:'remove' */
extern void polycalc_CD_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_CD_CLASS_H */


