/*----------------------------------------------------------------------------
 * File:  ExecutableComponent.c
 *
 * UML Component Port Messages
 * Component/Module Name:  ExecutableComponent
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "VerifierUDTAsSDTTests_sys_types.h"
#include "ExecutableComponent_classes.h"

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  initialize
 */
void
ExecutableComponent_initialize()
{
  ExecutableComponent_KEY * clazz; i_t x; ExecutableComponent_KEY * clazz2; 
  /* CREATE OBJECT INSTANCE clazz OF KEY */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE clazz OF KEY" );
  clazz = (ExecutableComponent_KEY *) Escher_CreateInstance( ExecutableComponent_DOMAIN_ID, ExecutableComponent_KEY_CLASS_NUMBER );
  /* ASSIGN x = clazz.AttributeAsUDTType */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN x = clazz.AttributeAsUDTType" );
  x = clazz->AttributeAsUDTType;
  /* CREATE OBJECT INSTANCE clazz2 OF KEY */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE clazz2 OF KEY" );
  clazz2 = (ExecutableComponent_KEY *) Escher_CreateInstance( ExecutableComponent_DOMAIN_ID, ExecutableComponent_KEY_CLASS_NUMBER );

}

#if ExecutableComponent_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const ExecutableComponent_class_info[ ExecutableComponent_MAX_CLASS_NUMBERS ] = {
  ExecutableComponent_CLASS_INFO_INIT
};
#endif


void ExecutableComponent_execute_initialization()
{
}
