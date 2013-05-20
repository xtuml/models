/*----------------------------------------------------------------------------
 * File:  timing_recovery.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  timing_recovery
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "timing_recovery.h"

/*
 * Interface:  flow
 * Provided Port:  Port2
 * To Provider Message:  sample
 */
void
timing_recovery::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  timing_recovery * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port2 */
  case ( 0 ): {
  } break;


  default:
    break;
  }
}

#if timing_recovery_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const timing_recovery::timing_recovery_class_info[ timing_recovery_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


