#include <stdint.h>

/*
 * Bridge:  setData
 */
void
UI_GuiBridge_setData( const int32_t p_unit, const double p_value );

/*
 * Bridge:  setTime
 */
void
UI_GuiBridge_setTime( const int32_t p_time );

/*
 * Bridge:  connect
 */
int32_t
UI_GuiBridge_connect();

/*
 * Bridge:  setIndicator
 */
void
UI_GuiBridge_setIndicator( const int32_t p_value );

/*
 * Bridge:  poll
 */
int32_t
UI_GuiBridge_poll();
