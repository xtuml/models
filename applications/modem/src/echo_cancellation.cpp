/*----------------------------------------------------------------------------
 * File:  echo_cancellation.cpp
 *
 * UML Component as a SystemC Module
 * Component/Module Name:  echo_cancellation
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "echo_cancellation.h"

/*
 * Interface:  flow
 * Provided Port:  Port2
 * To Provider Message:  sample
 */
void
echo_cancellation::flow_sample( const i_t A00portindex, const r_t p_sample_value)
{
  echo_cancellation * thismodule = this;
  switch ( A00portindex ) {
  /* Provided Port:  Port2 */
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
echo_cancellation::feedback_offset()
{
  echo_cancellation * thismodule = this;
  /* Provided Port:  Port3 */


}

#if echo_cancellation_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
sys_sets::Escher_Extent_t * const echo_cancellation::echo_cancellation_class_info[ echo_cancellation_MAX_CLASS_NUMBERS ] = {
};
#endif

/*
 * UML Domain Functions (Synchronous Services)
 */


