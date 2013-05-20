/*----------------------------------------------------------------------------
 * File:  rotator.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  rotator
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "rotator.h"

/*
 * Interface:  flow
 * Provided Port:  Port1
 * To Provider Message:  sample
 */
void
rotator::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  rotator * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port1 */
  case ( 0 ): {
  } break;

  /* Provided Port:  Port2 */
  case ( 1 ): {
  } break;


  default:
    break;
  }
}

#if rotator_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const rotator::rotator_class_info[ rotator_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


