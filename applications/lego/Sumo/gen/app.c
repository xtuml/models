/**
 * app.h
 * EV3 HRP app source
 */

#include <stdio.h>
#include <stdarg.h>
#include <string.h>

static FILE * sumo_log = NULL;
void
sumo_log_printf(const char * restrict format, ...)
{
 if (NULL == sumo_log) sumo_log = fopen("ev3rt/etc/sumo.log","w");
  va_list args;
  va_start(args, format);
  vfprintf(sumo_log, format, args);
  va_end(args);
  fflush(sumo_log);
}
