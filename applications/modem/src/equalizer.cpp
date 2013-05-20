/*----------------------------------------------------------------------------
 * File:  equalizer.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  equalizer
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "equalizer.h"

/*
 * Interface:  flow
 * Provided Port:  Port1
 * To Provider Message:  sample
 */
void
equalizer::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  equalizer * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port1 */
  case ( 0 ): {
  } break;


  default:
    break;
  }
}

#if equalizer_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const equalizer::equalizer_class_info[ equalizer_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


