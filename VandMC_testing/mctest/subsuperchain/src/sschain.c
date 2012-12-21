/*----------------------------------------------------------------------------
 * File:  sschain.c
 *
 * UML Component Port Messages
 * Component/Module Name:  sschain
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "subsuperchain_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "sschain_classes.h"

/*
 * Interface:  instrumentation
 * Provided Port:  instrumentation
 * To Provider Message:  start_test
 */
void
sschain_instrumentation_start_test()
{
  /* ::init(  ) */
  sschain_init();
  /* ::test(  ) */
  sschain_test();
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  init
 */
void
sschain_init()
{
  sschain_TOP * top; sschain_SUPER * super1; sschain_SUPER * super2; sschain_SUPER * super3; sschain_SUPER * super4; sschain_SUBA * suba1; sschain_SUBA * suba2; sschain_SUBA * suba3; sschain_SUBB * subb1; 
  /* CREATE OBJECT INSTANCE top OF TOP */
  top = (sschain_TOP *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_TOP_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE super1 OF SUPER */
  super1 = (sschain_SUPER *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUPER_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE super2 OF SUPER */
  super2 = (sschain_SUPER *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUPER_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE super3 OF SUPER */
  super3 = (sschain_SUPER *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUPER_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE super4 OF SUPER */
  super4 = (sschain_SUPER *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUPER_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE suba1 OF SUBA */
  suba1 = (sschain_SUBA *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUBA_CLASS_NUMBER );
  /* ASSIGN suba1.i = 1 */
  suba1->i = 1;
  /* CREATE OBJECT INSTANCE suba2 OF SUBA */
  suba2 = (sschain_SUBA *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUBA_CLASS_NUMBER );
  /* ASSIGN suba2.i = 2 */
  suba2->i = 2;
  /* CREATE OBJECT INSTANCE suba3 OF SUBA */
  suba3 = (sschain_SUBA *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUBA_CLASS_NUMBER );
  /* ASSIGN suba3.i = 3 */
  suba3->i = 3;
  /* CREATE OBJECT INSTANCE subb1 OF SUBB */
  subb1 = (sschain_SUBB *) Escher_CreateInstance( sschain_DOMAIN_ID, sschain_SUBB_CLASS_NUMBER );
  /* ASSIGN subb1.j = 4 */
  subb1->j = 4;
  /* RELATE super1 TO top ACROSS R1 */
  sschain_SUPER_R1_Link( top, super1 );
  /* RELATE super2 TO top ACROSS R1 */
  sschain_SUPER_R1_Link( top, super2 );
  /* RELATE super3 TO top ACROSS R1 */
  sschain_SUPER_R1_Link( top, super3 );
  /* RELATE super4 TO top ACROSS R1 */
  sschain_SUPER_R1_Link( top, super4 );
  /* RELATE super1 TO suba1 ACROSS R2 */
  sschain_SUBA_R2_Link( super1, suba1 );
  /* RELATE super2 TO suba2 ACROSS R2 */
  sschain_SUBA_R2_Link( super2, suba2 );
  /* RELATE super3 TO suba3 ACROSS R2 */
  sschain_SUBA_R2_Link( super3, suba3 );
  /* RELATE super4 TO subb1 ACROSS R2 */
  sschain_SUBB_R2_Link( super4, subb1 );

}


/*
 * Domain Function:  test
 */
void
sschain_test()
{
  bool success; sschain_TOP * top=0; sschain_SUPER * super = 0; /* super (SUPER) */
 Escher_ObjectSet_s supers_space={0}; Escher_ObjectSet_s * supers = &supers_space; /* supers (SUPER) */
 i_t n; sschain_SUBA * suba = 0; /* suba (SUBA) */
 i_t ani; sschain_SUPER * asuper = 0; /* asuper (SUPER) */
 sschain_SUBA * another_suba = 0; /* another_suba (SUBA) */
 i_t anotheri; sschain_SUBB * subb = 0; /* subb (SUBB) */
 sschain_SUPER * bsuper = 0; /* bsuper (SUPER) */
 Escher_ObjectSet_s subas_space={0}; Escher_ObjectSet_s * subas = &subas_space; /* subas (SUBA) */
 Escher_ObjectSet_s subbs_space={0}; Escher_ObjectSet_s * subbs = &subbs_space; /* subbs (SUBB) */
 
  /* ASSIGN success = TRUE */
  success = TRUE;
  /* SELECT any top FROM INSTANCES OF TOP */
  top = (sschain_TOP *) Escher_SetGetAny( &pG_sschain_TOP_extent.active );
  /* SELECT any super RELATED BY top->SUPER[R1] */
  super = (sschain_SUPER *) Escher_SetGetAny( &top->SUPER_R1 );
  /* IF ( empty super ) */
  if ( ( 0 == super ) ) {
    /* LOG::LogFailure( message:'failed to get super' ) */
    LOG_LogFailure( "failed to get super" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many supers RELATED BY top->SUPER[R1] */
  Escher_ClearSet( supers );
  if ( 0 != top ) {
    Escher_CopySet( supers, &top->SUPER_R1 );
  }
  /* ASSIGN n = cardinality supers */
  n = Escher_SetCardinality( supers );
  /* IF ( ( 4 != n ) ) */
  if ( ( 4 != n ) ) {
    /* LOG::LogFailure( message:'wrong number of supers' ) */
    LOG_LogFailure( "wrong number of supers" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT any suba RELATED BY top->SUPER[R1]->SUBA[R2] */
  suba = 0;
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( ( 0 == suba ) && ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) ) {
  if ( sschain_SUBA_CLASS_NUMBER == SUPER_R1->R2_object_id )  suba = (sschain_SUBA *) SUPER_R1->R2_subtype;
}}}
  /* IF ( ( suba.i > 3 ) ) */
  if ( ( suba->i > 3 ) ) {
    /* LOG::LogFailure( message:'suba selected wrong' ) */
    LOG_LogFailure( "suba selected wrong" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* ASSIGN ani = suba.i */
  ani = suba->i;
  /* SELECT one asuper RELATED BY suba->SUPER[R2] */
  asuper = suba->SUPER_R2;
  /* SELECT one another_suba RELATED BY asuper->SUBA[R2] */
  another_suba = 0;
  if ( sschain_SUBA_CLASS_NUMBER == asuper->R2_object_id )  another_suba = (sschain_SUBA *) asuper->R2_subtype;
  /* ASSIGN anotheri = another_suba.i */
  anotheri = another_suba->i;
  /* IF ( ( ani != anotheri ) ) */
  if ( ( ani != anotheri ) ) {
    /* LOG::LogFailure( message:'could not select a single suba' ) */
    LOG_LogFailure( "could not select a single suba" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT one suba RELATED BY asuper->SUBA[R2] WHERE ( ( SELECTED.i == ani ) ) */
  suba = 0;
  if ( sschain_SUBA_CLASS_NUMBER == asuper->R2_object_id )  {suba = 0;
  {sschain_SUBA * selected = asuper->R2_subtype;
  if ( ( 0 != selected ) && ( selected->i == ani ) ) {
    suba = selected;
  }}}
  /* IF ( ( suba.i != ani ) ) */
  if ( ( suba->i != ani ) ) {
    /* LOG::LogFailure( message:'could not select a single suba with where clause' ) */
    LOG_LogFailure( "could not select a single suba with where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT any subb RELATED BY top->SUPER[R1]->SUBB[R2] */
  subb = 0;
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( ( 0 == subb ) && ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) ) {
  if ( sschain_SUBB_CLASS_NUMBER == SUPER_R1->R2_object_id )  subb = (sschain_SUBB *) SUPER_R1->R2_subtype;
}}}
  /* IF ( ( subb.j != 4 ) ) */
  if ( ( subb->j != 4 ) ) {
    /* LOG::LogFailure( message:'subb selected wrong' ) */
    LOG_LogFailure( "subb selected wrong" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT one bsuper RELATED BY subb->SUPER[R2] */
  bsuper = subb->SUPER_R2;
  /* SELECT one subb RELATED BY bsuper->SUBB[R2] WHERE ( ( SELECTED.j == 4 ) ) */
  subb = 0;
  if ( sschain_SUBB_CLASS_NUMBER == bsuper->R2_object_id )  {subb = 0;
  {sschain_SUBB * selected = bsuper->R2_subtype;
  if ( ( 0 != selected ) && ( selected->j == 4 ) ) {
    subb = selected;
  }}}
  /* IF ( ( subb.j != 4 ) ) */
  if ( ( subb->j != 4 ) ) {
    /* LOG::LogFailure( message:'could not select a single subb with where clause' ) */
    LOG_LogFailure( "could not select a single subb with where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT any subb RELATED BY top->SUPER[R1]->SUBB[R2] */
  subb = 0;
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( ( 0 == subb ) && ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) ) {
  if ( sschain_SUBB_CLASS_NUMBER == SUPER_R1->R2_object_id )  subb = (sschain_SUBB *) SUPER_R1->R2_subtype;
}}}
  /* IF ( ( subb.j < 4 ) ) */
  if ( ( subb->j < 4 ) ) {
    /* LOG::LogFailure( message:'subb selected wrong' ) */
    LOG_LogFailure( "subb selected wrong" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subas RELATED BY top->SUPER[R1]->SUBA[R2] */
  Escher_ClearSet( subas );
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) {
  if ( sschain_SUBA_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBA * R2_subtype = SUPER_R1->R2_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subas, R2_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) subas, R2_subtype );
  }}
}}}
  /* ASSIGN n = cardinality subas */
  n = Escher_SetCardinality( subas );
  /* IF ( ( 3 != n ) ) */
  if ( ( 3 != n ) ) {
    /* LOG::LogFailure( message:'subas selected wrong' ) */
    LOG_LogFailure( "subas selected wrong" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT any suba RELATED BY top->SUPER[R1]->SUBA[R2] WHERE ( TRUE ) */
  suba = 0;
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( ( 0 == suba ) && ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) ) {
  if ( sschain_SUBA_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBA * selected = (sschain_SUBA *) SUPER_R1->R2_subtype;
  if ( ( 0 != selected ) && TRUE ) {
    suba = selected;
  }}
}}}
  /* IF ( ( suba.i > 3 ) ) */
  if ( ( suba->i > 3 ) ) {
    /* LOG::LogFailure( message:'incorrectly selecting any with fixed where clause' ) */
    LOG_LogFailure( "incorrectly selecting any with fixed where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT any subb RELATED BY top->SUPER[R1]->SUBB[R2] WHERE ( TRUE ) */
  subb = 0;
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( ( 0 == subb ) && ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) ) {
  if ( sschain_SUBB_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBB * selected = (sschain_SUBB *) SUPER_R1->R2_subtype;
  if ( ( 0 != selected ) && TRUE ) {
    subb = selected;
  }}
}}}
  /* IF ( ( 4 != subb.j ) ) */
  if ( ( 4 != subb->j ) ) {
    /* LOG::LogFailure( message:'incorrectly selecting any with fixed where clause' ) */
    LOG_LogFailure( "incorrectly selecting any with fixed where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subas RELATED BY top->SUPER[R1]->SUBA[R2] WHERE ( TRUE ) */
  Escher_ClearSet( subas );
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) {
  if ( sschain_SUBA_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBA * selected = SUPER_R1->R2_subtype;
  if ( ( 0 != selected ) && TRUE ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subas, selected ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) subas, selected );
  }}}
}}}
  /* ASSIGN n = cardinality subas */
  n = Escher_SetCardinality( subas );
  /* IF ( ( 3 != n ) ) */
  if ( ( 3 != n ) ) {
    /* LOG::LogFailure( message:'incorrectly selecting with fixed where clause' ) */
    LOG_LogFailure( "incorrectly selecting with fixed where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subbs RELATED BY top->SUPER[R1]->SUBB[R2] WHERE ( TRUE ) */
  Escher_ClearSet( subbs );
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) {
  if ( sschain_SUBB_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBB * selected = SUPER_R1->R2_subtype;
  if ( ( 0 != selected ) && TRUE ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subbs, selected ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) subbs, selected );
  }}}
}}}
  /* ASSIGN n = cardinality subbs */
  n = Escher_SetCardinality( subbs );
  /* IF ( ( 1 != n ) ) */
  if ( ( 1 != n ) ) {
    /* LOG::LogFailure( message:'incorrectly selecting subbs with fixed where clause' ) */
    LOG_LogFailure( "incorrectly selecting subbs with fixed where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subas RELATED BY top->SUPER[R1]->SUBA[R2] WHERE ( ( SELECTED.i < 3 ) ) */
  Escher_ClearSet( subas );
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) {
  if ( sschain_SUBA_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBA * selected = SUPER_R1->R2_subtype;
  if ( ( 0 != selected ) && ( selected->i < 3 ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subas, selected ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) subas, selected );
  }}}
}}}
  /* ASSIGN n = cardinality subas */
  n = Escher_SetCardinality( subas );
  /* IF ( ( 2 != n ) ) */
  if ( ( 2 != n ) ) {
    /* LOG::LogFailure( message:'incorrectly selecting with specific where clause' ) */
    LOG_LogFailure( "incorrectly selecting with specific where clause" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subbs RELATED BY top->SUPER[R1]->SUBB[R2] */
  Escher_ClearSet( subbs );
  {  if ( 0 != top ) {
  sschain_SUPER * SUPER_R1;
  Escher_Iterator_s iSUPER_R1;
  Escher_IteratorReset( &iSUPER_R1, &top->SUPER_R1 );
  while ( 0 != ( SUPER_R1 = (sschain_SUPER *) Escher_IteratorNext( &iSUPER_R1 ) ) ) {
  if ( sschain_SUBB_CLASS_NUMBER == SUPER_R1->R2_object_id )  {sschain_SUBB * R2_subtype = SUPER_R1->R2_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subbs, R2_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) subbs, R2_subtype );
  }}
}}}
  /* ASSIGN n = cardinality subbs */
  n = Escher_SetCardinality( subbs );
  /* IF ( ( 1 != n ) ) */
  if ( ( 1 != n ) ) {
    /* LOG::LogFailure( message:'subbs selected wrong' ) */
    LOG_LogFailure( "subbs selected wrong" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many supers FROM INSTANCES OF SUPER */
  Escher_CopySet( supers, &pG_sschain_SUPER_extent.active );
  /* SELECT many subas RELATED BY supers->SUBA[R2] */
  Escher_ClearSet( subas );
  {sschain_SUPER * sschain_SUPER_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, supers );
  while ( 0 != ( sschain_SUPER_linkage = (sschain_SUPER *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    if ( sschain_SUBA_CLASS_NUMBER == sschain_SUPER_linkage->R2_object_id )    {sschain_SUBA * R2_subtype = sschain_SUPER_linkage->R2_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subas, R2_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) subas, R2_subtype );
  }}}}
  /* ASSIGN n = cardinality subas */
  n = Escher_SetCardinality( subas );
  /* IF ( ( 3 != n ) ) */
  if ( ( 3 != n ) ) {
    /* LOG::LogFailure( message:'many to one selection wrong a' ) */
    LOG_LogFailure( "many to one selection wrong a" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subbs RELATED BY supers->SUBB[R2] */
  Escher_ClearSet( subbs );
  {sschain_SUPER * sschain_SUPER_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, supers );
  while ( 0 != ( sschain_SUPER_linkage = (sschain_SUPER *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    if ( sschain_SUBB_CLASS_NUMBER == sschain_SUPER_linkage->R2_object_id )    {sschain_SUBB * R2_subtype = sschain_SUPER_linkage->R2_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subbs, R2_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) subbs, R2_subtype );
  }}}}
  /* ASSIGN n = cardinality subbs */
  n = Escher_SetCardinality( subbs );
  /* IF ( ( 1 != n ) ) */
  if ( ( 1 != n ) ) {
    /* LOG::LogFailure( message:'many to one selection wrong b' ) */
    LOG_LogFailure( "many to one selection wrong b" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subas RELATED BY supers->SUBA[R2] WHERE ( ( SELECTED.i < 9 ) ) */
  Escher_ClearSet( subas );
  {sschain_SUPER * sschain_SUPER_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, supers );
  while ( 0 != ( sschain_SUPER_linkage = (sschain_SUPER *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    if ( sschain_SUBA_CLASS_NUMBER == sschain_SUPER_linkage->R2_object_id )    {sschain_SUBA * selected = sschain_SUPER_linkage->R2_subtype;
    if ( ( 0 != selected ) && ( selected->i < 9 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subas, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) subas, selected );
  }}}}}
  /* ASSIGN n = cardinality subas */
  n = Escher_SetCardinality( subas );
  /* IF ( ( 3 != n ) ) */
  if ( ( 3 != n ) ) {
    /* LOG::LogFailure( message:'many to one where selection wrong a' ) */
    LOG_LogFailure( "many to one where selection wrong a" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* SELECT many subbs RELATED BY supers->SUBB[R2] WHERE ( TRUE ) */
  Escher_ClearSet( subbs );
  {sschain_SUPER * sschain_SUPER_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, supers );
  while ( 0 != ( sschain_SUPER_linkage = (sschain_SUPER *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    if ( sschain_SUBB_CLASS_NUMBER == sschain_SUPER_linkage->R2_object_id )    {sschain_SUBB * selected = sschain_SUPER_linkage->R2_subtype;
    if ( ( 0 != selected ) && TRUE ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subbs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) subbs, selected );
  }}}}}
  /* ASSIGN n = cardinality subbs */
  n = Escher_SetCardinality( subbs );
  /* IF ( ( 1 != n ) ) */
  if ( ( 1 != n ) ) {
    /* LOG::LogFailure( message:'many to one where selection wrong b' ) */
    LOG_LogFailure( "many to one where selection wrong b" );
    /* ASSIGN success = FALSE */
    success = FALSE;
  }
  /* IF ( success ) */
  if ( success ) {
    /* LOG::LogSuccess( message:'PASSED' ) */
    LOG_LogSuccess( "PASSED" );
  }
  else {
    /* LOG::LogFailure( message:'FAILED' ) */
    LOG_LogFailure( "FAILED" );
  }
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
    Escher_ClearSet( supers ); /* supers (SUPER) */  Escher_ClearSet( subas ); /* subas (SUBA) */  Escher_ClearSet( subbs ); /* subbs (SUBB) */

}

#if sschain_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const sschain_class_info[ sschain_MAX_CLASS_NUMBERS ] = {
  sschain_CLASS_INFO_INIT
};
#endif


void sschain_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  sschain
   */
  sschain_init();

  /*
   * Initialization Function:  test
   * Component:  sschain
   */
  sschain_test();

}
