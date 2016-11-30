/* This does sockets in some older, obsolete ways.  */
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

static unsigned char portmap[16000];
static unsigned int portindex = 0;
static struct sockaddr_in server[8];    /* server socket structure   */
static fd_set socklist[8];              /* socket descriptor set     */
static SOCKET socket_handle[8];
static SOCKET file_descriptor[8];
static char buffer[8][ 256 ];


/*
 * Perform the socket initialization common to both clients and servers.
 */
static SOCKET Escher_socket_init_common( const char *, const unsigned int );
static SOCKET Escher_socket_init_common(
  const char * h,
  const unsigned int p
)
{
  /* Populate the socket structure first with host information.      */
  memset( &server[ portmap[p] ], 0, sizeof(server[ portmap[p] ]) );
  server[ portmap[p] ].sin_family = AF_INET;
  server[ portmap[p] ].sin_port = htons(p);
  server[ portmap[p] ].sin_addr.s_addr = inet_addr(h);  /* OLD WAY */
  /* Create the socket.  */
  socket_handle[ portmap[p] ] = socket( AF_INET, SOCK_STREAM, 0 );
  if ( socket_handle[ portmap[p] ] < 0 ) {
    /* Bad news.  Cannot build socket.  */
    printf( "Bad news.  Cannot build socket.\n" );
    exit( 0 );
  }
  return socket_handle[ portmap[p] ];
}

/*
 * Initialize as the socket client.
 */
int Escher_socket_init(
  const char * h,
  const unsigned int p
)
{
  portmap[p] = portindex++;
  SOCKET s = Escher_socket_init_common( h, p );
  /* Be the client.  Connect to the server.  Wait until server accepts.  */
  file_descriptor[ portmap[p] ] = s;
  while( connect( file_descriptor[ portmap[p] ], (const struct sockaddr *) &server[ portmap[p] ], sizeof( server[ portmap[p] ] ) ) != 0 )
    ;
  return 0;  /* I am the client.  */
}

/*
 * Attempt to read a message.  One may be there or not.  If so,
 * we read it and process it.  Otherwise, plan to come back later.
 * This routine needs to be called periodically (perhaps from the
 * background loop.
 */
char * Escher_socket_receive(
  const unsigned int p
)
{
  int retval;
  struct timeval timeout;

  FD_ZERO( &socklist[ portmap[p] ] );
  FD_SET( file_descriptor[ portmap[p] ], &socklist[ portmap[p] ] );
  timeout.tv_usec = 10000;
  timeout.tv_sec = 0;
  retval = select( file_descriptor[ portmap[p] ] + 1, &socklist[ portmap[p] ], 0, 0, &timeout );
  if ( 0 < retval ) {
    retval = recv( file_descriptor[ portmap[p] ], buffer[ portmap[p] ], sizeof(buffer[ portmap[p] ]), 0 );
    if ( 0 < retval ) {
      buffer[ portmap[p] ][ retval ] = 0;
      return buffer[ portmap[p] ];
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
  int length,
  const unsigned int p
)
{
  message[ length ] = '\n';
  ++length;
  message[ length ] = 0;
  if ( send( file_descriptor[ portmap[p] ], message, length, 0 ) < 0 ) {
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
  int i;
  for ( i = 0; i < portindex; i++ ) {
    shutdown( socket_handle[ i ], 2 );   /* Shut down the socket.          */
    buffer[ i ][ 0 ] = 0;
    socket_handle[ i ] = 0;
    file_descriptor[ i ] = 0;
  }
}
