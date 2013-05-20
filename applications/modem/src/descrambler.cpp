/*----------------------------------------------------------------------------
 * File:  descrambler.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  descrambler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "descrambler.h"

/*
 * Interface:  flow
 * Provided Port:  Port2
 * To Provider Message:  sample
 */
void
descrambler::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  descrambler * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port2 */
  case ( 0 ): {
  } break;


  default:
    break;
  }
}

#if descrambler_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const descrambler::descrambler_class_info[ descrambler_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


