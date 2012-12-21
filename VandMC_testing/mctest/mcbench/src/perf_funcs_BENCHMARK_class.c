/*----------------------------------------------------------------------------
 * File:  perf_funcs_BENCHMARK_class.c
 *
 * Class:       benchmark  (BENCHMARK)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "mcbench_sys_types.h"
#include "TIM_bridge.h"
#include "perf_funcs_ARCH_bridge.h"
#include "perf_funcs_CBENCHMARK_bridge.h"
#include "perf_funcs_classes.h"

/*
 * class operation:  create_instance
 */
bool
perf_funcs_BENCHMARK_op_create_instance( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 1000 */
  iterations = 1000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'create instance' ) */
    perf_funcs_report( i, p_duration, "create instance" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  delete_instance
 */
bool
perf_funcs_BENCHMARK_op_delete_instance( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 3 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select then delete instance' ) */
    perf_funcs_report( i, p_duration, "select then delete instance" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  generate_event
 */
bool
perf_funcs_BENCHMARK_op_generate_event( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 300 */
  iterations = 300;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* a.generate_ignored_event_to_self( count:iterations ) */
    perf_funcs_A_op_generate_ignored_event_to_self( a,  iterations );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'generate event' ) */
    perf_funcs_report( i, p_duration, "generate event" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  generate_and_dispatch_event
 */
bool
perf_funcs_BENCHMARK_op_generate_and_dispatch_event( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; perf_funcs_B * b; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
    /* ASSIGN a.odometer = 0 */
    a->odometer = 0;
    /* CREATE OBJECT INSTANCE b OF B */
    b = (perf_funcs_B *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER );
    /* RELATE a TO b ACROSS R1 */
    perf_funcs_A_R1_Link( b, a );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* GENERATE A1:e() TO a */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( a, &perf_funcs_Aevent1c );
      Escher_SendEvent( e );
    }
  }
  else if ( ( 3 == p_phase ) ) {
    /* RETURN FALSE */
    return FALSE;
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* GENERATE A3:stop() TO a */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( a, &perf_funcs_Aevent3c );
      Escher_SendEvent( e );
    }
  }
  else if ( ( 5 == p_phase ) ) {
    perf_funcs_A * a=0; i_t odometer_reading; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* ASSIGN odometer_reading = ( a.odometer * PARAM.count ) */
    odometer_reading = ( a->odometer * p_count );
    /* ::report( count:odometer_reading, duration:999, message:'generate and dispatch event' ) */
    perf_funcs_report( odometer_reading, 999, "generate and dispatch event" );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_one_related
 */
bool
perf_funcs_BENCHMARK_op_select_one_related( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 100 */
  iterations = 100;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; perf_funcs_B * b; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE b OF B */
    b = (perf_funcs_B *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER );
    /* RELATE a TO b ACROSS R1 */
    perf_funcs_A_R1_Link( b, a );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; i_t i; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      perf_funcs_B * b = 0; /* b (B) */
 
      /* SELECT one b RELATED BY a->B[R1] */
      b = a->B_R1;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; perf_funcs_B * b=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* SELECT any b FROM INSTANCES OF B */
    b = (perf_funcs_B *) Escher_SetGetAny( &pG_perf_funcs_B_extent.active );
    /* IF ( ( not_empty a and not_empty b ) ) */
    if ( ( ( 0 != a ) && ( 0 != b ) ) ) {
      /* UNRELATE a FROM b ACROSS R1 */
      perf_funcs_A_R1_Unlink( b, a );
      /* DELETE OBJECT INSTANCE a */
      if ( 0 == a ) {
        XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* DELETE OBJECT INSTANCE b */
      if ( 0 == b ) {
        XTUML_EMPTY_HANDLE_TRACE( "B", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) b, perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER );
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select one related' ) */
    perf_funcs_report( i, p_duration, "select one related" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_any_from
 */
bool
perf_funcs_BENCHMARK_op_select_any_from( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      perf_funcs_A * a0=0; perf_funcs_A * a1=0; perf_funcs_A * a2=0; perf_funcs_A * a3=0; perf_funcs_A * a4=0; perf_funcs_A * a5=0; perf_funcs_A * a6=0; perf_funcs_A * a7=0; perf_funcs_A * a8=0; perf_funcs_A * a9=0; 
      /* SELECT any a0 FROM INSTANCES OF A */
      a0 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a1 FROM INSTANCES OF A */
      a1 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a2 FROM INSTANCES OF A */
      a2 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a3 FROM INSTANCES OF A */
      a3 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a4 FROM INSTANCES OF A */
      a4 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a5 FROM INSTANCES OF A */
      a5 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a6 FROM INSTANCES OF A */
      a6 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a7 FROM INSTANCES OF A */
      a7 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a8 FROM INSTANCES OF A */
      a8 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* SELECT any a9 FROM INSTANCES OF A */
      a9 = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select any from instances of' ) */
    perf_funcs_report( i, p_duration, "select any from instances of" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  relate_one
 */
bool
perf_funcs_BENCHMARK_op_relate_one( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; perf_funcs_B * b; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE b OF B */
    b = (perf_funcs_B *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; perf_funcs_B * b=0; i_t i; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* SELECT any b FROM INSTANCES OF B */
    b = (perf_funcs_B *) Escher_SetGetAny( &pG_perf_funcs_B_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* RELATE a TO b ACROSS R1 */
      perf_funcs_A_R1_Link( b, a );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; perf_funcs_B * b=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* SELECT any b FROM INSTANCES OF B */
    b = (perf_funcs_B *) Escher_SetGetAny( &pG_perf_funcs_B_extent.active );
    /* UNRELATE a FROM b ACROSS R1 */
    perf_funcs_A_R1_Unlink( b, a );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
    /* DELETE OBJECT INSTANCE b */
    if ( 0 == b ) {
      XTUML_EMPTY_HANDLE_TRACE( "B", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) b, perf_funcs_DOMAIN_ID, perf_funcs_B_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'relate one' ) */
    perf_funcs_report( i, p_duration, "relate one" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  relate_one_to_many
 */
bool
perf_funcs_BENCHMARK_op_relate_one_to_many( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_C * c; perf_funcs_D * d; perf_funcs_C * c1 = 0; /* c1 (C) */
 perf_funcs_D * d1 = 0; /* d1 (D) */
 
    /* CREATE OBJECT INSTANCE c OF C */
    c = (perf_funcs_C *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_C_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE d OF D */
    d = (perf_funcs_D *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_D_CLASS_NUMBER );
    /* SELECT one c1 RELATED BY d->C[R2] */
    c1 = d->C_R2;
    /* SELECT any d1 RELATED BY c->D[R2] */
    d1 = (perf_funcs_D *) Escher_SetGetAny( &c->D_R2 );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_C * c=0; perf_funcs_D * d=0; i_t i; 
    /* SELECT any c FROM INSTANCES OF C */
    c = (perf_funcs_C *) Escher_SetGetAny( &pG_perf_funcs_C_extent.active );
    /* SELECT any d FROM INSTANCES OF D */
    d = (perf_funcs_D *) Escher_SetGetAny( &pG_perf_funcs_D_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* RELATE c TO d ACROSS R2 */
      perf_funcs_D_R2_Link( c, d );
      /* UNRELATE c FROM d ACROSS R2 */
      perf_funcs_D_R2_Unlink( c, d );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_C * c=0; perf_funcs_D * d=0; 
    /* SELECT any c FROM INSTANCES OF C */
    c = (perf_funcs_C *) Escher_SetGetAny( &pG_perf_funcs_C_extent.active );
    /* SELECT any d FROM INSTANCES OF D */
    d = (perf_funcs_D *) Escher_SetGetAny( &pG_perf_funcs_D_extent.active );
    /* UNRELATE c FROM d ACROSS R2 */
    perf_funcs_D_R2_Unlink( c, d );
    /* DELETE OBJECT INSTANCE c */
    if ( 0 == c ) {
      XTUML_EMPTY_HANDLE_TRACE( "C", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) c, perf_funcs_DOMAIN_ID, perf_funcs_C_CLASS_NUMBER );
    /* DELETE OBJECT INSTANCE d */
    if ( 0 == d ) {
      XTUML_EMPTY_HANDLE_TRACE( "D", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) d, perf_funcs_DOMAIN_ID, perf_funcs_D_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'relate/unrelate one to many' ) */
    perf_funcs_report( i, p_duration, "relate/unrelate one to many" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  relate_one_using
 */
bool
perf_funcs_BENCHMARK_op_relate_one_using( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_E * e; perf_funcs_F * f; perf_funcs_G * g; 
    /* CREATE OBJECT INSTANCE e OF E */
    e = (perf_funcs_E *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_E_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE f OF F */
    f = (perf_funcs_F *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_F_CLASS_NUMBER );
    /* CREATE OBJECT INSTANCE g OF G */
    g = (perf_funcs_G *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_G_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_E * e=0; perf_funcs_F * f=0; perf_funcs_G * g=0; i_t i; 
    /* SELECT any e FROM INSTANCES OF E */
    e = (perf_funcs_E *) Escher_SetGetAny( &pG_perf_funcs_E_extent.active );
    /* SELECT any f FROM INSTANCES OF F */
    f = (perf_funcs_F *) Escher_SetGetAny( &pG_perf_funcs_F_extent.active );
    /* SELECT any g FROM INSTANCES OF G */
    g = (perf_funcs_G *) Escher_SetGetAny( &pG_perf_funcs_G_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      /* RELATE e TO f ACROSS R3 USING g */
      perf_funcs_G_R3_Link( e, f, g );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
    perf_funcs_E * e=0; perf_funcs_F * f = 0; /* f (F) */
 perf_funcs_G * g = 0; /* g (G) */
 
    /* SELECT any e FROM INSTANCES OF E */
    e = (perf_funcs_E *) Escher_SetGetAny( &pG_perf_funcs_E_extent.active );
    /* SELECT one f RELATED BY e->F[R3] */
    f = 0;
    {    if ( 0 != e ) {
    perf_funcs_G * G_R3 = e->G_R3;
    if ( 0 != G_R3 ) {
    f = G_R3->F_R3;
}}}
    /* SELECT one g RELATED BY e->G[R3] */
    g = e->G_R3;
    /* UNRELATE e FROM f ACROSS R3 USING g */
    perf_funcs_G_R3_Unlink( e, f, g );
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_E * e=0; bool more; 
    /* SELECT any e FROM INSTANCES OF E */
    e = (perf_funcs_E *) Escher_SetGetAny( &pG_perf_funcs_E_extent.active );
    /* DELETE OBJECT INSTANCE e */
    if ( 0 == e ) {
      XTUML_EMPTY_HANDLE_TRACE( "E", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) e, perf_funcs_DOMAIN_ID, perf_funcs_E_CLASS_NUMBER );
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_F * f=0; 
      /* SELECT any f FROM INSTANCES OF F */
      f = (perf_funcs_F *) Escher_SetGetAny( &pG_perf_funcs_F_extent.active );
      /* IF ( not_empty f ) */
      if ( ( 0 != f ) ) {
        /* DELETE OBJECT INSTANCE f */
        if ( 0 == f ) {
          XTUML_EMPTY_HANDLE_TRACE( "F", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) f, perf_funcs_DOMAIN_ID, perf_funcs_F_CLASS_NUMBER );
      }
      else {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
    }
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_G * g=0; 
      /* SELECT any g FROM INSTANCES OF G */
      g = (perf_funcs_G *) Escher_SetGetAny( &pG_perf_funcs_G_extent.active );
      /* IF ( not_empty g ) */
      if ( ( 0 != g ) ) {
        /* DELETE OBJECT INSTANCE g */
        if ( 0 == g ) {
          XTUML_EMPTY_HANDLE_TRACE( "G", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) g, perf_funcs_DOMAIN_ID, perf_funcs_G_CLASS_NUMBER );
      }
      else {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'relate one to many using' ) */
    perf_funcs_report( i, p_duration, "relate one to many using" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  cardinality_10000
 */
bool
perf_funcs_BENCHMARK_op_cardinality_10000( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ i_t i; 
    /* SELECT many as FROM INSTANCES OF A */
    Escher_CopySet( as, &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      i_t j; 
      /* ASSIGN j = cardinality as */
      j = Escher_SetCardinality( as );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
    Escher_ClearSet( as );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'cardinality 10000' ) */
    perf_funcs_report( i, p_duration, "cardinality 10000" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  cardinality_1000
 */
bool
perf_funcs_BENCHMARK_op_cardinality_1000( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 1000 */
  iterations = 1000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ i_t i; 
    /* SELECT many as FROM INSTANCES OF A */
    Escher_CopySet( as, &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      i_t j; 
      /* ASSIGN j = cardinality as */
      j = Escher_SetCardinality( as );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
    Escher_ClearSet( as );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'cardinality 1000' ) */
    perf_funcs_report( i, p_duration, "cardinality 1000" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  cardinality_100
 */
bool
perf_funcs_BENCHMARK_op_cardinality_100( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 100 */
  iterations = 100;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ i_t i; 
    /* SELECT many as FROM INSTANCES OF A */
    Escher_CopySet( as, &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      i_t j; 
      /* ASSIGN j = cardinality as */
      j = Escher_SetCardinality( as );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
    Escher_ClearSet( as );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'cardinality 100' ) */
    perf_funcs_report( i, p_duration, "cardinality 100" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  cardinality_10
 */
bool
perf_funcs_BENCHMARK_op_cardinality_10( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10 */
  iterations = 10;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ i_t i; 
    /* SELECT many as FROM INSTANCES OF A */
    Escher_CopySet( as, &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      i_t j; 
      /* ASSIGN j = cardinality as */
      j = Escher_SetCardinality( as );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
    Escher_ClearSet( as );
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'cardinality 10' ) */
    perf_funcs_report( i, p_duration, "cardinality 10" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_any_where_10000
 */
bool
perf_funcs_BENCHMARK_op_select_any_where_10000( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = 10000 */
    i = 10000;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN a.ID = i */
      a->ID = i;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = 10000 */
    i = 10000;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.ID == i ) */
      a = 0;
      { perf_funcs_A * selected;
        Escher_Iterator_s iteraperf_funcs_A;
        Escher_IteratorReset( &iteraperf_funcs_A, &pG_perf_funcs_A_extent.active );
        while ( (selected = (perf_funcs_A *) Escher_IteratorNext( &iteraperf_funcs_A )) != 0 ) {
          if ( ( selected->ID == i ) ) {
            a = selected;
            break;
          }
        }
      }
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select any where 10000' ) */
    perf_funcs_report( i, p_duration, "select any where 10000" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_any_where_1000
 */
bool
perf_funcs_BENCHMARK_op_select_any_where_1000( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 5000 */
  iterations = 5000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = 100 */
    i = 100;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN a.ID = i */
      a->ID = i;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    i_t j; 
    /* ASSIGN j = 5 */
    j = 5;
    /* WHILE ( ( 0 < j ) ) */
    while ( ( 0 < j ) ) {
      i_t i; 
      /* ASSIGN i = 1000 */
      i = 1000;
      /* WHILE ( ( i > 0 ) ) */
      while ( ( i > 0 ) ) {
        perf_funcs_A * a=0; 
        /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.ID == i ) */
        a = 0;
        { perf_funcs_A * selected;
          Escher_Iterator_s iteraperf_funcs_A;
          Escher_IteratorReset( &iteraperf_funcs_A, &pG_perf_funcs_A_extent.active );
          while ( (selected = (perf_funcs_A *) Escher_IteratorNext( &iteraperf_funcs_A )) != 0 ) {
            if ( ( selected->ID == i ) ) {
              a = selected;
              break;
            }
          }
        }
        /* ASSIGN i = ( i - 1 ) */
        i = ( i - 1 );
      }
      /* ASSIGN j = ( j - 1 ) */
      j = ( j - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select any where 1000' ) */
    perf_funcs_report( i, p_duration, "select any where 1000" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_any_where_100
 */
bool
perf_funcs_BENCHMARK_op_select_any_where_100( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 5000 */
  iterations = 5000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = 100 */
    i = 100;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN a.ID = i */
      a->ID = i;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    i_t j; 
    /* ASSIGN j = 50 */
    j = 50;
    /* WHILE ( ( 0 < j ) ) */
    while ( ( 0 < j ) ) {
      i_t i; 
      /* ASSIGN i = 100 */
      i = 100;
      /* WHILE ( ( i > 0 ) ) */
      while ( ( i > 0 ) ) {
        perf_funcs_A * a=0; 
        /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.ID == i ) */
        a = 0;
        { perf_funcs_A * selected;
          Escher_Iterator_s iteraperf_funcs_A;
          Escher_IteratorReset( &iteraperf_funcs_A, &pG_perf_funcs_A_extent.active );
          while ( (selected = (perf_funcs_A *) Escher_IteratorNext( &iteraperf_funcs_A )) != 0 ) {
            if ( ( selected->ID == i ) ) {
              a = selected;
              break;
            }
          }
        }
        /* ASSIGN i = ( i - 1 ) */
        i = ( i - 1 );
      }
      /* ASSIGN j = ( j - 1 ) */
      j = ( j - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select any where 100' ) */
    perf_funcs_report( i, p_duration, "select any where 100" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  select_any_where_10
 */
bool
perf_funcs_BENCHMARK_op_select_any_where_10( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 5000 */
  iterations = 5000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = 10 */
    i = 10;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN a.ID = i */
      a->ID = i;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    i_t j; 
    /* ASSIGN j = 500 */
    j = 500;
    /* WHILE ( ( 0 < j ) ) */
    while ( ( 0 < j ) ) {
      i_t i; 
      /* ASSIGN i = 10 */
      i = 10;
      /* WHILE ( ( i > 0 ) ) */
      while ( ( i > 0 ) ) {
        perf_funcs_A * a=0; 
        /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.ID == i ) */
        a = 0;
        { perf_funcs_A * selected;
          Escher_Iterator_s iteraperf_funcs_A;
          Escher_IteratorReset( &iteraperf_funcs_A, &pG_perf_funcs_A_extent.active );
          while ( (selected = (perf_funcs_A *) Escher_IteratorNext( &iteraperf_funcs_A )) != 0 ) {
            if ( ( selected->ID == i ) ) {
              a = selected;
              break;
            }
          }
        }
        /* ASSIGN i = ( i - 1 ) */
        i = ( i - 1 );
      }
      /* ASSIGN j = ( j - 1 ) */
      j = ( j - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select any where 10' ) */
    perf_funcs_report( i, p_duration, "select any where 10" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  read_attribute
 */
bool
perf_funcs_BENCHMARK_op_read_attribute( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; i_t i; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      i_t j; 
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN j = a.odometer */
      j = a->odometer;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'read attribute' ) */
    perf_funcs_report( i, p_duration, "read attribute" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  write_attribute
 */
bool
perf_funcs_BENCHMARK_op_write_attribute( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    perf_funcs_A * a; 
    /* CREATE OBJECT INSTANCE a OF A */
    a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 2 == p_phase ) ) {
    perf_funcs_A * a=0; i_t i; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN a.odometer = 0 */
      a->odometer = 0;
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
    perf_funcs_A * a=0; 
    /* SELECT any a FROM INSTANCES OF A */
    a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'write attribute' ) */
    perf_funcs_report( i, p_duration, "write attribute" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  bridge_void_void
 */
bool
perf_funcs_BENCHMARK_op_bridge_void_void( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* TESTLOOP::bridge_void_void() */
      perf_funcs_TESTLOOP_bridge_void_void();
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'bridge void void' ) */
    perf_funcs_report( i, p_duration, "bridge void void" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  bridge_void_integer
 */
bool
perf_funcs_BENCHMARK_op_bridge_void_integer( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* TESTLOOP::bridge_void_integer(i:i) */
      perf_funcs_TESTLOOP_bridge_void_integer( i );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'bridge void integer' ) */
    perf_funcs_report( i, p_duration, "bridge void integer" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  bridge_integer_integer
 */
bool
perf_funcs_BENCHMARK_op_bridge_integer_integer( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; i_t j; 
  /* ASSIGN iterations = 10000 */
  iterations = 10000;
  /* ASSIGN j = 0 */
  j = 0;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
  }
  else if ( ( 2 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( i > 0 ) ) */
    while ( ( i > 0 ) ) {
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN j = TESTLOOP::bridge_integer_integer(i:i) */
      j = perf_funcs_TESTLOOP_bridge_integer_integer( i );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 3 == p_phase ) ) {
  }
  else if ( ( 4 == p_phase ) ) {
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( ( 10 * iterations ) * PARAM.count ) */
    i = ( ( 10 * iterations ) * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'bridge integer integer' ) */
    perf_funcs_report( i, p_duration, "bridge integer integer" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}

/*
 * class operation:  delete_many
 */
bool
perf_funcs_BENCHMARK_op_delete_many( i_t p_count, i_t p_duration, i_t p_phase, i_t p_testnum)
{
  i_t iterations; 
  /* ASSIGN iterations = 5000 */
  iterations = 5000;
  /* IF ( ( 1 == PARAM.phase ) ) */
  if ( ( 1 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 2 == p_phase ) ) {
    Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ perf_funcs_A * a=0; 
    /* SELECT many as FROM INSTANCES OF A */
    Escher_CopySet( as, &pG_perf_funcs_A_extent.active );
    /* FOR EACH a IN as */
    { Escher_Iterator_s iterperf_funcs_Aa;
    perf_funcs_A * perf_funcs_Aiterperf_funcs_Aa;
    Escher_IteratorReset( &iterperf_funcs_Aa, as );
    while ( (perf_funcs_Aiterperf_funcs_Aa = (perf_funcs_A *)Escher_IteratorNext( &iterperf_funcs_Aa )) != 0 ) {
      a = perf_funcs_Aiterperf_funcs_Aa; {
      /* DELETE OBJECT INSTANCE a */
      if ( 0 == a ) {
        XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
    }}}
    Escher_ClearSet( as );
  }
  else if ( ( 3 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = iterations */
    i = iterations;
    /* WHILE ( ( 0 < i ) ) */
    while ( ( 0 < i ) ) {
      perf_funcs_A * a; 
      /* CREATE OBJECT INSTANCE a OF A */
      a = (perf_funcs_A *) Escher_CreateInstance( perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      /* ASSIGN i = ( i - 1 ) */
      i = ( i - 1 );
    }
  }
  else if ( ( 4 == p_phase ) ) {
    bool more; 
    /* ASSIGN more = TRUE */
    more = TRUE;
    /* WHILE ( more ) */
    while ( more ) {
      perf_funcs_A * a=0; 
      /* SELECT any a FROM INSTANCES OF A */
      a = (perf_funcs_A *) Escher_SetGetAny( &pG_perf_funcs_A_extent.active );
      /* IF ( empty a ) */
      if ( ( 0 == a ) ) {
        /* ASSIGN more = FALSE */
        more = FALSE;
      }
      else {
        /* DELETE OBJECT INSTANCE a */
        if ( 0 == a ) {
          XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
        }
        Escher_DeleteInstance( (Escher_iHandle_t) a, perf_funcs_DOMAIN_ID, perf_funcs_A_CLASS_NUMBER );
      }
    }
  }
  else if ( ( 5 == p_phase ) ) {
    i_t i; 
    /* ASSIGN i = ( iterations * PARAM.count ) */
    i = ( iterations * p_count );
    /* ::report( count:i, duration:PARAM.duration, message:'select many delete 5000 instances' ) */
    perf_funcs_report( i, p_duration, "select many delete 5000 instances" );
  }
  else {
  }
  /* RETURN TRUE */
  return TRUE;

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      benchmark  (BENCHMARK)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s perf_funcs_BENCHMARK_container[ perf_funcs_BENCHMARK_MAX_EXTENT_SIZE ];
static perf_funcs_BENCHMARK perf_funcs_BENCHMARK_instances[ perf_funcs_BENCHMARK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_perf_funcs_BENCHMARK_extent = {
  {0}, {0}, &perf_funcs_BENCHMARK_container[ 0 ],
  (Escher_iHandle_t) &perf_funcs_BENCHMARK_instances,
  sizeof( perf_funcs_BENCHMARK ), perf_funcs_BENCHMARK_STATE_1, perf_funcs_BENCHMARK_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      benchmark  (BENCHMARK)
 * Component:  perf_funcs
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [running]
 */
static void perf_funcs_BENCHMARK_act1( perf_funcs_BENCHMARK *, const Escher_xtUMLEvent_t * const );
static void
perf_funcs_BENCHMARK_act1( perf_funcs_BENCHMARK * self, const Escher_xtUMLEvent_t * const event )
{
  /* ASSIGN self.test_number = ( self.test_number + 1 ) */
  self->test_number = ( self->test_number + 1 );
  /* TESTLOOP::runtest(duration:self.duration, testnum:self.test_number) */
  perf_funcs_TESTLOOP_runtest( self->duration, self->test_number );
}

/*
 * State 2:  [done]
 */
static void perf_funcs_BENCHMARK_act2( perf_funcs_BENCHMARK *, const Escher_xtUMLEvent_t * const );
static void
perf_funcs_BENCHMARK_act2( perf_funcs_BENCHMARK * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * go;  /* go */ Escher_Timer_t * t; 
  /* CREATE EVENT INSTANCE go(  ) TO self */
  go = Escher_NewxtUMLEvent( (void *) self, &perf_funcs_BENCHMARKevent1c );
  /* ASSIGN t = TIM::timer_start(event_inst:go, microseconds:1000) */
  t = TIM_timer_start( (Escher_xtUMLEvent_t *)go, 1000 );
}

const Escher_xtUMLEventConstant_t perf_funcs_BENCHMARKevent1c = {
  perf_funcs_DOMAIN_ID, perf_funcs_BENCHMARK_CLASS_NUMBER, PERF_FUNCS_BENCHMARKEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t perf_funcs_BENCHMARKevent2c = {
  perf_funcs_DOMAIN_ID, perf_funcs_BENCHMARK_CLASS_NUMBER, PERF_FUNCS_BENCHMARKEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t perf_funcs_BENCHMARK_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  perf_funcs_BENCHMARK_STATE_1 (running) */
  { perf_funcs_BENCHMARK_STATE_1, perf_funcs_BENCHMARK_STATE_2 },
  /* row 2:  perf_funcs_BENCHMARK_STATE_2 (done) */
  { perf_funcs_BENCHMARK_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t perf_funcs_BENCHMARK_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) perf_funcs_BENCHMARK_act1,  /* running */
    (StateAction_t) perf_funcs_BENCHMARK_act2  /* done */
  };

/*
 * instance state machine event dispatching
 */
void
perf_funcs_BENCHMARK_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = perf_funcs_BENCHMARK_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        /* Execute the state action and update the current state.  */
        ( *perf_funcs_BENCHMARK_acts[ next_state ] )( instance, event );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
      } else {
        /* empty else */
      }
    }
  }
}


