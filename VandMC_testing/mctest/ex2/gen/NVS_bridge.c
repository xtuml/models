/*----------------------------------------------------------------------------
 * File:  NVS_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Non-Volatile Storage (NVS)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "NVS_bridge.h"

/*
 * Bridge:  insert
 */
i_t
NVS_insert( i_t p_key, i_t p_length, c_t p_pointer[ESCHER_SYS_MAX_STRING_LEN], i_t p_type)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  update
 */
i_t
NVS_update( i_t p_key, i_t p_length, c_t p_pointer[ESCHER_SYS_MAX_STRING_LEN], i_t p_type)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  select
 */
i_t
NVS_select( i_t p_key, i_t p_length, c_t p_pointer[ESCHER_SYS_MAX_STRING_LEN], i_t p_type)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  remove
 */
i_t
NVS_remove( i_t p_key, i_t p_length, c_t p_pointer[ESCHER_SYS_MAX_STRING_LEN], i_t p_type)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  space_available
 */
i_t
NVS_space_available()
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  space_used
 */
i_t
NVS_space_used()
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  space_total
 */
i_t
NVS_space_total()
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  initialize
 */
i_t
NVS_initialize()
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  format
 */
i_t
NVS_format()
{
  return 0;
}


/*
 * Bridge:  defrag
 */
i_t
NVS_defrag()
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  next
 */
i_t
NVS_next( i_t * p_key, i_t p_length, c_t p_pointer[ESCHER_SYS_MAX_STRING_LEN], i_t * p_type)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  checksum
 */
i_t
NVS_checksum( i_t p_first, i_t p_second)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  version
 */
i_t
NVS_version( i_t p_first, i_t p_second)
{
  i_t result;
  /* Insert your implementation code here... */
  return result;
}


