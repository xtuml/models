#ifndef SOCKETOME_H
#define SOCKETOME_H

#ifdef	__cplusplus
extern "C" {
#endif

char * Escher_socket_receive( const unsigned int );
void Escher_socket_send( char *, int, const unsigned int );
int Escher_socket_init( const char *, const unsigned int );
void Escher_socket_shutdown( void );

#ifdef	__cplusplus
}
#endif

#endif
