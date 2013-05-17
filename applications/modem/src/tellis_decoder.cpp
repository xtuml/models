/*----------------------------------------------------------------------------
 * File:  tellis_decoder.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  tellis_decoder
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "tellis_decoder.h"

/*
 * Interface:  flow
 * Provided Port:  Port1
 * To Provider Message:  sample
 */
void
tellis_decoder::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  tellis_decoder * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port1 */
  case ( 0 ): {
  } break;


  default:
    break;
  }
}

#if tellis_decoder_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const tellis_decoder::tellis_decoder_class_info[ tellis_decoder_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


