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

#include "GPS_Watch_sys_types.h"
#include "UI_classes.h"
#include "UI_GuiBridge_bridge.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#if defined(_WIN32) || defined(WIN32)
#include <windows.h>
#include <winsock.h>
#include <process.h>

#define WIN32_LEAN_AND_MEAN        /* define win 32 only */

#else

#define SOCKET int

#if defined(__unix__) || defined(__APPLE__)
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
#endif

#endif

#define SIGNAL_NO_SET_DATA 0
#define SIGNAL_NO_SET_TIME 1
#define SIGNAL_NO_SET_INDICATOR 2


SOCKET sock;                       /* socket details */

#if defined(_WIN32) || defined(WIN32)
void handle_error(void);           /* Error handler routine */
#elif defined(__unix__) || defined(__APPLE__)
void handle_error(char *msg);           /* Error handler routine */
void handle_error_en(int en, char *msg);
#endif

/*
 * Bridge:  setData
 */
void
UI_GuiBridge_setData( const i_t p_unit, const r_t p_value )
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
UI_GuiBridge_setTime( const i_t p_time )
{
  int err;
  char buf[50];
  sprintf(buf, "%d,%d\n", SIGNAL_NO_SET_TIME, p_time);
  err = send(sock,buf,strlen(buf),0);
}


/*
 * Bridge:  connect
 */
i_t
UI_GuiBridge_connect()
{
#if defined(_WIN32) || defined(WIN32)
  WORD wVersionRequested;          /* socket dll version info */
  WSADATA wsaData;                 /* data for socket lib initialisation */
  float socklib_ver;               /* socket dll version */
#elif defined(__unix__) || defined(__APPLE__)
  int en;
#endif
  struct sockaddr_in address;      /* socket address stuff */
  char cIP[50];
  
#if defined(_WIN32) || defined(WIN32)
  wVersionRequested = MAKEWORD( 1, 1 );
  if ( WSAStartup( wVersionRequested, &wsaData ) != 0 )
    handle_error();
  socklib_ver = HIBYTE( wsaData.wVersion ) / 10.0;
  socklib_ver += LOBYTE( wsaData.wVersion );
  if ( socklib_ver < 1.1 )
  {
    printf ("\nError: socket library must support 1.1 or greater.\n");
    WSACleanup();
  }
#endif

#if defined(_WIN32) || defined(WIN32)
  if ( (sock = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET )
    handle_error();
#elif defined(__unix__) || defined(__APPLE__)
  if ( (sock = socket(AF_INET, SOCK_STREAM, 0)) < 0 )
    handle_error_en(sock, "Socket creation error ");
#endif

  address.sin_family=AF_INET;       /* internet */
  address.sin_port = htons(2003);   /* port 2003 */

  strcpy(cIP, "127.0.0.1");         /* local host */
  address.sin_addr.s_addr = inet_addr(cIP);
#if defined(_WIN32) || defined(WIN32)
  if ((connect(sock,(struct sockaddr *) &address, sizeof(address))) != 0)
    handle_error();
#elif defined(__unix__) || defined(__APPLE__)
  if ((en = connect(sock,(struct sockaddr *) &address, sizeof(address))) < 0)
    handle_error_en(en, "Socket connect error ");
#endif

  // set the socket to non-blocking if it is set to blocking
#if defined(_WIN32) || defined(WIN32)
  unsigned long mode = 1;
  int ret_val;
  if ( (ret_val = ioctlsocket( sock, FIONBIO, &mode )) == SOCKET_ERROR )
    handle_error();
#elif defined(__unix__) || defined(__APPLE__)
  int ret_val; 
  if ( (ret_val = fcntl( sock, F_GETFL )) < 0 )
    handle_error_en(ret_val, "Socket creation error ");
  if ( (ret_val = fcntl( sock, F_SETFL, ret_val | O_NONBLOCK )) < 0 )
    handle_error_en(ret_val, "Socket creation error ");
#endif

  return sock;
}


/*
 * Bridge:  setIndicator
 */
void
UI_GuiBridge_setIndicator( const i_t p_value )
{
  int err;
  char buf[50];
  sprintf(buf, "%d,%d\n", SIGNAL_NO_SET_INDICATOR, p_value );
  err = send(sock,buf,strlen(buf),0);
}


/*
 * Bridge:  poll
 */
i_t
UI_GuiBridge_poll()
{
  const int BUF_LEN = 1000;       /* Buffer size for transfers */
  char File_Buf[BUF_LEN];         /* file buffer */
  int res;                        /* error trapping */

  if ( (res = recv(sock, File_Buf, BUF_LEN, 0)) < 0 ) {
#if defined(_WIN32) || defined(WIN32)
    if ( WSAEWOULDBLOCK == WSAGetLastError() )
      return 0;
    else
      handle_error();
#elif defined(__unix__) || defined(__APPLE__)
    if ( EWOULDBLOCK == errno )
      return 0;
    else
      handle_error_en(sock, "Receive error ");
#endif
  }

  return File_Buf[0] - '0';
}

#if defined(_WIN32) || defined(WIN32)
void handle_error(void)
{
  switch ( WSAGetLastError() )
  {
  case WSANOTINITIALISED :
    printf("Unable to initialise socket.\n");
    break;
  case WSAEAFNOSUPPORT :
    printf("The specified address family is not supported.\n");
    break;
  case WSAEADDRNOTAVAIL :
    printf("Specified address is not available from the local machine.\n");
    break;
  case WSAECONNREFUSED :
    printf("The attempt to connect was forcefully rejected.\n");
    break;
  case WSAEDESTADDRREQ :
    printf("address destination address is required.\n");
    break;
  case WSAEFAULT :
    printf("The namelen argument is incorrect.\n");
    break;
  case WSAEINVAL :
    printf("The socket is not already bound to an address.\n");
    break;
  case WSAEISCONN :
    printf("The socket is already connected.\n");
    break;
  case WSAEADDRINUSE :
    printf("The specified address is already in use.\n");
    break;
  case WSAEMFILE :
    printf("No more file descriptors are available.\n");
    break;
  case WSAENOBUFS :
    printf("No buffer space available. The socket cannot be created.\n");
    break;
  case WSAEPROTONOSUPPORT :
    printf("The specified protocol is not supported.\n");
    break;
  case WSAEPROTOTYPE :
    printf("The specified protocol is the wrong type for this socket.\n");
    break;
  case WSAENETUNREACH :
    printf("The network can't be reached from this host at this time.\n");
    break;
  case WSAENOTSOCK :
    printf("The descriptor is not a socket.\n");
    break;
  case WSAETIMEDOUT :
    printf("Attempt timed out without establishing a connection.\n");
    break;
  case WSAESOCKTNOSUPPORT :
    printf("Socket type is not supported in this address family.\n");
    break;
  case WSAENETDOWN :
    printf("Network subsystem failure.\n");
    break;
  case WSAHOST_NOT_FOUND :
    printf("Authoritative Answer Host not found.\n");
    break;
  case WSATRY_AGAIN :
    printf("Non-Authoritative Host not found or SERVERFAIL.\n");
    break;
  case WSANO_RECOVERY :
    printf("Non recoverable errors, FORMERR, REFUSED, NOTIMP.\n");
    break;
  case WSANO_DATA :
    printf("Valid name, no data record of requested type.\n");
    break;
  case WSAEINPROGRESS :
    printf("address blocking Windows Sockets operation is in progress.\n");
    break;
  case WSAEINTR :
    printf("The (blocking) call was canceled via WSACancelBlockingCall().\n");
    break;
  default:
    printf("Unknown error.\n");
    break;
  }
  WSACleanup();
}
#elif defined(__unix__) || defined(__APPLE__)
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
#endif

