/*----------------------------------------------------------------------------
 * File:  ex2.c
 *
 * UML Component Port Messages
 * Component/Module Name:  ex2
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ex2_BR_bridge.h"
#include "ARCH_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "ex2_classes.h"

/*
 * Interface:  instrumentation
 * Provided Port:  instrumentation
 * To Provider Message:  start_test
 */
void
ex2_instrumentation_start_test()
{
  /* ::setup(  ) */
  ex2_setup();
  /* ::test(  ) */
  ex2_test();
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  setup
 */
void
ex2_setup()
{
  Escher_ObjectSet_s trans_space={0}; Escher_ObjectSet_s * trans = &trans_space; /* trans (TRAN) */ 
  /* SELECT many trans FROM INSTANCES OF TRAN */
  Escher_CopySet( trans, &pG_ex2_TRAN_extent.active );
  /* IF ( empty trans ) */
  if ( Escher_SetIsEmpty( trans ) ) {
    i_t i; ex2_DR * dr; 
    /* LOG::LogInfo( message:'Did not find any PEI data, initializing NVS' ) */
    LOG_LogInfo( "Did not find any PEI data, initializing NVS" );
    /* ASSIGN i = NVS::format() */
    i = NVS_format();
    /* IF ( ( i != 0 ) ) */
    if ( ( i != 0 ) ) {
      /* LOG::LogFailure( message:'Error formatting the NVS.' ) */
      LOG_LogFailure( "Error formatting the NVS." );
    }
    /* ASSIGN i = NVS::version(first:1, second:2) */
    i = NVS_version( 1, 2 );
    /* ASSIGN i = NVS::checksum(first:1, second:2) */
    i = NVS_checksum( 1, 2 );
    /* CREATE OBJECT INSTANCE dr OF DR */
    dr = (ex2_DR *) Escher_CreateInstance( ex2_DOMAIN_ID, ex2_DR_CLASS_NUMBER );
    dr->dr_id = (Escher_UniqueID_t) dr;
    /* ASSIGN i = PERSIST::commit() */
    i = PERSIST_commit();
    /* IF ( ( i != 0 ) ) */
    if ( ( i != 0 ) ) {
      /* LOG::LogFailure( message:'Error commiting persistence information. Error code is ' ) */
      LOG_LogFailure( "Error commiting persistence information. Error code is " );
      /* LOG::LogInteger( message:i ) */
      LOG_LogInteger( i );
    }
  }
  else {
    /* LOG::LogInfo( message:'Found PEI data.' ) */
    LOG_LogInfo( "Found PEI data." );
  }
  Escher_ClearSet( trans );

}


/*
 * Domain Function:  test
 */
void
ex2_test()
{
  Escher_ObjectSet_s drs_space={0}; Escher_ObjectSet_s * drs = &drs_space; /* drs (DR) */ ex2_DR * dr=0; 
  /* SELECT many drs FROM INSTANCES OF DR */
  Escher_CopySet( drs, &pG_ex2_DR_extent.active );
  /* IF ( empty drs ) */
  if ( Escher_SetIsEmpty( drs ) ) {
    /* LOG::LogFailure( message:'Failed to select an instance of DR' ) */
    LOG_LogFailure( "Failed to select an instance of DR" );
  }
  /* FOR EACH dr IN drs */
  { Escher_Iterator_s iterex2_DRdr;
  ex2_DR * ex2_DRiterex2_DRdr;
  Escher_IteratorReset( &iterex2_DRdr, drs );
  while ( (ex2_DRiterex2_DRdr = (ex2_DR *)Escher_IteratorNext( &iterex2_DRdr )) != 0 ) {
    dr = ex2_DRiterex2_DRdr; {
    /* GENERATE DR1:start test() TO dr */
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( dr, &ex2_DRevent1c );
      Escher_SendEvent( e );
    }
  }}}
  Escher_ClearSet( drs );

}


/*
 * Domain Function:  xit
 */
void
ex2_xit()
{
  Escher_ObjectSet_s trans_space={0}; Escher_ObjectSet_s * trans = &trans_space; /* trans (TRAN) */ ex2_TRAN * tran=0; Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ ex2_A * a=0; Escher_ObjectSet_s nois_space={0}; Escher_ObjectSet_s * nois = &nois_space; /* nois (NOI) */ ex2_NOI * noi=0; 
  /* SELECT many trans FROM INSTANCES OF TRAN */
  Escher_CopySet( trans, &pG_ex2_TRAN_extent.active );
  /* FOR EACH tran IN trans */
  { Escher_Iterator_s iterex2_TRANtran;
  ex2_TRAN * ex2_TRANiterex2_TRANtran;
  Escher_IteratorReset( &iterex2_TRANtran, trans );
  while ( (ex2_TRANiterex2_TRANtran = (ex2_TRAN *)Escher_IteratorNext( &iterex2_TRANtran )) != 0 ) {
    tran = ex2_TRANiterex2_TRANtran; {
    /* DELETE OBJECT INSTANCE tran */
    if ( 0 == tran ) {
      XTUML_EMPTY_HANDLE_TRACE( "TRAN", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) tran, ex2_DOMAIN_ID, ex2_TRAN_CLASS_NUMBER );
  }}}
  /* SELECT many as FROM INSTANCES OF A */
  Escher_CopySet( as, &pG_ex2_A_extent.active );
  /* FOR EACH a IN as */
  { Escher_Iterator_s iterex2_Aa;
  ex2_A * ex2_Aiterex2_Aa;
  Escher_IteratorReset( &iterex2_Aa, as );
  while ( (ex2_Aiterex2_Aa = (ex2_A *)Escher_IteratorNext( &iterex2_Aa )) != 0 ) {
    a = ex2_Aiterex2_Aa; {
    /* DELETE OBJECT INSTANCE a */
    if ( 0 == a ) {
      XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) a, ex2_DOMAIN_ID, ex2_A_CLASS_NUMBER );
  }}}
  /* SELECT many nois FROM INSTANCES OF NOI */
  Escher_CopySet( nois, &pG_ex2_NOI_extent.active );
  /* FOR EACH noi IN nois */
  { Escher_Iterator_s iterex2_NOInoi;
  ex2_NOI * ex2_NOIiterex2_NOInoi;
  Escher_IteratorReset( &iterex2_NOInoi, nois );
  while ( (ex2_NOIiterex2_NOInoi = (ex2_NOI *)Escher_IteratorNext( &iterex2_NOInoi )) != 0 ) {
    noi = ex2_NOIiterex2_NOInoi; {
    /* DELETE OBJECT INSTANCE noi */
    if ( 0 == noi ) {
      XTUML_EMPTY_HANDLE_TRACE( "NOI", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) noi, ex2_DOMAIN_ID, ex2_NOI_CLASS_NUMBER );
  }}}
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();
  Escher_ClearSet( trans );Escher_ClearSet( as );Escher_ClearSet( nois );

}

#if ex2_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const ex2_class_info[ ex2_MAX_CLASS_NUMBERS ] = {
  ex2_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t ex2_EventDispatcher[ ex2_STATE_MODELS ] = {
  ex2_class_dispatchers
};

void ex2_execute_initialization()
{
  /*
   * Initialization Function:  setup
   * Component:  ex2
   */
  ex2_setup();

  /*
   * Initialization Function:  test
   * Component:  ex2
   */
  ex2_test();

}
