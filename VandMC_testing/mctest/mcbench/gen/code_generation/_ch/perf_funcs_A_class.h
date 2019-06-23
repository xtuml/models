/*----------------------------------------------------------------------------
 * File:  perf_funcs_A_class.h
 *
 * Class:       a  (A)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_A_CLASS_H
#define PERF_FUNCS_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   a  (A)
 */
struct perf_funcs_A {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t ID;  /* * ID */
  i_t odometer;  /* - odometer */
  i_t bID;  /* - bID (R1) */
  /* relationship storage */
  perf_funcs_B * B_R1;
};
void perf_funcs_A_op_generate_ignored_event_to_self( perf_funcs_A *, const i_t );
void perf_funcs_A_R1_Link( perf_funcs_B *, perf_funcs_A * );
void perf_funcs_A_R1_Unlink( perf_funcs_B *, perf_funcs_A * );

#define perf_funcs_A_MAX_EXTENT_SIZE 40000
extern Escher_Extent_t pG_perf_funcs_A_extent;

/*
 * instance event:  A1:'e'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_Aevent1;
extern const Escher_xtUMLEventConstant_t perf_funcs_Aevent1c;
/*
 * instance event:  A2:'e2'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_Aevent2;
extern const Escher_xtUMLEventConstant_t perf_funcs_Aevent2c;
/*
 * instance event:  A3:'stop'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_Aevent3;
extern const Escher_xtUMLEventConstant_t perf_funcs_Aevent3c;
/*
 * union of events targeted towards 'A' state machine
 */
typedef union {
  perf_funcs_Aevent1 a1_1;  
  perf_funcs_Aevent2 a2_2;  
  perf_funcs_Aevent3 a3_3;  
} perf_funcs_A_Events_u;
/*
 * enumeration of state model states for class
 */
#define perf_funcs_A_STATE_1 1  /* state [1]:  (spinning) */
#define perf_funcs_A_STATE_2 2  /* state [2]:  (done) */
/*
 * enumeration of state model event numbers
 */
#define PERF_FUNCS_AEVENT1NUM 0  /* A1:'e' */
#define PERF_FUNCS_AEVENT2NUM 1  /* A2:'e2' */
#define PERF_FUNCS_AEVENT3NUM 2  /* A3:'stop' */
extern void perf_funcs_A_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_A_CLASS_H */
