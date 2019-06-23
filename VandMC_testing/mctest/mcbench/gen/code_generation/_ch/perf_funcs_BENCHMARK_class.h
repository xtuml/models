/*----------------------------------------------------------------------------
 * File:  perf_funcs_BENCHMARK_class.h
 *
 * Class:       benchmark  (BENCHMARK)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_BENCHMARK_CLASS_H
#define PERF_FUNCS_BENCHMARK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   benchmark  (BENCHMARK)
 */
struct perf_funcs_BENCHMARK {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t test_number;  /* - test_number */
  i_t duration;  /* - duration */
};
bool perf_funcs_BENCHMARK_op_create_instance(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_delete_instance(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_generate_event(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_generate_and_dispatch_event(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_one_related(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_any_from(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_relate_one(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_relate_one_to_many(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_relate_one_using(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_cardinality_10000(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_cardinality_1000(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_cardinality_100(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_cardinality_10(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_any_where_10000(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_any_where_1000(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_any_where_100(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_select_any_where_10(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_read_attribute(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_write_attribute(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_bridge_void_void(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_bridge_void_integer(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_bridge_integer_integer(  const i_t, const i_t, const i_t, const i_t );
bool perf_funcs_BENCHMARK_op_delete_many(  const i_t, const i_t, const i_t, const i_t );


#define perf_funcs_BENCHMARK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_BENCHMARK_extent;

/*
 * instance event:  BENCHMARK1:'go'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_BENCHMARKevent1;
extern const Escher_xtUMLEventConstant_t perf_funcs_BENCHMARKevent1c;
/*
 * instance event:  BENCHMARK2:'stop'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} perf_funcs_BENCHMARKevent2;
extern const Escher_xtUMLEventConstant_t perf_funcs_BENCHMARKevent2c;
/*
 * union of events targeted towards 'BENCHMARK' state machine
 */
typedef union {
  perf_funcs_BENCHMARKevent1 benchmark1_1;  
  perf_funcs_BENCHMARKevent2 benchmark2_2;  
} perf_funcs_BENCHMARK_Events_u;
/*
 * enumeration of state model states for class
 */
#define perf_funcs_BENCHMARK_STATE_1 1  /* state [1]:  (running) */
#define perf_funcs_BENCHMARK_STATE_2 2  /* state [2]:  (done) */
/*
 * enumeration of state model event numbers
 */
#define PERF_FUNCS_BENCHMARKEVENT1NUM 0  /* BENCHMARK1:'go' */
#define PERF_FUNCS_BENCHMARKEVENT2NUM 1  /* BENCHMARK2:'stop' */
extern void perf_funcs_BENCHMARK_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_BENCHMARK_CLASS_H */
