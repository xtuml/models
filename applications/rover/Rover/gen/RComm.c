/*----------------------------------------------------------------------------
 * File:  RComm.c
 *
 * UML Component Port Messages
 * Component/Module Name:  RComm
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Rover_sys_types.h"
#include "RComm.h"
#include "TIM_bridge.h"
#include "LOG_bridge.h"
#include "Rover.h"

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
#include <unistd.h>
#include <netdb.h>

SOCKET roverSock = -1;                        /* socket details */
SOCKET leaderSock = -1;                       /* socket details */

void handle_error(char *msg);           /* Error handler routine */
void handle_error_en(int en, char *msg);

#define CBSIZE 2048

#define ROVER_PORT 9998
#define OBSRV_PORT 9999

typedef struct cbuf {
    char buf[CBSIZE];
    int fd;
    unsigned int rpos, wpos;
} cbuf_t;

int read_line(SOCKET sock, char * dst, size_t len);

SOCKET RComm_connect(i_t);

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  brake
 */
void
RComm_RComm_brake( const i_t p_power )
{
    LOG_LogInfo("RComm_RComm_brake()");
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Rover,brake(%d)\n", p_power );
    if ((err = send(roverSock,buf,strlen(buf),0)) < 0)
        handle_error_en(err, "Send error ");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  incrementPower
 */
void
RComm_RComm_incrementPower( const i_t p_power )
{
    LOG_LogInfo("RComm_RComm_incrementPower()");
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Rover,incrementPower(%d)\n", p_power );
    if ((err = send(roverSock,buf,strlen(buf),0)) < 0)
        handle_error_en(err, "Send error ");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderDistance
 */
void
RComm_RComm_pollLeaderDistance()
{
    if (-1 == leaderSock) { leaderSock = RComm_connect(OBSRV_PORT); }

    int err;
    char buf[50];
    sprintf(buf, "Leader,Distance()\n");
    if ((err = send(leaderSock, buf, strlen(buf), 0)) < 0)
        handle_error_en(err, "Send error ");

    char socketBuf[CBSIZE];         // file buffer
    read_line(leaderSock, socketBuf, sizeof(socketBuf));

    r_t ret = 0.0;
    char *numStart;

    numStart = strstr(socketBuf, "Leader,");
    if (numStart != NULL) {
        char *ptr;
        numStart = socketBuf + strlen("Leader,");
        ret = strtod(numStart, &ptr);
    }
    else {
      printf( "Bad response: '%s'\n", socketBuf );
      exit(1);
    }

    RComm_Location_leaderDistance(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderGPS
 */
void
RComm_RComm_pollLeaderGPS()
{
    if (-1 == leaderSock) { leaderSock = RComm_connect(OBSRV_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Leader,GPS()\n");
    if ((err = send(leaderSock, buf, strlen(buf), 0)) < 0)
        handle_error_en(err, "Send error ");

    char socketBuf[CBSIZE];         // file buffer
    read_line(leaderSock, socketBuf, sizeof(socketBuf));

    r_t posx = 0.0;
    r_t posz = 0.0;
    char *numStart;

    numStart = strstr(socketBuf, "Leader,");
    if (numStart != NULL) {
        char *ptr;
        numStart = socketBuf + strlen("Leader,");
        posx = strtod(numStart, &ptr);
        numStart = ptr + strlen(",");
        posz = strtod(numStart, &ptr);
    }
    else {
      printf( "Bad response: '%s'\n", socketBuf );
      exit(1);
    }

    RComm_Location_leaderGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverCompass
 */
void
RComm_RComm_pollRoverCompass()
{
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Rover,getCompass()\n");
    if ((err = send(roverSock, buf, strlen(buf), 0)) < 0)
        handle_error_en(err, "Send error ");

    char socketBuf[CBSIZE];         // file buffer
    read_line(roverSock, socketBuf, sizeof(socketBuf));

    r_t ret = 0.0;
    char *numStart;

    numStart = strstr(socketBuf, "Rover,");
    if (numStart != NULL) {
        char *ptr;
        numStart = socketBuf + strlen("Rover,");
        ret = strtod(numStart, &ptr);
    }
    else {
      printf( "Bad response: '%s'\n", socketBuf );
      exit(1);
    }

    RComm_Location_roverCompass(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverGPS
 */
void
RComm_RComm_pollRoverGPS()
{
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }

    int err;
    char buf[50];
    sprintf(buf, "Rover,GPS()\n");
    if ((err = send(roverSock, buf, strlen(buf), 0)) < 0)
        handle_error_en(err, "Send error ");

    char socketBuf[CBSIZE];         // file buffer
    read_line(roverSock, socketBuf, sizeof(socketBuf));

    r_t posx = 0.0;
    r_t posz = 0.0;
    char *numStart;

    numStart = strstr(socketBuf, "Rover,");
    if (numStart != NULL) {
        char *ptr;
        numStart = socketBuf + strlen("Rover,");
        posx = strtod(numStart, &ptr);
        numStart = ptr + strlen(",");
        posz = strtod(numStart, &ptr);
    }
    else {
      printf( "Bad response: '%s'\n", socketBuf );
      exit(1);
    }

    RComm_Location_roverGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  ready
 */
void
RComm_RComm_ready()
{
    if (-1 == leaderSock) { leaderSock = RComm_connect(OBSRV_PORT); }
    LOG_LogInfo("RComm_RComm_ready()");
    int err;
    char buf[50];
    sprintf(buf, "ready\n" );
    if ((err = send(leaderSock,buf,strlen(buf),0)) < 0)
        handle_error_en(err, "Send error ");

    char socketBuf[CBSIZE];         // file buffer
    read_line(leaderSock, socketBuf, sizeof(socketBuf));
    printf( "%s", socketBuf );
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setForwardPower
 */
void
RComm_RComm_setForwardPower( const i_t p_power )
{
    LOG_LogInfo("RComm_RComm_setForwardPower()");
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Rover,setForwardPower(%d)\n", p_power );
    printf( "%s", buf );
    if ((err = send(roverSock,buf,strlen(buf),0)) < 0)
        handle_error_en(err, "Send error ");
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setLRPower
 */
void
RComm_RComm_setLRPower( const i_t p_lpower, const i_t p_rpower )
{
    LOG_LogInfo("RComm_RComm_setLRPower()");
    if (-1 == roverSock) { roverSock = RComm_connect(ROVER_PORT); }
    int err;
    char buf[50];
    sprintf(buf, "Rover,setLRPower(%d,%d)\n", p_lpower, p_rpower );
    if ((err = send(roverSock,buf,strlen(buf),0)) < 0)
        handle_error_en(err, "Send error ");
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  leaderDistance
 */
void
RComm_Location_leaderDistance( const r_t p_dist )
{
  Rover_RComm__Location_leaderDistance(  p_dist );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  leaderGPS
 */
void
RComm_Location_leaderGPS( const r_t p_x, const r_t p_z )
{
  Rover_RComm__Location_leaderGPS(  p_x, p_z );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  roverCompass
 */
void
RComm_Location_roverCompass( const r_t p_degrees )
{
  Rover_RComm__Location_roverCompass(  p_degrees );
}

/*
 * Interface:  LocationData
 * Required Port:  Location
 * To Provider Message:  roverGPS
 */
void
RComm_Location_roverGPS( const r_t p_x, const r_t p_z )
{
  Rover_RComm__Location_roverGPS(  p_x, p_z );
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

int read_line( SOCKET sock, char * dst, size_t len ) {
    int bytes_read = 0;
    int n;
    char * ptr;

    while (bytes_read < len) {
        n = recv(sock, dst+bytes_read, len-bytes_read, 0); // read some data
        if (n <= 0) return n;  // error handling
        if ((ptr = strstr(dst, "\r\n")) != 0) {
            if ((ptr+2-dst) < len) *(ptr+2) = '\0';
            break;
        }
        else if ((ptr = strstr(dst, "\r")) != 0 || (ptr = strstr(dst, "\n")) != 0) {
            if ((ptr+1-dst) < len) *(ptr+1) = '\0';
            break;
        }
        bytes_read += n;
    }

    return 0;
}

/*
 * Establish a socket connection
 */
SOCKET
RComm_connect( i_t port )
{
    LOG_LogInfo("RComm_connect()");
    int en;
    struct sockaddr_in address; /* socket address stuff */
    char cIP[50];

    SOCKET sock;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        handle_error_en(sock, "Socket creation error ");

    address.sin_family = AF_INET; /* internet */
    address.sin_port = htons(port); /* port */

    strcpy(cIP, "127.0.0.1"); /* local host */
    address.sin_addr.s_addr = inet_addr(cIP);
    if ((en = connect(sock, (struct sockaddr *) &address, sizeof(address))) < 0)
        handle_error_en(en, "Socket connect error ");

    return sock;
}

void
RComm_execute_initialization()
{

}
