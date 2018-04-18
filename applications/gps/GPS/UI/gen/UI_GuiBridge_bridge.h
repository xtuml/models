/*----------------------------------------------------------------------------
 * File:  UI_GuiBridge_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Graphical_User_Interface (GuiBridge)
 * 
 *--------------------------------------------------------------------------*/
#include "GPS_Watch_sys_types.h"

/*
 * Bridge:  setData
 */
void
UI_GuiBridge_setData( const i_t p_unit, const r_t p_value );

/*
 * Bridge:  setTime
 */
void
UI_GuiBridge_setTime( const i_t p_time );

/*
 * Bridge:  connect
 */
i_t
UI_GuiBridge_connect();

/*
 * Bridge:  setIndicator
 */
void
UI_GuiBridge_setIndicator( const i_t p_value );

/*
 * Bridge:  poll
 */
i_t
UI_GuiBridge_poll();
