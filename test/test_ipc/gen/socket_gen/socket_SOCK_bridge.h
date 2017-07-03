/*----------------------------------------------------------------------------
 * File:  socket_SOCK_bridge.h
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  socket (SOCK)
 * This EE is based on the POSIX socket API
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SOCKET_SOCK_BRIDGE_H
#define SOCKET_SOCK_BRIDGE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "test_ipc_sys_types.h"
i_t socket_SOCK_socket( i_t * );
i_t socket_SOCK_bind( i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, const i_t );
i_t socket_SOCK_listen( const i_t, i_t *, const i_t );
i_t socket_SOCK_sendhandshake( i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t socket_SOCK_connect( i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t, const i_t );
i_t socket_SOCK_checkconnected( i_t *, const i_t );
i_t socket_SOCK_accept( i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN], i_t *, const i_t );
i_t socket_SOCK_recvhandshake( i_t *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN], const i_t );
i_t socket_SOCK_recvdata( void **, i_t *, i_t *, const i_t );
i_t socket_SOCK_recvint( i_t *, const i_t, i_t * );
i_t socket_SOCK_checkread( i_t *, const i_t );
i_t socket_SOCK_sendint( i_t *, const i_t, const i_t );
i_t socket_SOCK_senddata( const void *, i_t *, const i_t, const i_t );

#ifdef	__cplusplus
}
#endif
#endif   /* SOCKET_SOCK_BRIDGE_H */
