/*----------------------------------------------------------------------------
 * File:  autosampler_batch_class.h
 *
 * Class:       batch  (batch)
 * Component:   autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef AUTOSAMPLER_BATCH_CLASS_H
#define AUTOSAMPLER_BATCH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   batch  (batch)
 */
struct autosampler_batch {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t interval;  /* - interval */
  i_t count;  /* - count */
  i_t start_position;  /* - start_position */
  i_t current_sample;  /* - current_sample */

  /* relationship storage */
  autosampler_spinner * spinner_R1;
  autosampler_probe * probe_R2;
};

void autosampler_batch_R2_Link_samples( autosampler_probe *, autosampler_batch * );
void autosampler_batch_R2_Unlink_samples( autosampler_probe *, autosampler_batch * );


#define autosampler_batch_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_autosampler_batch_extent;

/*
 * instance event:  batch1:'probe_done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent1;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent1c;

/*
 * instance event:  batch2:'spinner_done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent2;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent2c;

/*
 * instance event:  batch3:'sampling_complete'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent3;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent3c;

/*
 * instance event:  batch4:'start'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent4;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent4c;

/*
 * instance event:  batch5:'move_to_sample'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent5;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent5c;

/*
 * instance event:  batch6:'move_home'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} autosampler_batchevent6;
extern const Escher_xtUMLEventConstant_t autosampler_batchevent6c;

/*
 * union of events targeted towards 'batch' state machine
 */
typedef union {
  autosampler_batchevent1 batch1_1;  
  autosampler_batchevent2 batch2_2;  
  autosampler_batchevent3 batch3_3;  
  autosampler_batchevent4 batch4_4;  
  autosampler_batchevent5 batch5_5;  
  autosampler_batchevent6 batch6_6;  
} autosampler_batch_Events_u;

/*
 * enumeration of state model states for class
 */
#define autosampler_batch_STATE_1 1  /* state [1]:  (ready) */
#define autosampler_batch_STATE_2 2  /* state [2]:  (raising for safety) */
#define autosampler_batch_STATE_3 3  /* state [3]:  (spinning into position) */
#define autosampler_batch_STATE_4 4  /* state [4]:  (lowering probe) */
#define autosampler_batch_STATE_5 5  /* state [5]:  (sampling) */
#define autosampler_batch_STATE_6 6  /* state [6]:  (raising probe) */
#define autosampler_batch_STATE_7 7  /* state [7]:  (selecting sample) */
#define autosampler_batch_STATE_8 8  /* state [8]:  (spinning home) */
/*
 * enumeration of state model event numbers
 */
#define AUTOSAMPLER_BATCHEVENT1NUM 0  /* batch1:'probe_done' */
#define AUTOSAMPLER_BATCHEVENT2NUM 1  /* batch2:'spinner_done' */
#define AUTOSAMPLER_BATCHEVENT3NUM 2  /* batch3:'sampling_complete' */
#define AUTOSAMPLER_BATCHEVENT4NUM 3  /* batch4:'start' */
#define AUTOSAMPLER_BATCHEVENT5NUM 4  /* batch5:'move_to_sample' */
#define AUTOSAMPLER_BATCHEVENT6NUM 5  /* batch6:'move_home' */
extern void autosampler_batch_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* AUTOSAMPLER_BATCH_CLASS_H */


