/*----------------------------------------------------------------------------
 * File:  ex2_TRAN_class.c
 *
 * Class:       Transformer  (TRAN)
 * Component:   ex2
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "ex2_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "TIM_bridge.h"
#include "ex2_BR_bridge.h"
#include "ex2_classes.h"

/*
 * class operation:  ret_int
 */
i_t
ex2_TRAN_op_ret_int( const i_t p_i )
{
  /* RETURN PARAM.i */
  {i_t xtumlOALrv = p_i;
  return xtumlOALrv;}
}

/*
 * class operation:  ret_string
 */
c_t *
ex2_TRAN_op_ret_string( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  i_t i;
  /* ASSIGN i = 9 */
  i = 9;
  /* WHILE ( i > 0 ) */
  while ( i > 0 ) {
    c_t vtrv6ex2_TRAN_op_ret_string215[ESCHER_SYS_MAX_STRING_LEN];c_t str[ESCHER_SYS_MAX_STRING_LEN];c_t localstring[ESCHER_SYS_MAX_STRING_LEN];
    /* ASSIGN localstring = abc */
    Escher_strcpy( localstring, "abc" );
    /* ASSIGN str = TRAN::ret_string2(s:localstring) */
    Escher_strcpy( str, ex2_TRAN_op_ret_string2(vtrv6ex2_TRAN_op_ret_string215, localstring) );
    /* ASSIGN i = ( i - 1 ) */
    i = ( i - 1 );
  }
  /* RETURN PARAM.s */
  {c_t * xtumlOALrv = p_s;
  return Escher_strcpy( A0xtumlsret, xtumlOALrv );}
}

/*
 * class operation:  ret_bool
 */
bool
ex2_TRAN_op_ret_bool( const bool p_b )
{
  /* RETURN PARAM.b */
  {bool xtumlOALrv = p_b;
  return xtumlOALrv;}
}

/*
 * class operation:  ret_real
 */
r_t
ex2_TRAN_op_ret_real( const r_t p_r )
{
  /* RETURN PARAM.r */
  {r_t xtumlOALrv = p_r;
  return xtumlOALrv;}
}

/*
 * class operation:  ret_string2
 */
c_t *
ex2_TRAN_op_ret_string2( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s = ( PARAM.s + xyz ) */
  Escher_strcpy( s, ( Escher_stradd( p_s, "xyz" ) ) );
  /* RETURN s */
  {c_t * xtumlOALrv = s;
  return Escher_strcpy( A0xtumlsret, xtumlOALrv );}
}

/*
 * instance operation:  ret_string3
 */
c_t *
ex2_TRAN_op_ret_string3( ex2_TRAN * self, c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN], c_t p_s[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t vtrv1ex2_TRAN_op_ret_string33[ESCHER_SYS_MAX_STRING_LEN];c_t vtrv1ex2_TRAN_op_ret_string211[ESCHER_SYS_MAX_STRING_LEN];c_t s[ESCHER_SYS_MAX_STRING_LEN];
  /* ASSIGN s = TRAN::ret_string2(TRAN::ret_string(s:PARAM.s)) */
  Escher_strcpy( s, ex2_TRAN_op_ret_string2(vtrv1ex2_TRAN_op_ret_string211, ex2_TRAN_op_ret_string(vtrv1ex2_TRAN_op_ret_string33, p_s)) );
  /* RETURN s */
  {c_t * xtumlOALrv = s;
  return Escher_strcpy( A0xtumlsret, xtumlOALrv );}
}

/*
 * class operation:  ret_int_from_real
 */
i_t
ex2_TRAN_op_ret_int_from_real( const r_t p_r )
{
  /* RETURN PARAM.r */
  {i_t xtumlOALrv = (i_t)(p_r);
  return xtumlOALrv;}
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Transformer  (TRAN)
 * Component:  ex2
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ex2_TRAN_container[ ex2_TRAN_MAX_EXTENT_SIZE ];
static ex2_TRAN ex2_TRAN_instances[ ex2_TRAN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ex2_TRAN_extent = {
  {0}, {0}, &ex2_TRAN_container[ 0 ],
  (Escher_iHandle_t) &ex2_TRAN_instances,
  sizeof( ex2_TRAN ), 0, ex2_TRAN_MAX_EXTENT_SIZE
  };

