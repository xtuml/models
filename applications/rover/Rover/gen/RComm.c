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

SOCKET roverSock;                        /* socket details */
bool roverConnected = FALSE;
SOCKET leaderSock;                       /* socket details */
bool leaderConnected = FALSE;

// Use one or the other of the following to determine if we'll use
// blocking or non-blocking commands to the rover.
//int roverSendFlags = 0; // blocking
int roverSendFlags = MSG_DONTWAIT;  // non-blocking

void handle_error(char *msg);           /* Error handler routine */
void handle_error_en(int en, char *msg);

#define CBSIZE 2048

typedef struct cbuf {
    char buf[CBSIZE];
    int fd;
    unsigned int rpos, wpos;
} cbuf_t;

int read_line(cbuf_t *cbuf, char *dst, unsigned int size);


/*
 * Establish rover socket connection
 */
i_t
RComm_rover_connect()
{
	LOG_LogInfo("RComm_rover_connect()");
	int en;
	struct sockaddr_in address; /* socket address stuff */
	char cIP[50];

	if ((roverSock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
		handle_error_en(roverSock, "Socket creation error ");

	address.sin_family = AF_INET; /* internet */
	address.sin_port = htons(9998); /* port */

	strcpy(cIP, "127.0.0.1"); /* local host */
	address.sin_addr.s_addr = inet_addr(cIP);
	if ((en = connect(roverSock, (struct sockaddr *) &address, sizeof(address))) < 0)
		handle_error_en(en, "Socket connect error ");

	roverConnected = TRUE;
	return roverSock;
}

/*
 * Establish leader socket connection
 */
i_t
RComm_leader_connect()
{
	LOG_LogInfo("RComm_leader_connect()");
	int en;
	struct sockaddr_in address; /* socket address stuff */
	char cIP[50];

	if ((leaderSock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
		handle_error_en(leaderSock, "Socket creation error ");

	address.sin_family = AF_INET; /* internet */
	address.sin_port = htons(9999); /* port */

	strcpy(cIP, "127.0.0.1"); /* local host */
	address.sin_addr.s_addr = inet_addr(cIP);
	if ((en = connect(leaderSock, (struct sockaddr *) &address, sizeof(address))) < 0)
		handle_error_en(en, "Socket connect error ");

	leaderConnected = TRUE;
	return leaderSock;
}


/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setForwardPower
 */
void
RComm_RComm_setForwardPower( const i_t p_power )
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInteger("RComm_RComm_setForwardPower()", p_power);
    int err;
    char buf[50];
    sprintf(buf, "Rover,setForwardPower(%d)\n", p_power );
    err = send(roverSock,buf,strlen(buf),roverSendFlags);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  incrementPower
 */
void
RComm_RComm_incrementPower( const i_t p_power )
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInteger("RComm_RComm_incrementPower()", p_power);
    int err;
    char buf[50];
    sprintf(buf, "Rover,incrementPower(%d)\n", p_power );
    err = send(roverSock,buf,strlen(buf),roverSendFlags);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  setLRPower
 */
void
RComm_RComm_setLRPower( const i_t p_lpower, const i_t p_rpower )
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInteger("RComm_RComm_setLRPower() lpower", p_lpower);
	//LOG_LogInteger("RComm_RComm_setLRPower() rpower", p_rpower);
    int err;
    char buf[50];
    sprintf(buf, "Rover,setLRPower(%d,%d)\n", p_lpower, p_rpower );
    err = send(roverSock,buf,strlen(buf),roverSendFlags);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  brake
 */
void
RComm_RComm_brake( const i_t p_power )
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInteger("RComm_RComm_brake()", p_power);
    int err;
    char buf[50];
    sprintf(buf, "Rover,brake(%d)\n", p_power );
    err = send(roverSock,buf,strlen(buf),roverSendFlags);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderGPS
 */
void
RComm_RComm_pollLeaderGPS()
{
	if (!leaderConnected) { RComm_leader_connect(); }
	//LOG_LogInfo("RComm_RComm_pollLeaderGPS()");
	int err;
	char buf[50];
	sprintf(buf, "Leader,GPS()\n");
	err = send(leaderSock, buf, strlen(buf), 0);

	const int BUF_LEN = 1000;       // Buffer size for transfers
	char socketBuf[BUF_LEN];        // file buffer
	int res;                        // error trapping

	cbuf_t *cbuf;
	cbuf = calloc(1, sizeof(*cbuf));
	cbuf->fd = leaderSock;
	read_line(cbuf, socketBuf, sizeof(socketBuf));
	free(cbuf);

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
		//LOG_LogReal("returning leader gps x ", posx);
		//LOG_LogReal("returning leader gps z ", posz);
	}

	RComm_Location_leaderGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollLeaderDistance
 */
void
RComm_RComm_pollLeaderDistance()
{
	if (!leaderConnected) { RComm_leader_connect(); }
	//LOG_LogInfo("RComm_RComm_pollLeaderDistance()");

	int err;
	char buf[50];
	sprintf(buf, "Leader,Distance()\n");
	err = send(leaderSock, buf, strlen(buf), 0);

	const int BUF_LEN = 1000;       // Buffer size for transfers
	char socketBuf[BUF_LEN];        // file buffer
	int res;                        // error trapping

	cbuf_t *cbuf;
	cbuf = calloc(1, sizeof(*cbuf));
	cbuf->fd = leaderSock;
	read_line(cbuf, socketBuf, sizeof(socketBuf));
	free(cbuf);

	r_t ret = 0.0;
	char *numStart;

	numStart = strstr(socketBuf, "Leader,");
	if (numStart != NULL) {
		char *ptr;
		numStart = socketBuf + strlen("Leader,");
		ret = strtod(numStart, &ptr);
		//LOG_LogReal("returning leader distance ", ret);
	}

	RComm_Location_leaderDistance(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverGPS
 */
void
RComm_RComm_pollRoverGPS()
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInfo("RComm_RComm_pollRoverGPS()");

	int err;
	char buf[50];
	sprintf(buf, "Rover,GPS()\n");
	err = send(roverSock, buf, strlen(buf), 0);

	const int BUF_LEN = 1000;       // Buffer size for transfers
	char socketBuf[BUF_LEN];        // file buffer
	int res;                        // error trapping

	cbuf_t *cbuf;
	cbuf = calloc(1, sizeof(*cbuf));
	cbuf->fd = roverSock;
	read_line(cbuf, socketBuf, sizeof(socketBuf));
	free(cbuf);

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
		//LOG_LogReal("returning rover gps x ", posx);
		//LOG_LogReal("returning rover gps z ", posz);
	}

	RComm_Location_roverGPS(posx, posz);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  pollRoverCompass
 */
void
RComm_RComm_pollRoverCompass()
{
	if (!roverConnected) { RComm_rover_connect(); }
	//LOG_LogInfo("RComm_RComm_pollRoverCompass()");
	int err;
	char buf[50];
	sprintf(buf, "Rover,getCompass()\n");
	err = send(roverSock, buf, strlen(buf), 0);

	const int BUF_LEN = 1000;       // Buffer size for transfers
	char socketBuf[BUF_LEN];        // file buffer
	int res;                        // error trapping

	cbuf_t *cbuf;
	cbuf = calloc(1, sizeof(*cbuf));
	cbuf->fd = roverSock;
	read_line(cbuf, socketBuf, sizeof(socketBuf));
	free(cbuf);

	r_t ret = 0.0;
	char *numStart;

	numStart = strstr(socketBuf, "Rover,");
	if (numStart != NULL) {
		char *ptr;
		numStart = socketBuf + strlen("Rover,");
		ret = strtod(numStart, &ptr);
		//LOG_LogReal("returning rover compass ", ret);
	}

	RComm_Location_roverCompass(ret);
}

/*
 * Interface:  RComm
 * Provided Port:  RComm
 * To Provider Message:  ready
 */
void
RComm_RComm_ready()
{
	if (!leaderConnected) { RComm_leader_connect(); }
	LOG_LogInfo("RComm_RComm_ready()");
    int err;
    char buf[50];
    sprintf(buf, "ready\n" );
    err = send(leaderSock,buf,strlen(buf),0);
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


// Based on example found at https://stackoverflow.com/questions/9828752/read-line-by-line-from-a-socket-buffer
int read_line(cbuf_t *cbuf, char *dst, unsigned int size)
{
    unsigned int i = 0;
    ssize_t n;
    while (i < size) {
        if (cbuf->rpos == cbuf->wpos) {
            size_t wpos = cbuf->wpos % CBSIZE;
            if ((n = read(cbuf->fd, cbuf->buf + wpos, (CBSIZE - wpos))) < 0) {
                if (errno == EINTR)
                    continue;
                else if ((errno == EAGAIN) || (errno == EWOULDBLOCK))
                	printf("socket error EAGAIN\n");
                else if (errno == EBADF)
                	printf("socket error EBADF\n");
                else if (errno == ECONNREFUSED)
                	printf("socket error ECONNREFUSED\n");
                else if (errno == EFAULT)
                	printf("socket error EFAULT\n");
                else if (errno == EINVAL)
                	printf("socket error EINVAL\n");
                else if (errno == ENOMEM)
                	printf("socket error ENOMEM\n");
                else if (errno == ENOTCONN)
                	printf("socket error ENOTCONN\n");
                else if (errno == ENOTSOCK)
                	printf("socket error ENOTSOCK\n");

                return -1;
            } else if (n == 0) {
            	printf("no bytes read\n");
                return 0;
            }
            cbuf->wpos += n;
        }
        dst[i++] = cbuf->buf[cbuf->rpos++ % CBSIZE];
        if (dst[i - 1] == ';') {
            break;
        }
    }
    if(i == size) {
         fprintf(stderr, "line too large: %d %d\n", i, size);
         return -1;
    }

    dst[i] = 0;
    return i;
}

