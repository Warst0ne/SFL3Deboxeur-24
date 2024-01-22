/* Automation Studio generated header file */
/* Do not edit ! */
/* BR_ATL_COG 1.10.0 */

#ifndef _BR_ATL_COG_
#define _BR_ATL_COG_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _BR_ATL_COG_VERSION
#define _BR_ATL_COG_VERSION 1.10.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "FileIO.h"
		#include "AsTCP.h"
		#include "standard.h"
#endif
#ifdef _SG4
		#include "FileIO.h"
		#include "AsTCP.h"
		#include "standard.h"
#endif
#ifdef _SGC
		#include "FileIO.h"
		#include "AsTCP.h"
		#include "standard.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef struct typ_cog_login_internal
{	struct TcpClose TELclose;
	struct TcpOpen TELopen;
	struct TcpClient TELconnect;
	struct TcpSend TELwrite;
	struct TcpRecv TELread;
	plcstring tmpSTR1[41];
	plcstring tmpSTR2[41];
	unsigned char step_forward;
	unsigned char step;
	struct TON_10ms TON_10ms_0;
	unsigned short out_size;
	plcstring tmpSTR[401];
	unsigned char err_step;
} typ_cog_login_internal;

typedef struct typ_cog_logout_internal
{	plcbit edge_enable;
	struct TcpClose TELclose;
} typ_cog_logout_internal;

typedef struct typ_cog_load_file_internal
{	unsigned char step;
	struct TcpRecv TcpRecv_0;
	struct TcpSend TcpSend_0;
	struct FileClose FileClose_0;
	struct FileWrite FileWrite_0;
	struct FileCreate FileCreate_0;
	struct FileDelete FileDelete_0;
	struct TON_10ms TON_10ms_0;
	unsigned char err_step;
	plcstring command[101];
	unsigned char add_byte;
	unsigned long file_offset;
	unsigned short data_CRC;
	unsigned long data_header;
	unsigned long data_size;
	plcbit data_read_odd;
	unsigned long data_curr;
	unsigned long data_received;
	unsigned short file_CRC;
	unsigned long file_size;
	plcstring file_name[81];
	plcbit is_header;
	signed short command_status;
} typ_cog_load_file_internal;

typedef struct typ_cog_write_file_internal
{	unsigned char step;
	struct TcpRecv TcpRecv_0;
	struct TcpSend TcpSend_0;
	struct FileClose FileClose_0;
	struct FileRead FileRead_0;
	struct FileOpen FileOpen_0;
	struct FileWrite FileWrite_0;
	struct FileCreate FileCreate_0;
	struct FileDelete FileDelete_0;
	struct TON_10ms TON_10ms_0;
	unsigned char err_step;
	unsigned char add_byte;
	unsigned long file_offset1;
	plcstring test[201];
	unsigned long file_offset;
	unsigned short data_CRC;
	unsigned long data_header;
	unsigned long data_size;
	plcbit data_read_odd;
	unsigned long data_curr;
	unsigned char data_send_offset;
	unsigned long data_received;
	unsigned short file_CRC;
	unsigned long file_size;
	plcstring file_name[81];
	plcbit firstrun;
	plcbit lastrun;
	signed short command_status;
} typ_cog_write_file_internal;

typedef struct typ_cog_cmd_internal
{	unsigned char step;
	struct TcpRecv TcpRecv_0;
	struct TcpSend TcpSend_0;
	plcstring command[101];
	struct TON_10ms TON_10ms_0;
	unsigned char err_step;
} typ_cog_cmd_internal;

typedef struct NativeModeWriteFile
{
	/* VAR_INPUT (analog) */
	unsigned short ident;
	unsigned long command;
	unsigned long file_name;
	unsigned long device;
	/* VAR_OUTPUT (analog) */
	unsigned char progress;
	unsigned short status;
	/* VAR (analog) */
	struct typ_cog_write_file_internal internal;
	/* VAR_INPUT (digital) */
	plcbit enable;
} NativeModeWriteFile_typ;

typedef struct NativeModeReadFile
{
	/* VAR_INPUT (analog) */
	unsigned short ident;
	unsigned long command;
	unsigned long file_name;
	unsigned long device;
	/* VAR_OUTPUT (analog) */
	unsigned char progress;
	unsigned short status;
	/* VAR (analog) */
	struct typ_cog_load_file_internal internal;
	/* VAR_INPUT (digital) */
	plcbit enable;
} NativeModeReadFile_typ;

typedef struct NativeModeCommand
{
	/* VAR_INPUT (analog) */
	unsigned short ident;
	unsigned long command;
	unsigned long out_data;
	unsigned short out_size;
	/* VAR_OUTPUT (analog) */
	unsigned short in_size;
	unsigned short status;
	/* VAR (analog) */
	struct typ_cog_cmd_internal internal;
	/* VAR_INPUT (digital) */
	plcbit enable;
} NativeModeCommand_typ;

typedef struct NativeModeLogin
{
	/* VAR_INPUT (analog) */
	unsigned long ip;
	/* VAR_OUTPUT (analog) */
	unsigned short ident;
	unsigned short status;
	/* VAR (analog) */
	struct typ_cog_login_internal internal;
	/* VAR_INPUT (digital) */
	plcbit enable;
} NativeModeLogin_typ;

typedef struct NativeModeLogout
{
	/* VAR_INPUT (analog) */
	unsigned short ident;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct typ_cog_logout_internal internal;
	/* VAR_INPUT (digital) */
	plcbit enable;
} NativeModeLogout_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void NativeModeWriteFile(struct NativeModeWriteFile* inst);
_BUR_PUBLIC void NativeModeReadFile(struct NativeModeReadFile* inst);
_BUR_PUBLIC void NativeModeCommand(struct NativeModeCommand* inst);
_BUR_PUBLIC void NativeModeLogin(struct NativeModeLogin* inst);
_BUR_PUBLIC void NativeModeLogout(struct NativeModeLogout* inst);
_BUR_PUBLIC unsigned short NativeModeCRC(unsigned short cword, unsigned long buffer, unsigned long size);
_BUR_PUBLIC signed short NativeModeSeparateData(unsigned long in_data, unsigned long in_size, unsigned long out_string, unsigned short out_len, unsigned short out_size);


#ifdef __cplusplus
};
#endif
#endif /* _BR_ATL_COG_ */

