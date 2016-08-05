/*----------------------------------------------------------------------------
 * File:  perf_funcs.c
 *
 * UML Component Port Messages
 * Component/Module Name:  perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "perf_funcs.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "DELTA_bridge.h"
#include "ARCH_bridge.h"
#include "TIM_bridge.h"
#include "perf_testloop.h"
#include "perf_funcs_classes.h"

/*
 * Interface:  benchif
 * Provided Port:  TESTLOOP
 * From Provider Message:  bridge_integer_integer
 */
i_t
perf_funcs_TESTLOOP_bridge_integer_integer( const i_t p_i )
{
return   perf_testloop_APP_bridge_integer_integer(  p_i );
}

/*
 * Interface:  benchif
 * Provided Port:  TESTLOOP
 * From Provider Message:  bridge_void_integer
 */
void
perf_funcs_TESTLOOP_bridge_void_integer( const i_t p_i )
{
  perf_testloop_APP_bridge_void_integer(  p_i );
}

/*
 * Interface:  benchif
 * Provided Port:  TESTLOOP
 * From Provider Message:  bridge_void_void
 */
void
perf_funcs_TESTLOOP_bridge_void_void()
{
  perf_testloop_APP_bridge_void_void();
}

/*
 * Interface:  benchif
 * Provided Port:  TESTLOOP
 * To Provider Message:  perftest
 */
bool
perf_funcs_TESTLOOP_perftest( const i_t p_count, const i_t p_duration, const i_t p_phase, const i_t p_testnum )
{
  /* RETURN ::perftest(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
  {bool xtumlOALrv = perf_funcs_perftest( p_count, p_duration, p_phase, p_testnum );
  return xtumlOALrv;}
}

/*
 * Interface:  benchif
 * Provided Port:  TESTLOOP
 * From Provider Message:  runtest
 */
void
perf_funcs_TESTLOOP_runtest( const i_t p_duration, const i_t p_testnum )
{
  perf_testloop_APP_runtest(  p_duration, p_testnum );
}
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  perftest
 */
bool
perf_funcs_perftest( const i_t p_count, const i_t p_duration, const i_t p_phase, const i_t p_testnum )
{
  bool testloop;
  /* ASSIGN testloop = TRUE */
  testloop = TRUE;
  /* IF ( ( 6 == PARAM.phase ) ) */
  if ( ( 6 == p_phase ) ) {
    perf_funcs_BENCHMARK * benchmark=0;
    /* SELECT any benchmark FROM INSTANCES OF BENCHMARK */
    benchmark = (perf_funcs_BENCHMARK *) Escher_SetGetAny( &pG_perf_funcs_BENCHMARK_extent.active );
    /* GENERATE BENCHMARK2:stop() TO benchmark */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( benchmark, &perf_funcs_BENCHMARKevent2c );
      Escher_SendEvent( e );
    }
  }
  else if ( ( 1 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::create_instance(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_create_instance(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 2 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::delete_instance(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_delete_instance(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 3 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::delete_many(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_delete_many(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 4 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::generate_and_dispatch_event(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_generate_and_dispatch_event(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 5 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_one_related(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_one_related(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 6 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_any_from(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_any_from(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 7 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::relate_one(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_relate_one(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 8 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::relate_one_to_many(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_relate_one_to_many(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 9 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::relate_one_using(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_relate_one_using(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 10 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::cardinality_10000(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_cardinality_10000(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 11 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::cardinality_1000(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_cardinality_1000(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 12 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::cardinality_100(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_cardinality_100(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 13 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::cardinality_10(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_cardinality_10(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 14 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_any_where_10000(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_any_where_10000(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 15 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_any_where_1000(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_any_where_1000(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 16 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_any_where_100(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_any_where_100(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 17 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::select_any_where_10(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_select_any_where_10(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 18 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::read_attribute(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_read_attribute(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 19 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::write_attribute(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_write_attribute(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 20 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::bridge_void_void(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_bridge_void_void(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 21 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::bridge_void_integer(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_bridge_void_integer(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 22 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::bridge_integer_integer(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_bridge_integer_integer(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 23 == p_testnum ) ) {
    /* ASSIGN testloop = CBENCH::function_void_void(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_CBENCH_op_function_void_void(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 24 == p_testnum ) ) {
    /* ASSIGN testloop = CBENCH::function_void_integer(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_CBENCH_op_function_void_integer(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 25 == p_testnum ) ) {
    /* ASSIGN testloop = CBENCH::function_integer_integer(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_CBENCH_op_function_integer_integer(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 26 == p_testnum ) ) {
    /* ASSIGN testloop = CBENCH::read_struct_member(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_CBENCH_op_read_struct_member(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 27 == p_testnum ) ) {
    /* ASSIGN testloop = CBENCH::write_struct_member(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_CBENCH_op_write_struct_member(p_count, p_duration, p_phase, p_testnum);
  }
  else if ( ( 99 == p_testnum ) ) {
    /* ASSIGN testloop = BENCHMARK::generate_event(count:PARAM.count, duration:PARAM.duration, phase:PARAM.phase, testnum:PARAM.testnum) */
    testloop = perf_funcs_BENCHMARK_op_generate_event(p_count, p_duration, p_phase, p_testnum);
  }
  else {
    /* ::xit(  ) */
    perf_funcs_xit();
  }
  /* RETURN testloop */
  {bool xtumlOALrv = testloop;
  return xtumlOALrv;}
}

/*
 * Domain Function:  report
 */
void
perf_funcs_report( const i_t p_count, const i_t p_duration, c_t p_message[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t s[ESCHER_SYS_MAX_STRING_LEN];i_t duration;i_t count;c_t message[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN message = PARAM.message */
  Escher_strcpy( message, p_message );
  /* ASSIGN count = PARAM.count */
  count = p_count;
  /* ASSIGN duration = PARAM.duration */
  duration = p_duration;
  /* ASSIGN s = printf( %34s:  %10d %4d %10d\n, p_message, p_count, p_duration, ( p_count / p_duration ) * 1000  ); */
  printf( "%34s:  %10d %4d %10d\n", p_message, p_count, p_duration, ( p_count / p_duration ) * 1000  );
}

/*
 * Domain Function:  setup
 */
void
perf_funcs_setup()
{
  perf_funcs_CBENCH * c;perf_funcs_BENCHMARK * benchmark;
  /* CREATE OBJECT INSTANCE benchmark OF BENCHMARK */
  benchmark = (perf_funcs_BENCHMARK *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_BENCHMARK_CLASS_NUMBER );
  /* ASSIGN benchmark.test_number = 0 */
  benchmark->test_number = 0;
  /* ASSIGN benchmark.duration = 1 */
  benchmark->duration = 1;
  /* CREATE OBJECT INSTANCE c OF CBENCH */
  c = (perf_funcs_CBENCH *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_CBENCH_CLASS_NUMBER );
  /* ASSIGN c.phase = 0 */
  c->phase = 0;
}

/*
 * Domain Function:  test
 */
void
perf_funcs_test()
{
  perf_funcs_BENCHMARK * benchmark=0;
  /* SELECT any benchmark FROM INSTANCES OF BENCHMARK */
  benchmark = (perf_funcs_BENCHMARK *) Escher_SetGetAny( &pG_perf_funcs_BENCHMARK_extent.active );
  /* GENERATE BENCHMARK1:go() TO benchmark */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( benchmark, &perf_funcs_BENCHMARKevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  xit
 */
void
perf_funcs_xit()
{
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
}
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const perf_funcs_class_info[ perf_funcs_MAX_CLASS_NUMBERS ] = {
  &pG_perf_funcs_A_extent,
  &pG_perf_funcs_B_extent,
  &pG_perf_funcs_BENCHMARK_extent,
  &pG_perf_funcs_C_extent,
  &pG_perf_funcs_D_extent,
  &pG_perf_funcs_E_extent,
  &pG_perf_funcs_F_extent,
  &pG_perf_funcs_G_extent,
  &pG_perf_funcs_CBENCH_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t perf_funcs_EventDispatcher[ perf_funcs_STATE_MODELS ] = {
  perf_funcs_class_dispatchers
};

void perf_funcs_execute_initialization()
{
  /*
   * Initialization Function:  setup
   * Component:  perf_funcs
   */
  perf_funcs_setup();

  /*
   * Initialization Function:  test
   * Component:  perf_funcs
   */
  perf_funcs_test();

}
