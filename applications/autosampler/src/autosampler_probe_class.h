/*----------------------------------------------------------------------------
 * File:  autosampler_probe_class.h
 *
 * Class:       probe  (probe)
 * Component:   autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AUTOSAMPLER_PROBE_CLASS_H
#define AUTOSAMPLER_PROBE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   probe  (probe)
 */
struct autosampler_probe {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  autosampler_probeposition_t state;  /* - state */

  /* relationship storage */
  autosampler_batch * batch_R2_samples;
  autosampler_spinner * spinner_R3_checks_safety;
};
void autosampler_probe_op_top( void );
void autosampler_probe_op_bottom( void );



#define autosampler_probe_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_autosampler_probe_extent;

/*
 * instance event:  probe1:'at_top'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_probeevent1;
extern const Escher_xtUMLEventConstant_t autosampler_probeevent1c;

/*
 * instance event:  probe2:'at_bottom'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_probeevent2;
extern const Escher_xtUMLEventConstant_t autosampler_probeevent2c;

/*
 * instance event:  probe3:'go_up'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_probeevent3;
extern const Escher_xtUMLEventConstant_t autosampler_probeevent3c;

/*
 * instance event:  probe4:'go_down'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_probeevent4;
extern const Escher_xtUMLEventConstant_t autosampler_probeevent4c;

/*
 * union of events targeted towards 'probe' state machine
 */
typedef union {
  autosampler_probeevent1 probe1_1;  
  autosampler_probeevent2 probe2_2;  
  autosampler_probeevent3 probe3_3;  
  autosampler_probeevent4 probe4_4;  
} autosampler_probe_Events_u;

/*
 * enumeration of state model states for class
 */
#define autosampler_probe_STATE_1 1  /* state [1]:  (top) */
#define autosampler_probe_STATE_2 2  /* state [2]:  (bottom) */
#define autosampler_probe_STATE_3 3  /* state [3]:  (lowering) */
#define autosampler_probe_STATE_4 4  /* state [4]:  (raising) */
/*
 * enumeration of state model event numbers
 */
#define AUTOSAMPLER_PROBEEVENT1NUM 0  /* probe1:'at_top' */
#define AUTOSAMPLER_PROBEEVENT2NUM 1  /* probe2:'at_bottom' */
#define AUTOSAMPLER_PROBEEVENT3NUM 2  /* probe3:'go_up' */
#define AUTOSAMPLER_PROBEEVENT4NUM 3  /* probe4:'go_down' */
extern void autosampler_probe_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* AUTOSAMPLER_PROBE_CLASS_H */


