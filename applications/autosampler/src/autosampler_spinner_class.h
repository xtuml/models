/*----------------------------------------------------------------------------
 * File:  autosampler_spinner_class.h
 *
 * Class:       spinner  (spinner)
 * Component:   autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AUTOSAMPLER_SPINNER_CLASS_H
#define AUTOSAMPLER_SPINNER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   spinner  (spinner)
 */
struct autosampler_spinner {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t position;  /* - position */
  i_t capacity;  /* - capacity */
  bool ready;  /* - ready */

  /* relationship storage */
  autosampler_batch * batch_R1_spins;
  autosampler_probe * probe_R3_checks__safety;
};
void autosampler_spinner_op_arrived( void );
void autosampler_spinner_op_go( autosampler_spinner *, const i_t );

void autosampler_spinner_R1_Link( autosampler_batch *, autosampler_spinner * );
void autosampler_spinner_R1_Unlink( autosampler_batch *, autosampler_spinner * );
void autosampler_spinner_R3_Link_checks_safety( autosampler_probe *, autosampler_spinner * );
/* Note:  probe<-R3->spinner unrelate accessor not needed */


#define autosampler_spinner_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_autosampler_spinner_extent;

/*
 * instance event:  spinner1:'arrived'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_spinnerevent1;
extern const Escher_xtUMLEventConstant_t autosampler_spinnerevent1c;

/*
 * instance event:  spinner2:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_position; /* position */
} autosampler_spinnerevent2;
extern const Escher_xtUMLEventConstant_t autosampler_spinnerevent2c;

/*
 * union of events targeted towards 'spinner' state machine
 */
typedef union {
  autosampler_spinnerevent1 spinner1_1;  
  autosampler_spinnerevent2 spinner2_2;  
} autosampler_spinner_Events_u;

/*
 * enumeration of state model states for class
 */
#define autosampler_spinner_STATE_1 1  /* state [1]:  (stopped) */
#define autosampler_spinner_STATE_2 2  /* state [2]:  (going) */
/*
 * enumeration of state model event numbers
 */
#define AUTOSAMPLER_SPINNEREVENT1NUM 0  /* spinner1:'arrived' */
#define AUTOSAMPLER_SPINNEREVENT2NUM 1  /* spinner2:'go' */
extern void autosampler_spinner_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* AUTOSAMPLER_SPINNER_CLASS_H */


