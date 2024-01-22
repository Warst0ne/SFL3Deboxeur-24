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

/************************************************************************************************/
/*	Constants definition																		*/
/************************************************************************************************/
/* Constants for main step																		*/
#define STP_INIT			0
#define STP_SRC_OPEN		10
#define STP_SRC_READ		20
#define STP_SRC_CLOSE		30
#define STP_SRC_EVAL		40
#define STP_SRC_CONVERT		50
#define STP_DST_DELETE		60
#define STP_DST_CREATE		70
#define STP_DST_WRITE		80
#define STP_DST_CLOSE		90

#define STP_ERROR			100

#define BUSY				65535		/* Constant for status BUSY								*/
#define NO_ENABLE			65534
#define OK					0			/* Constant for status OK								*/

#define ERR_NO_DEVICE		10000
#define ERR_NO_SOURCE		10001
#define ERR_NO_DESTINATION	10002
#define ERR_NO_BMP_FILE		20000
#define ERR_FILE_TOO_BIG	20001
#define ERR_NOT_8BIT		20002

#define MAX_FILE_SIZE		100000
#define PIXEL_PER_CYCLE		1000

USINT in_buffer[MAX_FILE_SIZE];
USINT out_buffer[MAX_FILE_SIZE*3];

/************************************************************************************************/
/*	Version																						*/
/************************************************************************************************/
/* 1.0 First release																			*/


