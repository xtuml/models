#ifdef _WIN32
#include <windows.h>
#include <winbase.h>
#include <winsock.h>
#include <process.h>
#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#define SOCKET int
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "socketome.h"

static struct sockaddr_in server;       /* server socket structure   */
static fd_set socklist;                 /* socket descriptor set     */
static char hostname[ 256 ];            /* name of host running UMLD */
static unsigned int port;               /* TCP port of UMLD server   */
static char buffer[ 256 ];
#ifdef _WIN32
static WSADATA windows_socket_data;     /* MS Windows sockets v2     */
#endif
static SOCKET socket_handle;            /* Windows socket handle     */
static SOCKET file_descriptor;
//static char I_am_the_server;


/*
 * Perform the socket initialization common to both clients and servers.
 */
static SOCKET Escher_socket_init_common( const char *, const unsigned int );
static SOCKET Escher_socket_init_common(
  const char * h,
  const unsigned int p
)
{
  strcpy( hostname, h );
  port = p;
#ifdef _WIN32
  #ifdef BELOW_NORMAL_PRIORITY_CLASS
  SetPriorityClass( GetCurrentProcess(), BELOW_NORMAL_PRIORITY_CLASS );
  #else
  SetPriorityClass( GetCurrentProcess(), 0x00004000 );
  #endif
  WSAStartup( MAKEWORD(1, 1), &windows_socket_data );
#else
  nice( 10 );
#endif

  /* Populate the socket structure first with host information.      */
  memset( &server, 0, sizeof(server) );
  server.sin_family = AF_INET;
  server.sin_port = htons(port);
  server.sin_addr.s_addr = inet_addr(hostname);
  /* Create the socket.  */
  socket_handle = socket( AF_INET, SOCK_STREAM, 0 );
  if ( socket_handle < 0 ) {
    /* Bad news.  Cannot build socket.  */
    printf( "Bad news.  Cannot build socket.\n" );
    exit( 0 );
  }
  return socket_handle;
}

/*
 * Initialize as the socket client.
 */
int Escher_socket_init(
  const char * h,
  const unsigned int p
)
{
  //int server_size = sizeof( server );
  socket_handle = Escher_socket_init_common( h, p );
  /* Try to be the server, then try to be the client.  */
  //if ( ( bind( socket_handle, (const struct sockaddr *) &server, sizeof( server ) ) == 0 ) &&
    //( listen( socket_handle, 4 ) == 0 ) &&
    //( ( file_descriptor = accept( socket_handle, (struct sockaddr *) &server, &server_size ) ) >= 0 ) ) {
    //return 1;  /* I am the server.  */
  //} else {
    /* Be the client.  Connect to the server.  Wait until server accepts.  */
    file_descriptor = socket_handle;
    while( connect( file_descriptor, (const struct sockaddr *) &server, sizeof( server ) ) != 0 )
      ;
    return 0;  /* I am the client.  */
  //}
}

/*
 * Attempt to read a message.  One may be there or not.  If so,
 * we read it and process it.  Otherwise, plan to come back later.
 * This routine needs to be called periodically (perhaps from the
 * background loop.
 */
char * Escher_socket_receive( void )
{
  int retval;
  struct timeval timeout;

  FD_ZERO( &socklist );
  FD_SET( file_descriptor, &socklist );
  timeout.tv_usec = 0;
  timeout.tv_sec = 0;
  retval = select( file_descriptor + 1, &socklist, 0, 0, &timeout );
  if ( 0 < retval ) {
    retval = recv( file_descriptor, buffer, sizeof(buffer), 0 );
    if ( 0 < retval ) {
      buffer[ retval ] = 0;
      return buffer;
    }
  }
  return 0;
}


/*
 * Attempt to send a message to the host through the socket.
 * Only length bytes will be transmitted even if more exist.
 * Note that this routine walks on the input buffer.
 */
void Escher_socket_send(
  char * message,
  int length
)
{
  message[ length ] = '\n';
  ++length;
  message[ length ] = 0;
  if ( send( file_descriptor, message, length, 0 ) < 0 ) {
    /* Bad news.  Cannot send message.  */
    printf( "Bad news.  Cannot send message.\n" );
  }
}

/*
 * Wipe out any useful information in case someone tries to use
 * it incorrectly.
 */
void Escher_socket_shutdown( void )
{
  shutdown( socket_handle, 2 );   /* Shut down the socket.          */
  buffer[ 0 ] = 0;
  hostname[ 0 ] = 0;
  port = 0;
  socket_handle = 0;
  file_descriptor = 0;
}
