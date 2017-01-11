/*----------------------------------------------------------------------------
 * File:  SpO2_SpO2_IO_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  pulsox driver (SpO2_IO)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "capssys_sys_types.h"
#include "LOG_bridge.h"
#include "TIM_bridge.h"
#include "SpO2_SpO2_IO_bridge.h"
#include "SpO2_classes.h"
#include "SpO2_SpO2_IO_bridge.h"
#include "capssys_sys_types.h"

/*
 * Bridge:  read_pulse
 */
i_t
SpO2_SpO2_IO_read_pulse()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  i_t r;SpO2_finger * finger=0;
  /* ASSIGN r = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN r = 0" );
  r = 0;
  /* SELECT any finger FROM INSTANCES OF finger */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any finger FROM INSTANCES OF finger" );
  finger = (SpO2_finger *) Escher_SetGetAny( &pG_SpO2_finger_extent.active );
  /* IF ( not_empty finger ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty finger )" );
  if ( ( 0 != finger ) ) {
    /* IF ( finger.simulation ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( finger.simulation )" );
    if ( finger->simulation ) {
      /* ASSIGN finger.pulse[0] = 60 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[0] = 60" );
      finger->pulse[0] = 60;
      /* ASSIGN finger.pulse[1] = 59 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[1] = 59" );
      finger->pulse[1] = 59;
      /* ASSIGN finger.pulse[2] = 58 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[2] = 58" );
      finger->pulse[2] = 58;
      /* ASSIGN finger.pulse[3] = 57 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[3] = 57" );
      finger->pulse[3] = 57;
      /* ASSIGN finger.pulse[4] = 56 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[4] = 56" );
      finger->pulse[4] = 56;
      /* ASSIGN finger.pulse[5] = 57 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[5] = 57" );
      finger->pulse[5] = 57;
      /* ASSIGN finger.pulse[6] = 58 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[6] = 58" );
      finger->pulse[6] = 58;
      /* ASSIGN finger.pulse[7] = 59 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulse[7] = 59" );
      finger->pulse[7] = 59;
      /* ASSIGN r = finger.pulse[finger->index] */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN r = finger.pulse[finger->index]" );
      r = finger->pulse[finger->index];
      /* ASSIGN finger.pulsesum = ( r * finger.pulse.length ) */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.pulsesum = ( r * finger.pulse.length )" );
      finger->pulsesum = ( r * 8 /* finger.pulse.length */ );
    }
  }
  /* RETURN r */
  XTUML_OAL_STMT_TRACE( 1, "RETURN r" );
  {i_t xtumlOALrv = r;
  return xtumlOALrv;}
}


/*
 * Bridge:  read_O2saturation
 */
i_t
SpO2_SpO2_IO_read_O2saturation()
{
  /* Replace/Insert the following instructions with your implementation code.  */
  i_t r;SpO2_finger * finger=0;
  /* ASSIGN r = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN r = 0" );
  r = 0;
  /* SELECT any finger FROM INSTANCES OF finger */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any finger FROM INSTANCES OF finger" );
  finger = (SpO2_finger *) Escher_SetGetAny( &pG_SpO2_finger_extent.active );
  /* IF ( not_empty finger ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty finger )" );
  if ( ( 0 != finger ) ) {
    /* IF ( finger.simulation ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( finger.simulation )" );
    if ( finger->simulation ) {
      /* ASSIGN finger.O2saturation[0] = 100 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[0] = 100" );
      finger->O2saturation[0] = 100;
      /* ASSIGN finger.O2saturation[1] = 96 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[1] = 96" );
      finger->O2saturation[1] = 96;
      /* ASSIGN finger.O2saturation[2] = 92 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[2] = 92" );
      finger->O2saturation[2] = 92;
      /* ASSIGN finger.O2saturation[3] = 88 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[3] = 88" );
      finger->O2saturation[3] = 88;
      /* ASSIGN finger.O2saturation[4] = 89 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[4] = 89" );
      finger->O2saturation[4] = 89;
      /* ASSIGN finger.O2saturation[5] = 93 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[5] = 93" );
      finger->O2saturation[5] = 93;
      /* ASSIGN finger.O2saturation[6] = 97 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[6] = 97" );
      finger->O2saturation[6] = 97;
      /* ASSIGN finger.O2saturation[7] = 99 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2saturation[7] = 99" );
      finger->O2saturation[7] = 99;
      /* ASSIGN r = finger.O2saturation[finger->index] */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN r = finger.O2saturation[finger->index]" );
      r = finger->O2saturation[finger->index];
      /* ASSIGN finger.O2sum = ( r * finger.O2saturation.length ) */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN finger.O2sum = ( r * finger.O2saturation.length )" );
      finger->O2sum = ( r * 8 /* finger.O2saturation.length */ );
    }
  }
  /* RETURN r */
  XTUML_OAL_STMT_TRACE( 1, "RETURN r" );
  {i_t xtumlOALrv = r;
  return xtumlOALrv;}
}


/*
 * Bridge:  init
 */
void
SpO2_SpO2_IO_init()
{
  /* Replace/Insert your implementation code here... */
  SpO2_finger * finger=0;
  /* SELECT any finger FROM INSTANCES OF finger */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any finger FROM INSTANCES OF finger" );
  finger = (SpO2_finger *) Escher_SetGetAny( &pG_SpO2_finger_extent.active );
  /* IF ( not_empty finger ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty finger )" );
  if ( ( 0 != finger ) ) {
    /* ASSIGN finger.simulation = TRUE */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN finger.simulation = TRUE" );
    finger->simulation = TRUE;
  }
}


/*
 * Bridge:  shutdown
 */
void
SpO2_SpO2_IO_shutdown()
{
  /* Replace/Insert your implementation code here... */
}


