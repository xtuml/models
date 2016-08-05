/*----------------------------------------------------------------------------
 * File:  RealizedClass_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  RealizedClass (RealizedClass)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "InterProjectRealizedClass_sys_types.h"
#include "LOG_bridge.h"
#include "RealizedClass_bridge.h"
#include "RealizedClass_bridge.h"
#include "InterProjectRealizedClass_sys_types.h"

/*
 * Bridge:  ReturnUniqueID
 */
Escher_UniqueID_t
RealizedClass_ReturnUniqueID()
{
  Escher_UniqueID_t result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  ReturnBoolean
 */
bool
RealizedClass_ReturnBoolean()
{
  bool result = false;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  ReturnReal
 */
r_t
RealizedClass_ReturnReal()
{
  r_t result = 0.0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  ReturnString
 */
c_t *
RealizedClass_ReturnString( c_t A0xtumlsret[ESCHER_SYS_MAX_STRING_LEN] )
{
  c_t * result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  ReturnInteger
 */
i_t
RealizedClass_ReturnInteger()
{
  i_t result = 0;
  /* Insert your implementation code here... */
  return result;
}


/*
 * Bridge:  ByValueAndByRef
 */
void
RealizedClass_ByValueAndByRef( i_t * p_digit, const i_t p_number, c_t p_sentence[ESCHER_SYS_MAX_STRING_LEN], c_t p_word[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  ByValue
 */
void
RealizedClass_ByValue( const r_t p_fraction, const bool p_logic, const i_t p_number, c_t p_word[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  ByRef
 */
void
RealizedClass_ByRef( r_t * p_fraction, bool * p_logic, i_t * p_number, c_t p_word[ESCHER_SYS_MAX_STRING_LEN] )
{
  /* Replace/Insert your implementation code here... */
}


