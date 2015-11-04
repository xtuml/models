/*----------------------------------------------------------------------------
 * File:  autosampler.c
 *
 * UML Component Port Messages
 * Component/Module Name:  autosampler
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "autosampler_sys_types.h"
#include "autosampler.h"
#include "autosampler_actuator_bridge.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "autosampler_classes.h"

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  cleanup
 */
void
autosampler_cleanup()
{
  autosampler_batch * batch=0;
  /* SELECT any batch FROM INSTANCES OF batch */
  batch = (autosampler_batch *) Escher_SetGetAny( &pG_autosampler_batch_extent.active );
  /* IF ( not_empty batch ) */
  if ( ( 0 != batch ) ) {
    autosampler_spinner * spinner=0;autosampler_probe * probe=0;
    /* SELECT one probe RELATED BY batch->probe[R2] */
    probe = ( 0 != batch ) ? batch->probe_R2 : 0;
    /* IF ( not_empty probe ) */
    if ( ( 0 != probe ) ) {
      /* UNRELATE probe FROM batch ACROSS R2 */
      autosampler_batch_R2_Unlink_samples( probe, batch );
    }
    /* SELECT one spinner RELATED BY batch->spinner[R1] */
    spinner = ( 0 != batch ) ? batch->spinner_R1 : 0;
    /* IF ( not_empty spinner ) */
    if ( ( 0 != spinner ) ) {
      /* UNRELATE spinner FROM batch ACROSS R1 */
      autosampler_spinner_R1_Unlink( batch, spinner );
    }
    /* DELETE OBJECT INSTANCE batch */
    if ( 0 == batch ) {
      XTUML_EMPTY_HANDLE_TRACE( "batch", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) batch, autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER );
  }

}

/*
 * Domain Function:  init
 */
void
autosampler_init()
{
  autosampler_spinner * spinner;autosampler_probe * probe;
  /* CREATE OBJECT INSTANCE probe OF probe */
  probe = (autosampler_probe *) Escher_CreateInstance( autosampler_DOMAIN_ID, autosampler_probe_CLASS_NUMBER );
  /* ASSIGN probe.state = up */
  probe->state = autosampler_probeposition_up_e;
  /* CREATE OBJECT INSTANCE spinner OF spinner */
  spinner = (autosampler_spinner *) Escher_CreateInstance( autosampler_DOMAIN_ID, autosampler_spinner_CLASS_NUMBER );
  /* ASSIGN spinner.position = 0 */
  spinner->position = 0;
  /* ASSIGN spinner.capacity = 10 */
  spinner->capacity = 10;
  /* ASSIGN spinner.ready = TRUE */
  spinner->ready = TRUE;
  /* RELATE probe TO spinner ACROSS R3 */
  autosampler_spinner_R3_Link_checks_safety( probe, spinner );

}

/*
 * Domain Function:  runbatch
 */
void
autosampler_runbatch()
{
  autosampler_batch * batch;autosampler_probe * probe=0;autosampler_spinner * spinner=0;
  /* SELECT any spinner FROM INSTANCES OF spinner */
  spinner = (autosampler_spinner *) Escher_SetGetAny( &pG_autosampler_spinner_extent.active );
  /* SELECT any probe FROM INSTANCES OF probe */
  probe = (autosampler_probe *) Escher_SetGetAny( &pG_autosampler_probe_extent.active );
  /* CREATE OBJECT INSTANCE batch OF batch */
  batch = (autosampler_batch *) Escher_CreateInstance( autosampler_DOMAIN_ID, autosampler_batch_CLASS_NUMBER );
  /* ASSIGN batch.interval = 3 */
  batch->interval = 3;
  /* ASSIGN batch.count = 10 */
  batch->count = 10;
  /* ASSIGN batch.start_position = 0 */
  batch->start_position = 0;
  /* ASSIGN batch.current_sample = 0 */
  batch->current_sample = 0;
  /* RELATE spinner TO batch ACROSS R1 */
  autosampler_spinner_R1_Link( batch, spinner );
  /* RELATE probe TO batch ACROSS R2 */
  autosampler_batch_R2_Link_samples( probe, batch );
  /* GENERATE batch4:start() TO batch */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( batch, &autosampler_batchevent4c );
    Escher_SendEvent( e );
  }

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const autosampler_class_info[ autosampler_MAX_CLASS_NUMBERS ] = {
  &pG_autosampler_probe_extent,
  &pG_autosampler_batch_extent,
  &pG_autosampler_spinner_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t autosampler_EventDispatcher[ autosampler_STATE_MODELS ] = {
  autosampler_class_dispatchers
};

void autosampler_execute_initialization()
{
  /*
   * Initialization Function:  init
   * Component:  autosampler
   */
  autosampler_init();

  /*
   * Initialization Function:  runbatch
   * Component:  autosampler
   */
  autosampler_runbatch();

}
