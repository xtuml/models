/*----------------------------------------------------------------------------
 * File:  stringtest.c
 *
 * UML Component Port Messages
 * Component/Module Name:  stringtest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "string_return_test_sys_types.h"
#include "stringtest.h"
#include "LOG_bridge.h"
#include "stringtest_classes.h"

/*
 * Interface:  instr
 * Provided Port:  INSTR
 * To Provider Message:  start
 */
void
stringtest_INSTR_start()
{
  /* ::init(  ) */
  stringtest_init();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  init
 */
void
stringtest_init()
{
  stringtest_pong * p2;stringtest_ping * p1;stringtest_buffer * b;stringtest_device * d;stringtest_host * h;
  /* LOG::LogInfo( message:intializing ) */
  LOG_LogInfo( "intializing" );
  /* CREATE OBJECT INSTANCE h OF host */
  h = (stringtest_host *) Escher_CreateInstance( stringtest_DOMAIN_ID, stringtest_host_CLASS_NUMBER );
  /* ASSIGN h.upper = upper information */
  Escher_strcpy( h->upper, "upper information" );
  /* CREATE OBJECT INSTANCE d OF device */
  d = (stringtest_device *) Escher_CreateInstance( stringtest_DOMAIN_ID, stringtest_device_CLASS_NUMBER );
  /* ASSIGN d.lower = lower storage area */
  Escher_strcpy( d->lower, "lower storage area" );
  /* CREATE OBJECT INSTANCE b OF buffer */
  b = (stringtest_buffer *) Escher_CreateInstance( stringtest_DOMAIN_ID, stringtest_buffer_CLASS_NUMBER );
  /* ASSIGN b.cache = ABCDEFGHIJKLMNOPQRSTUVWXYZ */
  Escher_strcpy( b->cache, "ABCDEFGHIJKLMNOPQRSTUVWXYZ" );
  /* RELATE h TO b ACROSS R1 */
  stringtest_buffer_R1_Link( h, b );
  /* RELATE d TO b ACROSS R2 */
  stringtest_buffer_R2_Link( d, b );
  /* GENERATE host1:get(s:d.lower, d:d) TO h */
  { stringtest_hostevent1 * e = (stringtest_hostevent1 *) Escher_NewxtUMLEvent( h, &stringtest_hostevent1c );
    Escher_strcpy( e->p_s, d->lower );    e->p_d = d;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* CREATE OBJECT INSTANCE p1 OF ping */
  p1 = (stringtest_ping *) Escher_CreateInstance( stringtest_DOMAIN_ID, stringtest_ping_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE p2 OF pong */
  p2 = (stringtest_pong *) Escher_CreateInstance( stringtest_DOMAIN_ID, stringtest_pong_CLASS_NUMBER );
  /* GENERATE ping1:bounce(p:p2, s:ping pong string) TO p1 */
  { stringtest_pingevent1 * e = (stringtest_pingevent1 *) Escher_NewxtUMLEvent( p1, &stringtest_pingevent1c );
    e->p_p = p2;    Escher_strcpy( e->p_s, "ping pong string" );
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const stringtest_class_info[ stringtest_MAX_CLASS_NUMBERS ] = {
  &pG_stringtest_host_extent,
  &pG_stringtest_device_extent,
  &pG_stringtest_ping_extent,
  &pG_stringtest_pong_extent,
  &pG_stringtest_buffer_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t stringtest_EventDispatcher[ stringtest_STATE_MODELS ] = {
  stringtest_class_dispatchers
};

void stringtest_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  stringtest
   */
  stringtest_init();

}
