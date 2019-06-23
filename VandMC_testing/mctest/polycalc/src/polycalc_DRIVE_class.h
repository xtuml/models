/*----------------------------------------------------------------------------
 * File:  polycalc_DRIVE_class.h
 *
 * Class:       disk drive  (DRIVE)
 * Component:   polycalc
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef POLYCALC_DRIVE_CLASS_H
#define POLYCALC_DRIVE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   disk drive  (DRIVE)
 */
struct polycalc_DRIVE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t capacity;  /* - capacity */
  /* relationship storage */
  polycalc_LOCATION * LOCATION_R100;
  void * R200_subtype;
  Escher_ClassNumber_t R200_object_id;
};
void polycalc_DRIVE_op_dispose( polycalc_DRIVE * );
void polycalc_DRIVE_R100_Link( polycalc_LOCATION *, polycalc_DRIVE * );
void polycalc_DRIVE_R100_Unlink( polycalc_LOCATION *, polycalc_DRIVE * );

/* Accessors to DRIVE[R200] subtypes */
#define polycalc_CD_R200_From_DRIVE( DRIVE ) \
   ( (((DRIVE)->R200_object_id) == polycalc_CD_CLASS_NUMBER) ? \
     ((polycalc_CD *)((DRIVE)->R200_subtype)) : (0) )
#define polycalc_DVD_R200_From_DRIVE( DRIVE ) \
   ( (((DRIVE)->R200_object_id) == polycalc_DVD_CLASS_NUMBER) ? \
     ((polycalc_DVD *)((DRIVE)->R200_subtype)) : (0) )


#define polycalc_DRIVE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_polycalc_DRIVE_extent;

/*
 * instance event:  DRIVE4:'dumb'
 * warning:  Event is not used in application - no code generated.
 */
/*
 * instance event:  LOCATION3*:'spinup'
 * Note:  Event is mapped from polymorphic event LOCATION::LOCATION3. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} polycalc_DRIVEevent_LOCATION_PE3;
extern const Escher_xtUMLEventConstant_t polycalc_DRIVEevent_LOCATION_PE3c;
/*
 * union of events targeted towards 'DRIVE' state machine
 */
typedef union {
  polycalc_DRIVEevent_LOCATION_PE3 drive3_1;  
} polycalc_DRIVE_Events_u;
/*
 * enumeration of state model states for class
 */
#define polycalc_DRIVE_STATE_1 1  /* state [1]:  (spinning up) */
/*
 * enumeration of state model event numbers
 */
#define POLYCALC_DRIVEEVENT_LOCATION_PE3NUM 0  /* LOCATION3*:'spinup' */
extern void polycalc_DRIVE_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* POLYCALC_DRIVE_CLASS_H */
