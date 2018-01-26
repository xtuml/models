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
#include <pthread.h>

#define SIGNAL_NO_RESULT 0
#define SIGNAL_NO_ERROR 1

#define SIGNAL_NO_KEY 0
#define SIGNAL_NO_CLEAR 1

#define PORT_NUM 2003

SOCKET sock;                       /* socket details */

void listener_thread( void * );
void handle_error( int, char * );

// send result
void UItest_result( double value ) {
  char buf[50];
  snprintf( buf, 50, "%d,%f\n", SIGNAL_NO_RESULT, value );
  int err = send( sock, buf, strlen(buf), 0 );
}

// send error
void UItest_error( char * message ) {
  char buf[50];
  snprintf( buf, 50, "%d,%s\n", SIGNAL_NO_ERROR, message );
  int err = send( sock, buf, strlen(buf), 0 );
}

// keypress
void UItest_key( int code ) {
  printf( "Received keypress: %d\n", code );
  switch ( code ) {
    case 0:
      UItest_result( 3.14 );
      break;
    case 1:
      UItest_result( 143 );
      break;
    case 2:
      UItest_result( 14 );
      break;
    case 3:
      UItest_result( -143.4 );
      break;
    case 4:
      UItest_result( -.74 );
      break;
    case 14:
      UItest_error( "Shit" );
      break;
  }
}

// clear
void UItest_clear() {
  printf( "Received clear request\n" );
  UItest_result( 0 );
}

// connect to the UI
void UItest_connect() {

  pthread_t listener;
  int en;
  struct sockaddr_in address;
  char ip_address[50];
  
  // create socket
  if ( (sock = socket( AF_INET, SOCK_STREAM, 0 ) ) < 0 )
    handle_error( sock, "Socket creation error. " );

  // setup address
  address.sin_family = AF_INET;           // internet
  address.sin_port   = htons(PORT_NUM);   // port PORT_NUM
  strcpy( ip_address, "127.0.0.1" );      // local host
  address.sin_addr.s_addr = inet_addr( ip_address );

  // connect
  if ( ( en = connect( sock, (struct sockaddr *) &address, sizeof(address) ) ) < 0 )
    handle_error( en, "Socket connect error. " );

  // start a new thread to handle messages from the GUI
  if ( ( en = pthread_create( &listener, NULL, (void*(*)(void*))listener_thread, NULL ) ) < 0 )
    handle_error( en, "Thread create error. " );

}

// struct for receiving messages
struct msg_data {
  char code;
  char comma1; // throw away
  char text[32];
  char comma2; // throw away
  char newline; // throw away
};
 
// request handling routine
void listener_thread( void * dummy ) {

  struct msg_data data;
  int bytes_received = 0;
  int res;

  // clear buffer
  memset( &data, 0, sizeof(struct msg_data) );

  do {

    // receive data
    res = recv( sock, (char*)&data + bytes_received, sizeof(struct msg_data) - bytes_received, 0 ); // blocking call

    // handle error
    if ( res < 0 )
      handle_error( errno, "Socket receive error" );

    // increment received bytes
    bytes_received += res;

    // check if a whole message has been received
    if ( bytes_received == sizeof(struct msg_data) ) {
      // handle request
      switch ( data.code ) {
        case ( SIGNAL_NO_KEY + '0' ):
          // NULL terminate the keycode
          data.text[31] = '\0';
          UItest_key( atoi( data.text ) );
          break;
        case ( SIGNAL_NO_CLEAR + '0' ):
          UItest_clear();
          break;
      }

      // reset received bytes
      bytes_received = 0;

      // clear buffer
      memset( &data, 0, sizeof(struct msg_data) );

    }
    
  } while ( res > 0 );

  exit(0);
}

// error handling
void handle_error(int en, char *msg)
{
  printf( "Error: %s\n", msg );
  errno = en;
  perror(msg);
  exit(EXIT_FAILURE);
}

int main() {
  UItest_connect();
  while ( true );;
  return 0;
}
