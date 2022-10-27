/*----------------------------------------------------------------------------
 * File:  MicrowaveOven.c
 *
 * UML Component Port Messages
 * Component/Module Name:  MicrowaveOven
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "MicrowaveOven_sys_types.h"
#include "MicrowaveOven.h"
#include "TIM_bridge.h"
#include "MicrowaveOven_ARCH_bridge.h"
#include "MicrowaveOven_classes.h"
#include <emscripten.h>

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  beeper_beeping
 */
void
MicrowaveOven_UI_beeper_beeping()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  beeper_quiet
 */
void
MicrowaveOven_UI_beeper_quiet()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  cancel_pressed
 */
void
MicrowaveOven_UI_cancel_pressed()
{
  /* ::CancelCooking(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::CancelCooking(  )" );
  MicrowaveOven_CancelCooking();
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  close_door
 */
void
MicrowaveOven_UI_close_door()
{
  /* ::CloseDoor(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::CloseDoor(  )" );
  MicrowaveOven_CloseDoor();
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  decrease_power
 */
void
MicrowaveOven_UI_decrease_power()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  door_closed
 */
void
MicrowaveOven_UI_door_closed()
{
  MAIN_THREAD_EM_ASM({
      sendSignal('MicrowaveOven::UI::door_closed');
  });
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  door_opened
 */
void
MicrowaveOven_UI_door_opened()
{
  MAIN_THREAD_EM_ASM({
      sendSignal('MicrowaveOven::UI::door_opened');
  });
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  increase_power
 */
void
MicrowaveOven_UI_increase_power()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  light_off
 */
void
MicrowaveOven_UI_light_off()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  light_on
 */
void
MicrowaveOven_UI_light_on()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  open_door
 */
void
MicrowaveOven_UI_open_door()
{
  /* ::OpenDoor(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::OpenDoor(  )" );
  MicrowaveOven_OpenDoor();
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  specify_cooking_period
 */
void
MicrowaveOven_UI_specify_cooking_period( const i_t p_cooking_period )
{
  /* ::SpecifyCookingPeriod( cookingPeriod:PARAM.cooking_period ) */
  XTUML_OAL_STMT_TRACE( 1, "::SpecifyCookingPeriod( cookingPeriod:PARAM.cooking_period )" );
  MicrowaveOven_SpecifyCookingPeriod( p_cooking_period );
}

/*
 * Interface:  UI
 * Required Port:  UI
 * From Provider Message:  start_pressed
 */
void
MicrowaveOven_UI_start_pressed()
{
  /* ::StartCooking(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::StartCooking(  )" );
  MicrowaveOven_StartCooking();
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  tube_off
 */
void
MicrowaveOven_UI_tube_off()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  tube_on
 */
void
MicrowaveOven_UI_tube_on()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  tube_power
 */
void
MicrowaveOven_UI_tube_power( const MicrowaveOven_tube_wattage_t p_level )
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  turntable_rotating
 */
void
MicrowaveOven_UI_turntable_rotating()
{
}

/*
 * Interface:  UI
 * Required Port:  UI
 * To Provider Message:  turntable_stationary
 */
void
MicrowaveOven_UI_turntable_stationary()
{
}
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  CancelCooking
 */
void
MicrowaveOven_CancelCooking()
{
  MicrowaveOven_MO_O * oven=0;
  /* SELECT any oven FROM INSTANCES OF MO_O */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any oven FROM INSTANCES OF MO_O" );
  oven = (MicrowaveOven_MO_O *) Escher_SetGetAny( &pG_MicrowaveOven_MO_O_extent.active );
  /* GENERATE MO_O4:cancel_cooking() TO oven */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_O4:cancel_cooking() TO oven" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( oven, &MicrowaveOven_MO_Oevent4c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  CloseDoor
 */
void
MicrowaveOven_CloseDoor()
{
  MicrowaveOven_MO_D * door=0;
  /* SELECT any door FROM INSTANCES OF MO_D */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any door FROM INSTANCES OF MO_D" );
  door = (MicrowaveOven_MO_D *) Escher_SetGetAny( &pG_MicrowaveOven_MO_D_extent.active );
  /* GENERATE MO_D2:close() TO door */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_D2:close() TO door" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( door, &MicrowaveOven_MO_Devent2c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  DecreasePower
 */
void
MicrowaveOven_DecreasePower()
{
  MicrowaveOven_MO_MT * tube=0;
  /* SELECT any tube FROM INSTANCES OF MO_MT */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any tube FROM INSTANCES OF MO_MT" );
  tube = (MicrowaveOven_MO_MT *) Escher_SetGetAny( &pG_MicrowaveOven_MO_MT_extent.active );
  /* GENERATE MO_MT2:decrease_power() TO tube */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_MT2:decrease_power() TO tube" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( tube, &MicrowaveOven_MO_MTevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  DefineOven
 */
void
MicrowaveOven_DefineOven()
{
  MicrowaveOven_MO_O * mo;MicrowaveOven_MO_MT * tube;MicrowaveOven_MO_IL * light;MicrowaveOven_MO_B * beeper;MicrowaveOven_MO_D * door;MicrowaveOven_MO_TRN * turntable;
  /* CREATE OBJECT INSTANCE mo OF MO_O */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE mo OF MO_O" );
  mo = (MicrowaveOven_MO_O *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_O_CLASS_NUMBER );
  mo->OvenID = Escher_ID_factory();
  /* ASSIGN mo.remaining_cooking_time = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN mo.remaining_cooking_time = 0" );
  ((MicrowaveOven_MO_O *)xtUML_detect_empty_handle( mo, "MO_O", "mo.remaining_cooking_time" ))->remaining_cooking_time = 0;
  /* CREATE OBJECT INSTANCE tube OF MO_MT */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE tube OF MO_MT" );
  tube = (MicrowaveOven_MO_MT *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_MT_CLASS_NUMBER );
  tube->TubeID = Escher_ID_factory();
  /* RELATE mo TO tube ACROSS R1 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE mo TO tube ACROSS R1" );
  MicrowaveOven_MO_O_R1_Link_is_housed_in( tube, mo );
  /* ASSIGN tube.current_power_output = high */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN tube.current_power_output = high" );
  ((MicrowaveOven_MO_MT *)xtUML_detect_empty_handle( tube, "MO_MT", "tube.current_power_output" ))->current_power_output = MicrowaveOven_tube_wattage_high_e;
  /* CREATE OBJECT INSTANCE light OF MO_IL */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE light OF MO_IL" );
  light = (MicrowaveOven_MO_IL *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_IL_CLASS_NUMBER );
  light->LightID = Escher_ID_factory();
  /* RELATE mo TO light ACROSS R2 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE mo TO light ACROSS R2" );
  MicrowaveOven_MO_O_R2_Link_illuminates( light, mo );
  /* CREATE OBJECT INSTANCE beeper OF MO_B */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE beeper OF MO_B" );
  beeper = (MicrowaveOven_MO_B *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_B_CLASS_NUMBER );
  beeper->BeeperID = Escher_ID_factory();
  /* RELATE mo TO beeper ACROSS R3 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE mo TO beeper ACROSS R3" );
  MicrowaveOven_MO_O_R3_Link_is_located_in( beeper, mo );
  /* CREATE OBJECT INSTANCE door OF MO_D */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE door OF MO_D" );
  door = (MicrowaveOven_MO_D *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_D_CLASS_NUMBER );
  door->DoorID = Escher_ID_factory();
  /* RELATE mo TO door ACROSS R4 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE mo TO door ACROSS R4" );
  MicrowaveOven_MO_O_R4_Link_provides_access_to( door, mo );
  /* ASSIGN door.is_secure = FALSE */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN door.is_secure = FALSE" );
  ((MicrowaveOven_MO_D *)xtUML_detect_empty_handle( door, "MO_D", "door.is_secure" ))->is_secure = FALSE;
  /* CREATE OBJECT INSTANCE turntable OF MO_TRN */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE turntable OF MO_TRN" );
  turntable = (MicrowaveOven_MO_TRN *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_TRN_CLASS_NUMBER );
  turntable->TurntableID = Escher_ID_factory();
  /* RELATE mo TO turntable ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE mo TO turntable ACROSS R5" );
  MicrowaveOven_MO_O_R5_Link_occupies( turntable, mo );
}

/*
 * Domain Function:  IncreasePower
 */
void
MicrowaveOven_IncreasePower()
{
  MicrowaveOven_MO_MT * tube=0;
  /* SELECT any tube FROM INSTANCES OF MO_MT */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any tube FROM INSTANCES OF MO_MT" );
  tube = (MicrowaveOven_MO_MT *) Escher_SetGetAny( &pG_MicrowaveOven_MO_MT_extent.active );
  /* GENERATE MO_MT1:increase_power() TO tube */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_MT1:increase_power() TO tube" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( tube, &MicrowaveOven_MO_MTevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  OpenDoor
 */
void
MicrowaveOven_OpenDoor()
{
  MicrowaveOven_MO_D * door=0;
  /* SELECT any door FROM INSTANCES OF MO_D */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any door FROM INSTANCES OF MO_D" );
  door = (MicrowaveOven_MO_D *) Escher_SetGetAny( &pG_MicrowaveOven_MO_D_extent.active );
  /* GENERATE MO_D1:release() TO door */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_D1:release() TO door" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( door, &MicrowaveOven_MO_Devent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  SpecifyCookingPeriod
 */
void
MicrowaveOven_SpecifyCookingPeriod( const i_t p_cookingPeriod )
{
  i_t timePeriod;MicrowaveOven_MO_O * oven=0;
  /* ASSIGN timePeriod = ( 1000000 * PARAM.cookingPeriod ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN timePeriod = ( 1000000 * PARAM.cookingPeriod )" );
  timePeriod = ( 1000000 * p_cookingPeriod );
  /* SELECT any oven FROM INSTANCES OF MO_O */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any oven FROM INSTANCES OF MO_O" );
  oven = (MicrowaveOven_MO_O *) Escher_SetGetAny( &pG_MicrowaveOven_MO_O_extent.active );
  /* GENERATE MO_O8:cooking_period(period:timePeriod) TO oven */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_O8:cooking_period(period:timePeriod) TO oven" );
  { MicrowaveOven_MO_Oevent8 * e = (MicrowaveOven_MO_Oevent8 *) Escher_NewxtUMLEvent( oven, &MicrowaveOven_MO_Oevent8c );
    e->p_period = timePeriod;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

/*
 * Domain Function:  StartCooking
 */
void
MicrowaveOven_StartCooking()
{
  MicrowaveOven_MO_O * oven=0;
  /* SELECT any oven FROM INSTANCES OF MO_O */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any oven FROM INSTANCES OF MO_O" );
  oven = (MicrowaveOven_MO_O *) Escher_SetGetAny( &pG_MicrowaveOven_MO_O_extent.active );
  /* GENERATE MO_O3:start_cooking() TO oven */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_O3:start_cooking() TO oven" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( oven, &MicrowaveOven_MO_Oevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  TestSequence1
 */
void
MicrowaveOven_TestSequence1()
{
  MicrowaveOven_MO_TS * testSequence;
  /* CREATE OBJECT INSTANCE testSequence OF MO_TS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE testSequence OF MO_TS" );
  testSequence = (MicrowaveOven_MO_TS *) Escher_CreateInstance( MicrowaveOven_DOMAIN_ID, MicrowaveOven_MO_TS_CLASS_NUMBER );
  testSequence->TestSeqID = Escher_ID_factory();
  /* GENERATE MO_TS2:perform_test_seq_1() TO testSequence */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MO_TS2:perform_test_seq_1() TO testSequence" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( testSequence, &MicrowaveOven_MO_TSevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * Domain Function:  setup
 */
void
MicrowaveOven_setup()
{
  /* ::DefineOven(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::DefineOven(  )" );
  MicrowaveOven_DefineOven();
}

/*
 * Domain Function:  test
 */
void
MicrowaveOven_test()
{
  /* ::TestSequence1(  ) */
  XTUML_OAL_STMT_TRACE( 1, "::TestSequence1(  )" );
  MicrowaveOven_TestSequence1();
}

/*
 * Domain Function:  xit
 */
void
MicrowaveOven_xit()
{
  /* ARCH::shutdown(  ) */
  XTUML_OAL_STMT_TRACE( 1, "ARCH::shutdown(  )" );
  MicrowaveOven_ARCH_shutdown();
}
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const MicrowaveOven_class_info[ MicrowaveOven_MAX_CLASS_NUMBERS ] = {
  &pG_MicrowaveOven_MO_TS_extent,
  &pG_MicrowaveOven_MO_O_extent,
  &pG_MicrowaveOven_MO_MT_extent,
  &pG_MicrowaveOven_MO_IL_extent,
  &pG_MicrowaveOven_MO_B_extent,
  &pG_MicrowaveOven_MO_D_extent,
  &pG_MicrowaveOven_MO_TRN_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t MicrowaveOven_EventDispatcher[ MicrowaveOven_STATE_MODELS ] = {
  MicrowaveOven_class_dispatchers
};

void MicrowaveOven_execute_initialization()
{
  /*
   * Initialization Function:  DefineOven
   * Component:  MicrowaveOven
   */
  MicrowaveOven_DefineOven();

}
