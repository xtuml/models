//
// File: keypad_services.cc
//

#include "keypad_OOA/__keypad_interface.hh"
#include "keypad_OOA/__keypad_services.hh"
#include "keypad_OOA/__keypad_terminators.hh"
#include "keypad_OOA/__keypad_private_types.hh"
#include "__keypad_private_services.hh"
#include "swa/String.hh"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <errno.h>
#include <pthread.h>

#define masld_keypad_PORT_NUM          2003

#define masld_keypad_SIGNAL_NO_RESULT  0
#define masld_keypad_SIGNAL_NO_ERROR   1

#define masld_keypad_SIGNAL_NO_KEY     0
#define masld_keypad_SIGNAL_NO_CLEAR   1
    
namespace masld_keypad {

  // type definitions
  typedef int SOCKET; 

  struct signal_data {
    char code;
    char comma1;  // throw away
    char text[32];
    char comma2;  // throw away
    char newline; // throw away
  };

  class QueueNode { 
    public:
      maslt_calcevent      value;
      QueueNode *  next;
  };

  class Queue {
    public:
      QueueNode *  head;
      QueueNode *  tail;
  };

  // data
  SOCKET           sock;
  Queue            calc_event_queue;
  maslt_calcevent  return_event;
  pthread_mutex_t  lock;

  int pending_keypress;
  bool pending_clear;

  // error handling
  void handle_error( int errnum, char * msg ) {
    errno = errnum;
    exit( EXIT_FAILURE );
  }

  // add a node to the event queue
  void add_queue_node( maslt_eventtype event_type, int extra_data ) {

    // acquire the lock
    pthread_mutex_lock( &lock );

    // create a new node
    QueueNode * node = new QueueNode();
    node->value.set_masla_event_type() = event_type;
    node->value.set_masla_extra_data() = extra_data;
    node->next = NULL;

    // link into the queue
    if ( NULL == calc_event_queue.head ) calc_event_queue.head = node;  // if this is the first node
    if ( NULL != calc_event_queue.tail ) calc_event_queue.tail->next = node;
    calc_event_queue.tail = node;

    // release the lock
    pthread_mutex_unlock( &lock );

  }

  // handle incoming signals
  void request_handler( void * dummy ) {

    struct signal_data data;

    int bytes_received;
    int count;

    // clear buffer
    memset( &data, 0, sizeof(struct signal_data) );
    bytes_received = 0;

    do {

      // receive data
      count = recv( sock, (char*)&data + bytes_received, sizeof(struct signal_data) - bytes_received, 0 ); // blocking call

      // handle error
      if ( count < 0 )
        handle_error( errno, "Socket receive error" );

      // increment received bytes
      bytes_received += count;

      // check if a whole message has been received
      if ( bytes_received == sizeof(struct signal_data) ) {
        // handle request
        switch ( data.code ) {
          case ( masld_keypad_SIGNAL_NO_KEY + '0' ):
            // NULL terminate the text
            data.comma2 = '\0';
            // add the keypress event
            add_queue_node( maslt_eventtype::masle_KEYPRESS, atoi( data.text ) );
            break;
          case ( masld_keypad_SIGNAL_NO_CLEAR + '0' ):
            // add the clear event
            add_queue_node( maslt_eventtype::masle_CLEAR, 0 );
            break;
        }

        // clear buffer
        memset( &data, 0, sizeof(struct signal_data) );
        bytes_received = 0;

      }
      
    } while ( count > 0 );

    exit(0);
  }

  //
  // public service error ( message: in string );   
  //
  void masls_error( const ::SWA::String& maslp_message ) {
    char buf[256];
    snprintf( buf, 256, "%d,%s\n", masld_keypad_SIGNAL_NO_ERROR, maslp_message );
    int err = send( sock, buf, strlen(buf), 0 );
  }

  //
  // public service result ( value: in real );   
  //
  void masls_result( double maslp_value ) {
    char buf[256];
    snprintf( buf, 256, "%d,%f\n", masld_keypad_SIGNAL_NO_RESULT, maslp_value );
    int err = send( sock, buf, strlen(buf), 0 );
  }

  //
  // private service connect ();   
  //
  void masls_connect() {

    pthread_t            handler;
    int                  errnum;
    struct sockaddr_in   address;
    char                 ip_address[50];
    
    // create socket
    if ( (sock = socket( AF_INET, SOCK_STREAM, 0 ) ) < 0 )
      handle_error( sock, "Socket creation error. " );

    // setup address
    address.sin_family = AF_INET;                          // internet
    address.sin_port   = htons( masld_keypad_PORT_NUM );   // port PORT_NUM
    strcpy( ip_address, "127.0.0.1" );                     // local host
    address.sin_addr.s_addr = inet_addr( ip_address );

    // connect
    if ( ( errnum = connect( sock, (struct sockaddr *) &address, sizeof(address) ) ) < 0 )
      handle_error( errnum, "Socket connect error. " );

    // init pending event queue
    calc_event_queue.head = NULL;
    calc_event_queue.tail = NULL;

    // init the mutex lock
    if ( ( errnum = pthread_mutex_init( &lock, NULL ) ) != 0 )
      handle_error( errnum, "Mutex init error. " );

    // start a new thread to handle messages from the GUI
    if ( ( errnum = pthread_create( &handler, NULL, (void*(*)(void*))request_handler, NULL ) ) < 0 )
      handle_error( errnum, "Thread create error. " );

  }

  // 
  // private function getPendingEvent ();
  //
  maslt_calcevent masls_getPendingEvent ( ) {

    // acquire the lock
    pthread_mutex_lock( &lock );

    // grab the head of the queue
    QueueNode * node = calc_event_queue.head;

    if ( NULL != node ) {

      // set the new queue head
      calc_event_queue.head = node->next;
      if ( NULL == node->next ) calc_event_queue.tail = NULL;  // clear the tail if this is the last node in the queue
      node->next = NULL;

      // set the return event values
      return_event.set_masla_event_type() = node->value.get_masla_event_type();
      return_event.set_masla_extra_data() = node->value.get_masla_extra_data();

      // delete the queue node
      delete node;

    }
    else {

      // set the event type to NULLEVT
      return_event.set_masla_event_type() = maslt_eventtype::masle_NULLEVT;

    }

    // release the lock
    pthread_mutex_unlock( &lock );

    return return_event;

  }

  const bool localServiceRegistration_masls_error = interceptor_masls_error::instance().registerLocal( &masls_error );
  const bool localServiceRegistration_masls_result = interceptor_masls_result::instance().registerLocal( &masls_result );
  const bool localServiceRegistration_masls_connect = interceptor_masls_connect::instance().registerLocal( &masls_connect );

}
