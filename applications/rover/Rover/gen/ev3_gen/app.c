/**
 * app.h
 * EV3 HRP app source
 */

#include "app.h"
#include "ev3api.h"
#include "EV3B_bridge.h"
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

void rover_url_encode(char *, const char *);

FILE * rover_bt = NULL;
void
bt_printf(const char * restrict format, ...)
{
  // make sure bluetooth is connected
  assert(EV3B_bluetooth_is_connected());
  if (NULL == rover_bt) rover_bt = ev3_serial_open_file(EV3_SERIAL_BT);
  // create message
  va_list args;
  va_start(args, format);
  char buf[512]; buf[0] = '\0';
  vsnprintf(buf, 512, format, args);
  va_end(args);
  // url encode
  char buf2[2048];
  rover_url_encode(buf2, buf);
  // write message
  fprintf(rover_bt, "%s\n", buf2);
  fflush(rover_bt);
}

// partial url encoding
// this implementation assumes that enough space
// is allocated in dst to hold the url encoded
// string (worst case 3x the size of the input string)
void
rover_url_encode( char * dst, const char * src )
{
  // check argument
  if ( !src ) return;
  char * s = (char *)src;
  // copy character by character checking for encodings
  while ( *s != '\0' ) {
    switch ( *s ) {
      case '%':
        *dst = '%';
        *(dst+1) = '2';
        *(dst+2) = '5';
        dst += 3;
        s++;
        break;
      case ',':
        *dst = '%';
        *(dst+1) = '2';
        *(dst+2) = 'C';
        dst += 3;
        s++;
        break;
      case '\n':
        *dst = '%';
        *(dst+1) = '0';
        *(dst+2) = 'A';
        dst += 3;
        s++;
        break;
      case '\r':
        *dst = '%';
        *(dst+1) = '0';
        *(dst+2) = 'D';
        dst += 3;
        s++;
        break;
      default:
        *dst++ = *s++; // copy the character
        break;
    }
  }
  *dst = '\0'; // null terminate the encoded string
}


