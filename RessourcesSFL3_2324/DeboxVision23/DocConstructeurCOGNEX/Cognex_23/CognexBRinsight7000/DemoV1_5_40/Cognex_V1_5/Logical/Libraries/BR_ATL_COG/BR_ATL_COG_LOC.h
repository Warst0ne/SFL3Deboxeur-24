/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_BMP
 * File: BR_ATL_loc.h
 * Author: strickers
 * Created: May 23, 2012
 *******************************************************************/

#include <bur/plctypes.h>
#include <AsString.h>
#include <string.h>
#include <sys_lib.h>
#include <fileio.h>
#include <astcp.h>
#include <standard.h>

/************************************************************************************************/
/*	Constants definition																		*/
/************************************************************************************************/
/* Constants for main step																		*/
#define STP_INIT			0
#define STP_TEL_OPEN		10
#define STP_TEL_CONNECT		20
#define STP_TEL_READ		30
#define STP_TEL_WRITE		40
#define STP_STATE_LOGIN1	51
#define STP_STATE_LOGIN2	52
#define STP_STATE_LOGIN3	53
#define STP_STATE_LOGIN4	54
#define STP_STATE_LOGIN5	55
#define STP_TCP_SEND		60
#define STP_TCP_RECV		70
#define STP_FILE_OPEN		80
#define STP_FILE_DEL		81
#define STP_FILE_WRITE		82
#define STP_FILE_READ		83
#define STP_FILE_CREATE		84
#define STP_FILE_CLOSE		85
#define STP_ERROR			100

#define CTRL_SEND			1
#define CTRL_ACK			2
#define CTRL_FINISH			3

#define BUSY				65535		/* Constant for status BUSY								*/
#define NO_ENABLE			65534
#define OK					0			/* Constant for status OK								*/
#define TRUE				1
#define FALSE				0

#define ERR_NO_IP_NUM			10000		/* No IP address specified				*/
#define ERR_NO_IDENT			10001		/* No ident specified, attach ident from NativeModeLogin.ident */
#define ERR_NO_CMD				10002		/* Command string is not specified */
#define ERR_DUPLICATE_CMD		10003		/* Multiple commands called at the same time */
#define ERR_SIZE_CMD			10004		/* Command exceeds maximum size of 100 bytes */
#define ERR_RESP_TIMEOUT		10010		/* Cognex camera did not respond to request */
#define ERR_RESP_UNEXPECTED		10011		/* Respond is not expected format */
#define ERR_RESP_HEADER			10012		/* Response header is too small */
#define ERR_RESP_DATA			10020		/* Respond does not contain status */
#define ERR_CAM_CMD_UNKNOWN		10030		/* Unrecognized command */
#define ERR_CAM_NAME_MISS		10031		/* The job filename is missing */
#define ERR_CAM_NAME_UNKNOWN	10032		/* There is no job saved with the given name */
#define ERR_CAM_ACCESS			10033		/* User does not have Full Access to execute the command */
#define ERR_CAM_GENERAL			10039		/* General error message from camera */
#define ERR_FILE_SIZE			10040		/* File exceeds  expected file size */
#define ERR_FILE_CRC			10041		/* The file CRC does not match the data transmitted */

#define MAX_BUFFER_SIZE			1000
#define RESP_TIMEOUT			3000

USINT 	in_buffer[MAX_BUFFER_SIZE];
USINT 	out_buffer[MAX_BUFFER_SIZE];
USINT 	file_buffer[3*MAX_BUFFER_SIZE];
STRING 	data_string[5][50];

static BOOL command_token;					/* Make sure only one command is execute at at time */

unsigned short TranslateCameraError(INT camera_status);
unsigned short NativeModeHexToBin(UDINT in_data, UDINT in_size, UDINT out_data);
unsigned short NativeModeBinToHex(UDINT in_data, UDINT in_size, UDINT out_data, BOOL firstrun);
unsigned short NativeModeCRC(UINT cword, UDINT buffer, UDINT size);

/************************************************************************************************/
/*	Version																						*/
/************************************************************************************************/
/* 1.0 First release																			*/


