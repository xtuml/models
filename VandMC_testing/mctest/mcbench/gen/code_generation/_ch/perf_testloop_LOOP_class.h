/*----------------------------------------------------------------------------
 * File:  perf_testloop_LOOP_class.h
 *
 * Class:       loop  (LOOP)
 * Component:   perf_testloop
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_TESTLOOP_LOOP_CLASS_H
#define PERF_TESTLOOP_LOOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   loop  (LOOP)
 */
struct perf_testloop_LOOP {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t client_test_number;  /* * client_test_number */
  i_t duration;  /* - duration */
  i_t repetitions;  /* - repetitions */
  i_t measured_run_time;  /* - measured_run_time */
  i_t time_delta;  /* - time_delta */
  Escher_TimeStamp_t t0;  /* - t0 */
};
void perf_testloop_LOOP_op_begin_time_measurement( perf_testloop_LOOP * );
i_t perf_testloop_LOOP_op_end_time_measurement( perf_testloop_LOOP * );


#define perf_testloop_LOOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_testloop_LOOP_extent;

/*
 * instance event:  LOOP1:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_testloop_LOOPevent1;
extern const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent1c;
/*
 * instance event:  LOOP2:'stop'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_testloop_LOOPevent2;
extern const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent2c;
/*
 * instance event:  LOOP5:'begin'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_duration; /* duration */
  i_t p_testnum; /* testnum */
} perf_testloop_LOOPevent5;
extern const Escher_xtUMLEventConstant_t perf_testloop_LOOPevent5c;
/*
 * union of events targeted towards 'LOOP' state machine
 */
typedef union {
  perf_testloop_LOOPevent1 loop1_1;  
  perf_testloop_LOOPevent2 loop2_2;  
  perf_testloop_LOOPevent5 loop5_3;  
} perf_testloop_LOOP_Events_u;
/*
 * enumeration of state model states for class
 */
#define perf_testloop_LOOP_STATE_1 1  /* state [1]:  (starting) */
#define perf_testloop_LOOP_STATE_2 2  /* state [2]:  (running) */
#define perf_testloop_LOOP_STATE_3 3  /* state [3]:  (unrunning) */
#define perf_testloop_LOOP_STATE_4 4  /* state [4]:  (done) */
/*
 * enumeration of state model event numbers
 */
#define PERF_TESTLOOP_LOOPEVENT1NUM 0  /* LOOP1:'go' */
#define PERF_TESTLOOP_LOOPEVENT2NUM 1  /* LOOP2:'stop' */
#define PERF_TESTLOOP_LOOPEVENT5NUM 2  /* LOOP5:'begin' */
extern void perf_testloop_LOOP_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_TESTLOOP_LOOP_CLASS_H */
