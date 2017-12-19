/*----------------------------------------------------------------------------
 * File:  typeminer_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  typeminer (typeminer)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "typeminer_sys_types.h"
#include "typeminer_bridge.h"

int typeminer_miner( char *, int );

/*
 * Bridge:  referreds
 */
i_t
typeminer_referreds( c_t p_body[ESCHER_SYS_MAX_STRING_LEN], c_t p_labels[1024][ESCHER_SYS_MAX_STRING_LEN], c_t p_name[ESCHER_SYS_MAX_STRING_LEN] )
{
  typeminer_miner( p_body, ESCHER_SYS_MAX_STRING_LEN );
}

