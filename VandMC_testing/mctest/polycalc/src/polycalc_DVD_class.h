/*----------------------------------------------------------------------------
 * File:  polycalc_DVD_class.h
 *
 * Class:       video disc drive  (DVD)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_DVD_CLASS_H
#define POLYCALC_DVD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   video disc drive  (DVD)
 */
struct polycalc_DVD {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t encryption;  /* - encryption */
  /* relationship storage */
  polycalc_DRIVE * DRIVE_R200;
};

void polycalc_DVD_R200_Link( polycalc_DRIVE *, polycalc_DVD * );
void polycalc_DVD_R200_Unlink( polycalc_DRIVE *, polycalc_DVD * );

#define polycalc_DVD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_DVD_extent;

/*
 * instance event:  LOCATION2*:'mount'
 * Note:  Event is mapped from polymorphic event LOCATION::LOCATION2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_DVDevent_LOCATION_PE2;
extern const Escher_xtUMLEventConstant_t polycalc_DVDevent_LOCATION_PE2c;
/*
 * instance event:  PORTAL1*:'remove'
 * Note:  Event is mapped from polymorphic event PORTAL::PORTAL1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_DVDevent_PORTAL_PE1;
extern const Escher_xtUMLEventConstant_t polycalc_DVDevent_PORTAL_PE1c;
/*
 * union of events targeted towards 'DVD' state machine
 */
typedef union {
  polycalc_DVDevent_LOCATION_PE2 dvd2_1;  
  polycalc_DVDevent_PORTAL_PE1 dvd1_2;  
} polycalc_DVD_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_DVD_STATE_1 1  /* state [1]:  (mounting dvd) */
#define polycalc_DVD_STATE_2 2  /* state [2]:  (deinstalling) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_DVDEVENT_PORTAL_PE1NUM 0  /* PORTAL1*:'remove' */
#define POLYCALC_DVDEVENT_LOCATION_PE2NUM 1  /* LOCATION2*:'mount' */
extern void polycalc_DVD_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_DVD_CLASS_H */
