/*----------------------------------------------------------------------------
 * File:  polycalc_LOCATION_class.h
 *
 * Class:       location  (LOCATION)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_LOCATION_CLASS_H
#define POLYCALC_LOCATION_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   location  (LOCATION)
 */
struct polycalc_LOCATION {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t x;  /* - x */
  i_t y;  /* - y */
  i_t z;  /* - z */
  /* relationship storage */
  void * R100_subtype;
  Escher_ClassNumber_t R100_object_id;
  polycalc_PORTAL * PORTAL_R300;
};
void polycalc_LOCATION_op_dispose( polycalc_LOCATION * );

/* Accessors to LOCATION[R100] subtypes */
#define polycalc_DRIVE_R100_From_LOCATION( LOCATION ) \
   ( (((LOCATION)->R100_object_id) == polycalc_DRIVE_CLASS_NUMBER) ? \
     ((polycalc_DRIVE *)((LOCATION)->R100_subtype)) : (0) )
#define polycalc_TAPE_R100_From_LOCATION( LOCATION ) \
   ( (((LOCATION)->R100_object_id) == polycalc_TAPE_CLASS_NUMBER) ? \
     ((polycalc_TAPE *)((LOCATION)->R100_subtype)) : (0) )

void polycalc_LOCATION_R300_Link( polycalc_PORTAL *, polycalc_LOCATION * );
void polycalc_LOCATION_R300_Unlink( polycalc_PORTAL *, polycalc_LOCATION * );

#define polycalc_LOCATION_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_LOCATION_extent;

/*
 * class-based event:  LOCATION_A1:'start'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATION_CBevent1;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent1c;
/*
 * class-based event:  LOCATION_A2:'done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATION_CBevent2;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent2c;
/*
 * class-based event:  LOCATION_A3:'complete'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATION_CBevent3;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATION_CBevent3c;
/*
 * union of events targeted towards 'LOCATION' state machine
 */
typedef union {
  polycalc_LOCATION_CBevent1 location1_1;  
  polycalc_LOCATION_CBevent2 location2_2;  
  polycalc_LOCATION_CBevent3 location3_3;  
} polycalc_LOCATION_CB_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_LOCATION_CB_STATE_1 1  /* state [1]:  (first test) */
#define polycalc_LOCATION_CB_STATE_2 2  /* state [2]:  (removing portal) */
#define polycalc_LOCATION_CB_STATE_3 3  /* state [3]:  (passed) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_LOCATION_CBEVENT1NUM 0  /* LOCATION_A1:'start' */
#define POLYCALC_LOCATION_CBEVENT2NUM 1  /* LOCATION_A2:'done' */
#define POLYCALC_LOCATION_CBEVENT3NUM 2  /* LOCATION_A3:'complete' */
extern void polycalc_LOCATION_CBDispatch( Escher_xtUMLEvent_t * );

/*
 * instance event:  LOCATION1:'mounted'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATIONevent1;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent1c;
/*
 * instance event:  LOCATION2:'mount'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATIONevent2;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent2c;
/*
 * instance event:  LOCATION3:'spinup'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_LOCATIONevent3;
extern const Escher_xtUMLEventConstant_t polycalc_LOCATIONevent3c;
/*
 * union of events targeted towards 'LOCATION' state machine
 */
typedef union {
  polycalc_LOCATIONevent1 location1_1;  
  polycalc_LOCATIONevent2 location2_2;  /* polymorphic event - not consumed by LOCATION */
  polycalc_LOCATIONevent3 location3_3;  /* polymorphic event - not consumed by LOCATION */
} polycalc_LOCATION_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_LOCATION_STATE_1 1  /* state [1]:  (waiting) */
#define polycalc_LOCATION_STATE_2 2  /* state [2]:  (mounted) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_LOCATIONEVENT1NUM 0  /* LOCATION1:'mounted' */

/*
 * Enumeration of polymorphic event numbers
 */
#define POLYCALC_LOCATIONEVENT2NUM 1  /* LOCATION2:'mount' */
#define POLYCALC_LOCATIONEVENT3NUM 2  /* LOCATION3:'spinup' */
extern void polycalc_LOCATION_Dispatch( Escher_xtUMLEvent_t * );
extern void polycalc_LOCATION_R100PolymorphicEvent( const polycalc_LOCATION * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_LOCATION_CLASS_H */
