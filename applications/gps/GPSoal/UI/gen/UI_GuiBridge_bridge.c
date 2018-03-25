/*----------------------------------------------------------------------------
 * File:  UI_GuiBridge_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Graphical_User_Interface (GuiBridge)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "UI_GuiBridge_bridge.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define SOCKET int

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>

#define SIGNAL_NO_SET_DATA 0
#define SIGNAL_NO_SET_TIME 1
#define SIGNAL_NO_SET_INDICATOR 2


SOCKET sock;                       /* socket details */

void handle_error(char *msg);           /* Error handler routine */
void handle_error_en(int en, char *msg);

/*
 * Bridge:  setData
 */
void
UI_GuiBridge_setData( const int32_t p_unit, const double p_value )
{
  int err;
  char buf[50];
  sprintf(buf, "%d,%f,%d\n", SIGNAL_NO_SET_DATA, p_value, p_unit );
  err = send(sock,buf,strlen(buf),0); 
}


/*
 * Bridge:  setTime
 */
void
UI_GuiBridge_setTime( const int32_t p_time )
{
  int err;
  char buf[50];
  sprintf(buf, "%d,%d\n", SIGNAL_NO_SET_TIME, p_time);
  err = send(sock,buf,strlen(buf),0);
}


/*
 * Bridge:  connect
 */
int32_t
UI_GuiBridge_connect()
{
  int en;
  struct sockaddr_in address;      /* socket address stuff */
  char cIP[50];
  
  if ( (sock = socket(AF_INET, SOCK_STREAM, 0)) < 0 )
    handle_error_en(sock, "Socket creation error ");

  address.sin_family=AF_INET;       /* internet */
  address.sin_port = htons(2003);   /* port 2003 */

  strcpy(cIP, "127.0.0.1");         /* local host */
  address.sin_addr.s_addr = inet_addr(cIP);
  if ((en = connect(sock,(struct sockaddr *) &address, sizeof(address))) < 0)
    handle_error_en(en, "Socket connect error ");

  // set the socket to non-blocking if it is set to blocking
  int ret_val; 
  if ( (ret_val = fcntl( sock, F_GETFL )) < 0 )
    handle_error_en(ret_val, "Socket creation error ");
  if ( (ret_val = fcntl( sock, F_SETFL, ret_val | O_NONBLOCK )) < 0 )
    handle_error_en(ret_val, "Socket creation error ");

  return sock;
}


/*
 * Bridge:  setIndicator
 */
void
UI_GuiBridge_setIndicator( const int32_t p_value )
{
  int err;
  char buf[50];
  sprintf(buf, "%d,%d\n", SIGNAL_NO_SET_INDICATOR, p_value );
  err = send(sock,buf,strlen(buf),0);
}


/*
 * Bridge:  poll
 */
int32_t
UI_GuiBridge_poll()
{
  const int BUF_LEN = 1000;       /* Buffer size for transfers */
  char File_Buf[BUF_LEN];         /* file buffer */
  int res;                        /* error trapping */

  if ( (res = recv(sock, File_Buf, BUF_LEN, 0)) < 0 ) {
    if ( EWOULDBLOCK == errno )
      return 0;
    else
      handle_error_en(sock, "Receive error ");
  }

  return File_Buf[0] - '0';
}

void handle_error(char *msg)
{
  perror(msg);
  exit(EXIT_FAILURE);
}

void handle_error_en(int en, char *msg)
{
   errno = en;
   handle_error(msg);
}
