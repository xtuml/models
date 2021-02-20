/**
 * app.h
 * EV3 HRP app header
 */

#include "ev3api.h"                                                                                                                                  

#ifndef TOPPERS_MACRO_ONLY

extern void main_task(intptr_t exinf);

extern void timer_start(intptr_t extinf);
extern void cyclic_handler(intptr_t extinf);
extern void bluetooth_task(intptr_t extinf);
extern void AlarmMainTIM_tick(void);

#endif
