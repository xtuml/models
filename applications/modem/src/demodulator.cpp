/*----------------------------------------------------------------------------
 * File:  demodulator.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  demodulator
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "demodulator.h"

/*
 * Interface:  flow
 * Provided Port:  Port1
 * To Provider Message:  sample
 */
void
demodulator::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  demodulator * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port1 */
  case ( 0 ): {
  } break;


  default:
    break;
  }
}

/*
 * Interface:  feedback
 * Provided Port:  Port3
 * To Provider Message:  offset
 */
void
demodulator::feedback_offset()
{
  demodulator * thismodule = this;
  /* Provided Port:  Port3 */


}

#if demodulator_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const demodulator::demodulator_class_info[ demodulator_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


