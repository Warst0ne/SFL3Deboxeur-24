/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_COG
 * File: BR_ATL_COG.c
 * Author: strickers
 * Created: May 23, 2012
 *******************************************************************/

#include <bur/plctypes.h>
#include <BR_ATL_COG.h>
#include <BR_ATL_COG_loc.h>

/* ------------------------------------------------------------------------------------------------- */
/*	Open telnet connectgion to Cognex camera														 */
/* ------------------------------------------------------------------------------------------------- */
void NativeModeLogin(struct NativeModeLogin* inst)
{
	if(!inst->enable) inst->internal.step = STP_INIT;
	/*----------------------------------------------------------------------------------------------------------*/
	/* Check if parameters are valid																			*/
	if (!inst->ip)
	{
		inst->status = ERR_NO_IP_NUM;
		return;
	}
	
	switch (inst->internal.step)
	{
		/********************************************************************************************************/
		/*	Wait for command																					*/
		/********************************************************************************************************/
		case STP_INIT:
			if(inst->enable)
			{
				inst->internal.TON_10ms_0.IN = 0;
				inst->internal.TON_10ms_0.PT = RESP_TIMEOUT/10;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->status 		= BUSY;
				inst->internal.step = STP_TEL_OPEN;
			}
			else inst->status = NO_ENABLE;
			break;
		/********************************************************************************************************/
		/* Open telnet connection																				*/
		/********************************************************************************************************/
		case STP_TEL_OPEN:
			/* Open telnet connection to camera																	*/
			inst->internal.TELopen.enable	= 1;
			TcpOpen(&inst->internal.TELopen);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TELopen.status == OK)
			{
				inst->internal.step = STP_TEL_CONNECT;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.TELopen.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TELopen.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Open telnet connection																				*/
		/********************************************************************************************************/
		case STP_TEL_CONNECT:
			/* Open telnet connection to camera																	*/
			inst->internal.TELconnect.enable	= 1;
			inst->internal.TELconnect.ident		= inst->internal.TELopen.ident;
			inst->internal.TELconnect.pServer	= (UDINT)inst->ip;
			inst->internal.TELconnect.portserv	= 23;
			TcpClient(&inst->internal.TELconnect);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TELconnect.status == OK)
			{
				memset(&in_buffer, 0, MAX_BUFFER_SIZE);
				inst->internal.step_forward = STP_STATE_LOGIN1;
				inst->internal.step 		= STP_TEL_READ;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.TELconnect.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TELconnect.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Read data from telnet connection																		*/
		/********************************************************************************************************/
		case STP_TEL_READ:
			memcpy(inst->internal.tmpSTR, (void*)&in_buffer, sizeof(inst->internal.tmpSTR));
			inst->internal.TON_10ms_0.IN = 1;
			TON_10ms(&inst->internal.TON_10ms_0);
			/* Read data from camera																			*/
			inst->internal.TELread.enable	= 1;
			inst->internal.TELread.ident	= inst->internal.TELconnect.ident;
			inst->internal.TELread.pData	= (UDINT)&in_buffer;
			inst->internal.TELread.datamax	= MAX_BUFFER_SIZE;
			TcpRecv(&inst->internal.TELread);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																					*/																
			if (inst->internal.TELread.status == OK)
			{
				inst->internal.step = inst->internal.step_forward;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if ((inst->internal.TELread.status != tcpERR_NO_DATA) && (inst->internal.TELread.status != BUSY))
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TELread.status;
				inst->internal.step 	= STP_ERROR;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* Connection timed out during login																*/																
			if (inst->internal.TON_10ms_0.Q)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_RESP_TIMEOUT;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Write data to Cognex camera																			*/
		/********************************************************************************************************/
		case STP_TEL_WRITE:
			memcpy(inst->internal.tmpSTR, (void*)&out_buffer, sizeof(inst->internal.tmpSTR));
			/* Read data from camera																			*/
			inst->internal.TELwrite.enable	= 1;
			inst->internal.TELwrite.ident	= inst->internal.TELconnect.ident;
			inst->internal.TELwrite.pData	= (UDINT)&out_buffer;
			inst->internal.TELwrite.datalen	= inst->internal.out_size;
			TcpSend(&inst->internal.TELwrite);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TELwrite.status == OK)
			{
				inst->internal.TON_10ms_0.IN = 0;
				TON_10ms(&inst->internal.TON_10ms_0);
				memset(&in_buffer, 0, MAX_BUFFER_SIZE);
				inst->internal.step = STP_TEL_READ;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.TELwrite.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TELwrite.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Log into Cognex camera																				*/
		/********************************************************************************************************/
		case STP_STATE_LOGIN1:
			/* First prompt is for user name, answer with user admin											*/																
			if((strlen((void*)&in_buffer) >= 6) && (memcmp((void*)((UDINT)in_buffer+strlen((void*)&in_buffer)-6), "User: ", 6) == 0))
			{
				strcpy((void*)&out_buffer, (void*)("admin\r\n"));
				inst->internal.out_size 	= 7;
				inst->internal.step_forward = STP_STATE_LOGIN2;
				inst->internal.step 		= STP_TEL_WRITE;
			}
			/* Return to receive state if we just received welcome message										*/																
			else if((strlen((void*)&in_buffer) >= 7) && (memcmp((void*)((UDINT)in_buffer), "Welcome", 7) == 0))
			{
				inst->internal.TON_10ms_0.IN = 0;
				TON_10ms(&inst->internal.TON_10ms_0);
				memset(&in_buffer, 0, MAX_BUFFER_SIZE);
				inst->internal.step = STP_TEL_READ;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* Connection timed out																				*/																
			else
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_RESP_UNEXPECTED;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Log into Cognex camera																				*/
		/********************************************************************************************************/
		case STP_STATE_LOGIN2:
			/* Second prompt is for user password, answer with empty password									*/																
			if((strlen((void*)&in_buffer) >= 10) && (memcmp((void*)((UDINT)in_buffer+strlen((void*)&in_buffer)-10), "Password: ", 10) == 0))
			{
				strcpy((void*)&out_buffer, (void*)("\r\n"));
				inst->internal.out_size 	= 2;
				inst->internal.step_forward = STP_STATE_LOGIN3;
				inst->internal.step 		= STP_TEL_WRITE;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* Connection timed out																				*/																
			else
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = ERR_RESP_UNEXPECTED;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Log into Cognex camera																				*/
		/********************************************************************************************************/
		case STP_STATE_LOGIN3:
			if((strlen((void*)&in_buffer) >= 11) && (memcmp((void*)((UDINT)in_buffer), "User Logged", 11) == 0))
			{
				inst->ident 		= inst->internal.TELconnect.ident;
				inst->status		= 0;
				inst->internal.step = STP_STATE_LOGIN4;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* Connection timed out																				*/																
			else
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_RESP_UNEXPECTED;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Log into Cognex camera																				*/
		/********************************************************************************************************/
		case STP_STATE_LOGIN4:
			/* Wait for enable reset																			*/		
			if(!inst->enable) 
				{
				inst->status 		= BUSY;
				inst->internal.step = STP_STATE_LOGIN5;
				}
			break;
		/********************************************************************************************************/
		/* Log into Cognex camera																				*/
		/********************************************************************************************************/
		case STP_STATE_LOGIN5:
			inst->internal.TELclose.enable	= 1;
			inst->internal.TELclose.ident	= inst->internal.TELconnect.ident;
			TcpClose(&inst->internal.TELclose);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TELclose.status != BUSY)
			{
				inst->internal.TELconnect.ident = 0;
				inst->internal.TON_10ms_0.IN = 0;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->internal.step = STP_INIT;
			}
			break;
		/********************************************************************************************************/
		/* Error step																							*/
		/********************************************************************************************************/
		case STP_ERROR:
			/* Close connection																					*/
			if(inst->internal.TELconnect.ident != 0)
			{
				inst->internal.TELclose.enable	= 1;
				inst->internal.TELclose.ident	= inst->internal.TELconnect.ident;
				TcpClose(&inst->internal.TELclose);
				/*--------------------------------------------------------------------------------------------------*/
				/* ->Success																						*/																
				if (inst->internal.TELclose.status != BUSY) inst->internal.TELconnect.ident = 0;
			}
			/* Wait for enable reset																			*/		
			if(!inst->enable)
			{
				inst->internal.TON_10ms_0.IN = 0;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->status = NO_ENABLE;
				inst->internal.step = STP_INIT;
			}
			break;		
	}
}

/* ------------------------------------------------------------------------------------------------- */
/*	Close telnet connectgion to Cognex camera														 */
/* ------------------------------------------------------------------------------------------------- */
void NativeModeLogout(struct NativeModeLogout* inst)
{
	if(!inst->enable) inst->internal.edge_enable = 0;
	
	/* Wait for enable reset																			*/		
	if(inst->enable)
	{
		inst->status = BUSY;
		inst->internal.TELclose.enable	= 1;
		inst->internal.TELclose.ident	= inst->ident;
		TcpClose(&inst->internal.TELclose);
		/*--------------------------------------------------------------------------------------------------*/
		/* ->Success																						*/																
		if (inst->internal.TELclose.status != BUSY)
		{
			inst->internal.edge_enable = 1;
			inst->status = 0;
		}
	}
	else inst->status = NO_ENABLE;
}

/* ------------------------------------------------------------------------------------------------- */
/*	Open telnet connectgion to Cognex camera														 */
/* ------------------------------------------------------------------------------------------------- */
void NativeModeCommand(struct NativeModeCommand* inst)
{
	if(!inst->enable) inst->internal.step = STP_INIT;
	switch (inst->internal.step)
	{
		/********************************************************************************************************/
		/*	Wait for command																					*/
		/********************************************************************************************************/
		case STP_INIT:
			command_token = FALSE;
			if(inst->enable)
			{
				/* Check if parameters are valid																*/
				if (!inst->ident)
				{
					inst->status = ERR_NO_IDENT;
					return;
				}
				if (!inst->command)
				{
					inst->status = ERR_NO_CMD;
					return;
				}
				if (command_token)
				{
					inst->status = ERR_DUPLICATE_CMD;
					return;
				}
				if(strlen((void*)inst->command) > sizeof(inst->internal.command))
				{
					inst->status = ERR_SIZE_CMD;
					return;
				}
				/* Reset start parameters																		*/
				command_token = TRUE;
				strcpy((void*)inst->internal.command, (void*)inst->command);
				strcat((void*)inst->internal.command, (void*)"\r\n");
				inst->internal.TON_10ms_0.IN = 0;
				inst->internal.TON_10ms_0.PT = RESP_TIMEOUT/10;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->internal.TcpSend_0.enable = 0;
				TcpSend(&inst->internal.TcpSend_0);
				inst->internal.TcpRecv_0.enable = 0;
				TcpRecv(&inst->internal.TcpRecv_0);
				inst->status = BUSY;
				inst->internal.step = STP_TCP_SEND;
			}
			else inst->status = NO_ENABLE;
			break;
		/********************************************************************************************************/
		/* Send command to camera via ethernet																	*/
		/********************************************************************************************************/
		case STP_TCP_SEND:
			inst->internal.TcpSend_0.enable 	= 1;
			inst->internal.TcpSend_0.ident 		= inst->ident;
			inst->internal.TcpSend_0.pData 		= (UDINT)inst->internal.command;
			inst->internal.TcpSend_0.datalen 	= strlen((void*)inst->internal.command);
			TcpSend(&inst->internal.TcpSend_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpSend_0.status == OK)
			{
				inst->internal.step = STP_TCP_RECV;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.TcpSend_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TcpSend_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Receive camera information																			*/
		/********************************************************************************************************/
		case STP_TCP_RECV:
			inst->internal.TcpRecv_0.enable  	= 1;
			inst->internal.TcpRecv_0.ident 		= inst->ident;
			inst->internal.TcpRecv_0.pData 		= inst->out_data;
			inst->internal.TcpRecv_0.datamax 	= inst->out_size;
			TcpRecv(&inst->internal.TcpRecv_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpRecv_0.status == OK)
			{
				/* Reset command and status																		*/
				inst->in_size 		= inst->internal.TcpRecv_0.recvlen;
				command_token 		= FALSE;
				inst->status 		= OK;
				inst->internal.step = STP_INIT;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if((inst->internal.TcpRecv_0.status != BUSY) && (inst->internal.TcpRecv_0.status != tcpERR_NO_DATA))
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TcpRecv_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			/* The camera needs to respond within timeout */
			inst->internal.TON_10ms_0.IN = 1;
			TON_10ms(&inst->internal.TON_10ms_0);
			if(inst->internal.TON_10ms_0.Q)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_RESP_TIMEOUT;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Error step																							*/
		/********************************************************************************************************/
		case STP_ERROR:
			command_token = FALSE;
			break;	
	}
}

/* ------------------------------------------------------------------------------------------------- */
/*	Open telnet connectgion to Cognex camera														 */
/* ------------------------------------------------------------------------------------------------- */
void NativeModeReadFile(struct NativeModeReadFile* inst)
{
	if(!inst->enable) inst->internal.step = STP_INIT;
	switch (inst->internal.step)
	{
		/********************************************************************************************************/
		/*	Wait for command																					*/
		/********************************************************************************************************/
		case STP_INIT:
			command_token = FALSE;
			if(inst->enable)
			{
				/* Check if parameters are valid																*/
				if (!inst->ident)
				{
					inst->status = ERR_NO_IDENT;
					return;
				}
				if (!inst->command)
				{
					inst->status = ERR_NO_CMD;
					return;
				}
				if (command_token)
				{
					inst->status = ERR_DUPLICATE_CMD;
					return;
				}
				if(strlen((void*)inst->command) > sizeof(inst->internal.command))
				{
					inst->status = ERR_SIZE_CMD;
					return;
				}
				/* Reset start parameters																		*/
				command_token					= TRUE;
				strcpy((void*)inst->internal.command, (void*)inst->command);
				strcat((void*)inst->internal.command, (void*)"\r\n");
				inst->progress					= 0;
				inst->internal.file_offset 		= 0;
				inst->internal.file_CRC			= 0;
				inst->internal.data_CRC			= 0;
				inst->internal.data_curr		= 0;
				inst->internal.is_header		= TRUE;
				inst->internal.TON_10ms_0.IN 	= 0;
				inst->internal.TON_10ms_0.PT 	= RESP_TIMEOUT/10;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->internal.TcpSend_0.enable = 0;
				TcpSend(&inst->internal.TcpSend_0);
				inst->internal.TcpRecv_0.enable = 0;
				TcpRecv(&inst->internal.TcpRecv_0);
				inst->status = BUSY;
				inst->internal.step = STP_TCP_SEND;
			}
			else inst->status = NO_ENABLE;
			break;
		/********************************************************************************************************/
		/* Send command to camera via ethernet																	*/
		/********************************************************************************************************/
		case STP_TCP_SEND:
			inst->internal.TcpSend_0.enable 	= 1;
			inst->internal.TcpSend_0.ident 		= inst->ident;
			inst->internal.TcpSend_0.pData 		= (UDINT)inst->internal.command;
			inst->internal.TcpSend_0.datalen 	= strlen((void*)inst->internal.command);
			TcpSend(&inst->internal.TcpSend_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpSend_0.status == OK)
			{
				memset(&in_buffer, 0, sizeof(in_buffer));
				inst->internal.step = STP_TCP_RECV;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.TcpSend_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TcpSend_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Receive camera information																			*/
		/********************************************************************************************************/
		case STP_TCP_RECV:
			inst->internal.TcpRecv_0.enable  	= 1;
			inst->internal.TcpRecv_0.ident 		= inst->ident;
			inst->internal.TcpRecv_0.pData 		= (UDINT)&out_buffer;
			inst->internal.TcpRecv_0.datamax 	= MAX_BUFFER_SIZE-inst->internal.data_read_odd;
			TcpRecv(&inst->internal.TcpRecv_0);
			if (inst->internal.TcpRecv_0.status == BUSY) return;
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpRecv_0.status == OK)
			{
				/* Extract header information from first frame */
				if(inst->internal.is_header == TRUE)
				{
					/* Separate data stream by \r\n and split into strings */
					inst->internal.command_status = NativeModeSeparateData((UDINT)&out_buffer, inst->internal.TcpRecv_0.recvlen, (UDINT)&data_string, sizeof(data_string[0]), sizeof(data_string)/sizeof(data_string[0]));
					inst->internal.is_header = FALSE;
					/* Check camera responds (1 = The command was executed successfully. 0=Unrecognized command. -2=The command could not be executed. */
					if(inst->internal.command_status == 1)
					{
						/* Extract job file name and size */
						if(memcmp((void*)inst->internal.command, "RS", 2) == 0)
						{
							inst->internal.file_size 	= atoi((UDINT)&data_string[0]);
							inst->internal.data_header	= strlen((void*)data_string[0])+5;
						}
						else
						{
							strcpy((void*)&inst->internal.file_name, (void*)&data_string[0]);
							inst->internal.file_size 	= atoi((UDINT)&data_string[1]);
							inst->internal.data_header	= strlen((void*)data_string[0])+strlen((void*)data_string[1])+7;
						}
						memset(&data_string,0, sizeof(data_string));
						/* Make sure data length is at least the size of the xpected header */
						if(inst->internal.TcpRecv_0.recvlen >= inst->internal.data_header)
						{
							/* Make adjustment for odd data size */
							if((inst->internal.data_header%2 == 0) || (inst->internal.TcpRecv_0.recvlen == inst->internal.data_header) || (out_buffer[inst->internal.TcpRecv_0.recvlen-1] == 13) || (out_buffer[inst->internal.TcpRecv_0.recvlen-1] == 10)) 
							{
								inst->internal.data_received = (inst->internal.TcpRecv_0.recvlen - inst->internal.data_header);
							}
							else
							{
								inst->internal.data_received	= (inst->internal.TcpRecv_0.recvlen - inst->internal.data_header - 1);
								inst->internal.add_byte 		= out_buffer[inst->internal.TcpRecv_0.recvlen-1];
								inst->internal.data_read_odd 	= 1;
							}
							/* Extract raw data from stream and convert from ASCII hex to binary data */
							inst->internal.file_CRC		= NativeModeCRC(inst->internal.file_CRC, (UDINT)&out_buffer[inst->internal.data_header], inst->internal.data_received);
							inst->internal.data_size 	= NativeModeHexToBin((UDINT)&out_buffer[inst->internal.data_header], inst->internal.data_received, (UDINT)&file_buffer);
							inst->internal.data_curr 	= inst->internal.data_curr + inst->internal.data_size*2;
							inst->internal.step			= STP_FILE_DEL;
						}
						else
						{
							inst->internal.err_step = inst->internal.step;
							inst->status 			= ERR_RESP_HEADER;
							inst->internal.step 	= STP_ERROR;
						}
					}
					else
					{
						inst->internal.err_step = inst->internal.step;
						inst->status 			= TranslateCameraError(inst->internal.command_status);
						inst->internal.step 	= STP_ERROR;
					}
				}
				else
				{
					/* Make correction for odd data size in first frame, shift data 1 byte and fill in last byte from first frame */
					if(inst->internal.data_read_odd == 1)
					{
						memmove((void*)((UDINT)out_buffer+1), &out_buffer, sizeof(out_buffer)-1);
						out_buffer[0] = inst->internal.add_byte;
						inst->internal.data_received	= inst->internal.TcpRecv_0.recvlen+1;
						inst->internal.data_read_odd 	= 0;
					}
					else
					{
						inst->internal.data_received = inst->internal.TcpRecv_0.recvlen;
					}
					/* Extract raw data from stream and convert from ASCII hex to binary data */
					inst->internal.data_size 	= NativeModeHexToBin((UDINT)&out_buffer, inst->internal.data_received, (UDINT)&file_buffer);
					inst->internal.data_curr 	= inst->internal.data_curr + inst->internal.data_size*2;
					/* Check if data size is not exceeded */
					if(inst->internal.data_curr > inst->internal.file_size)
					{
						/* Last frame contains CRC */
						if(inst->internal.data_curr == inst->internal.file_size + 4)
						{
							memcpy(&inst->internal.data_CRC, &file_buffer[inst->internal.data_size-1], 1);
							memcpy((void*)((UDINT)&inst->internal.data_CRC+1), &file_buffer[inst->internal.data_size-2], 1);
							inst->internal.data_received = inst->internal.data_received - 6;
							inst->internal.data_size = inst->internal.data_size - 2;
						}
						else
						{
							inst->internal.err_step = inst->internal.step;
							inst->status 			= ERR_FILE_SIZE;
							inst->internal.step 	= STP_ERROR;
						}
					}
					inst->internal.file_CRC	= NativeModeCRC(inst->internal.file_CRC, (UDINT)&out_buffer, inst->internal.data_received);
					inst->internal.step 	= STP_FILE_WRITE;
				}
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if((inst->internal.TcpRecv_0.status != BUSY) && (inst->internal.TcpRecv_0.status != tcpERR_NO_DATA))
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.TcpRecv_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			/* The camera needs to respond within timeout */
			inst->internal.TON_10ms_0.IN = 1;
			TON_10ms(&inst->internal.TON_10ms_0);
			if(inst->internal.TON_10ms_0.Q)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_RESP_TIMEOUT;
				inst->internal.step 	= STP_ERROR;
			}				
			if(inst->internal.step != STP_FILE_WRITE) break;
		/********************************************************************************************************/
		/* Write new data into file																				*/
		/********************************************************************************************************/
		case STP_FILE_WRITE:
			inst->internal.FileWrite_0.enable 	= 1;
			inst->internal.FileWrite_0.ident 	= inst->internal.FileCreate_0.ident;
			inst->internal.FileWrite_0.offset 	= inst->internal.file_offset;
			inst->internal.FileWrite_0.pSrc 	= (UDINT)&file_buffer;
			inst->internal.FileWrite_0.len 		= inst->internal.data_size;
			FileWrite(&inst->internal.FileWrite_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileWrite_0.status == 0)
			{
				/* Maintain CRC, offset, process */
				inst->internal.file_offset 	= inst->internal.file_offset + inst->internal.data_size;
				inst->progress				= (inst->internal.data_curr*100)/inst->internal.file_size;
				/* Receive more data or close file when last frame was received */
				if(inst->internal.data_curr < inst->internal.file_size)
				{
					inst->internal.TON_10ms_0.IN = 0;
					TON_10ms(&inst->internal.TON_10ms_0);
					inst->internal.step = STP_TCP_RECV;
				}
				else inst->internal.step = STP_FILE_CLOSE;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileWrite_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.FileWrite_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Delete old file if necessary																			*/
		/********************************************************************************************************/
		case STP_FILE_DEL:
			if(inst->file_name == 0) strcpy((void*)&inst->file_name, inst->internal.file_name);
			/* Delete old file from flash card */
			inst->internal.FileDelete_0.enable 	= 1;
			inst->internal.FileDelete_0.pDevice = inst->device;
			inst->internal.FileDelete_0.pName 	= inst->file_name;
			FileDelete(&inst->internal.FileDelete_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if ((inst->internal.FileDelete_0.status == 0) || (inst->internal.FileDelete_0.status == fiERR_FILE_NOT_FOUND ))
			{
				inst->internal.step = STP_FILE_CREATE;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileDelete_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.FileDelete_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Create new file																						*/
		/********************************************************************************************************/
		case STP_FILE_CREATE:
			/* Create new file on flash card */
			inst->internal.FileCreate_0.enable 	= 1;
			inst->internal.FileCreate_0.pDevice = inst->device;
			inst->internal.FileCreate_0.pFile 	= inst->file_name;
			FileCreate(&inst->internal.FileCreate_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileCreate_0.status == 0)
			{
				inst->internal.step = STP_FILE_WRITE;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileCreate_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.FileCreate_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Close file, reset command																			*/
		/********************************************************************************************************/
		case STP_FILE_CLOSE:
			/* Create new file on flash card */
			inst->internal.FileClose_0.enable 	= 1;
			inst->internal.FileClose_0.ident 	= inst->internal.FileCreate_0.ident;
			FileClose(&inst->internal.FileClose_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileClose_0.status == 0)
			{
				/* Check CRC and return to init state if everyhting is ok										*/
				if(inst->internal.data_CRC == inst->internal.file_CRC)
				{
					command_token		= FALSE;
					inst->status 		= OK;
					inst->internal.step = STP_INIT;
				}
				else
				{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= ERR_FILE_CRC;
				inst->internal.step 	= STP_ERROR;
				}
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileClose_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status 			= inst->internal.FileClose_0.status;
				inst->internal.step 	= STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Error step																							*/
		/********************************************************************************************************/
		case STP_ERROR:
			command_token = FALSE;
			break;	
	}
}

/* ------------------------------------------------------------------------------------------------- */
/*	Open telnet connectgion to Cognex camera														 */
/* ------------------------------------------------------------------------------------------------- */
void NativeModeWriteFile(struct NativeModeWriteFile* inst)
{
	if(!inst->enable) inst->internal.step = STP_INIT;
	switch (inst->internal.step)
	{
		/********************************************************************************************************/
		/*	Wait for command																					*/
		/********************************************************************************************************/
		case STP_INIT:
			command_token = FALSE;
			if(inst->enable)
			{
				/* Check if parameters are valid																*/
				if (!inst->ident)
				{
					inst->status = ERR_NO_IDENT;
					return;
				}
				if (!inst->command)
				{
					inst->status = ERR_NO_CMD;
					return;
				}
				if (command_token)
				{
					inst->status = ERR_DUPLICATE_CMD;
					return;
				}
				/* Reset start parameters																		*/
				command_token					= TRUE;
				inst->progress					= 0;
				inst->internal.file_offset 		= 0;
				inst->internal.data_CRC			= 0;
				inst->internal.data_curr		= 0;
				inst->internal.firstrun			= 1;
				inst->internal.lastrun			= 0;
				/* Create command, add filename if requiered */
				memset(&file_buffer, 0, sizeof(file_buffer));
				strcpy((void*)&file_buffer, (void*)inst->command);
				strcat((void*)&file_buffer, "\r\n");
				/* Extract job file name and size */
				if(memcmp((void*)inst->command, "WS", 2) != 0)
				{
					strcat((void*)&file_buffer, (void*)inst->file_name);
					strcat((void*)&file_buffer, "\r\n");
				}
				inst->internal.TON_10ms_0.IN 	= 0;
				inst->internal.TON_10ms_0.PT 	= RESP_TIMEOUT/10;
				TON_10ms(&inst->internal.TON_10ms_0);
				inst->internal.TcpSend_0.enable = 0;
				TcpSend(&inst->internal.TcpSend_0);
				inst->internal.TcpRecv_0.enable = 0;
				TcpRecv(&inst->internal.TcpRecv_0);
				inst->status = BUSY;
				inst->internal.step = STP_FILE_OPEN;
				//inst->internal.step = STP_FILE_DEL;
			}
			else inst->status = NO_ENABLE;
			break;
		/********************************************************************************************************/
		/* Open file for sending																				*/
		/********************************************************************************************************/
		case STP_FILE_OPEN:
			/* Create new file on flash card */
			inst->internal.FileOpen_0.enable 	= 1;
			inst->internal.FileOpen_0.pDevice 	= inst->device;
			inst->internal.FileOpen_0.pFile 	= inst->file_name;
			FileOpen(&inst->internal.FileOpen_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileOpen_0.status == 0)
			{
				inst->internal.file_size = inst->internal.FileOpen_0.filelen;
				itoa(inst->internal.file_size*2, (UDINT)&file_buffer[strlen((void*)&file_buffer)]);
				strcat((void*)&file_buffer, (void*)"\r\n");
				inst->internal.data_size = strlen((void*)&file_buffer);
				//inst->internal.step = STP_FILE_WRITE;
				inst->internal.step = STP_TCP_SEND;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileOpen_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileOpen_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Send command to camera via ethernet																	*/
		/********************************************************************************************************/
		case STP_TCP_SEND:
			inst->internal.TcpSend_0.enable 	= 1;
			inst->internal.TcpSend_0.ident 		= inst->ident;
			inst->internal.TcpSend_0.pData 		= (UDINT)&file_buffer[inst->internal.data_send_offset];
			inst->internal.TcpSend_0.datalen 	= inst->internal.data_size;
			TcpSend(&inst->internal.TcpSend_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpSend_0.status == OK)
			{
				if(inst->internal.file_offset  < inst->internal.file_size)
				{
					if(inst->internal.file_offset + sizeof(out_buffer) < inst->internal.file_size)
					{
						inst->internal.data_curr = sizeof(out_buffer);
					}
					else
					{
						inst->internal.data_curr = inst->internal.file_size - inst->internal.file_offset;
					}
					memset(&out_buffer, 0, sizeof(out_buffer));
					inst->internal.step = STP_FILE_READ;
				}
				else if(inst->internal.lastrun == 0)
				{
					memcpy((void*)((UDINT)&inst->internal.file_CRC+0), (void*)((UDINT)&inst->internal.data_CRC+1), 1);
					memcpy((void*)((UDINT)&inst->internal.file_CRC+1), (void*)((UDINT)&inst->internal.data_CRC+0), 1);
					memset(&file_buffer, 0, sizeof(file_buffer));
					strcpy((void*)&file_buffer, (void*)"\r\n");
					NativeModeBinToHex((UDINT)&inst->internal.file_CRC, 2, (UDINT)&file_buffer[2], 1);
					strcat((void*)&file_buffer, (void*)"\r\n");
					inst->internal.lastrun		= 1;
					inst->internal.data_size 	= strlen((void*)&file_buffer);
				}
				else
				{
					inst->internal.step = STP_FILE_CLOSE;
				}
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* Not all data was sent in this step																*/
			else if (inst->internal.TcpSend_0.status == tcpERR_SENTLEN)
			{
				inst->internal.data_size = inst->internal.TcpSend_0.datalen - inst->internal.TcpSend_0.sentlen;
				inst->internal.data_send_offset = inst->internal.TcpSend_0.sentlen;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if ((inst->internal.TcpSend_0.status != BUSY) && (inst->internal.TcpSend_0.status != tcpERR_WOULDBLOCK))
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.TcpSend_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Receive camera information																			*/
		/********************************************************************************************************/
		case STP_TCP_RECV:
			inst->internal.TcpRecv_0.enable  	= 1;
			inst->internal.TcpRecv_0.ident 		= inst->ident;
			inst->internal.TcpRecv_0.pData 		= (UDINT)&in_buffer;
			inst->internal.TcpRecv_0.datamax 	= MAX_BUFFER_SIZE;
			TcpRecv(&inst->internal.TcpRecv_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.TcpRecv_0.status == OK)
			{
				inst->internal.command_status = in_buffer[0] - 48;
				/* Check camera responds (1 = The command was executed successfully. 0=Unrecognized command. -2=The command could not be executed. */
				if(inst->internal.command_status == 1)
				{
					command_token		= FALSE;
					inst->status 		= OK;
					inst->internal.step = STP_INIT;
				}
				else
				{
					inst->internal.err_step = inst->internal.step;
					inst->status = TranslateCameraError(inst->internal.command_status);
					inst->internal.step = STP_ERROR;
				}
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if((inst->internal.TcpRecv_0.status != BUSY) && (inst->internal.TcpRecv_0.status != tcpERR_NO_DATA))
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.TcpRecv_0.status;
				inst->internal.step = STP_ERROR;
			}
			/* The camera needs to respond within timeout */
			inst->internal.TON_10ms_0.IN = 1;
			TON_10ms(&inst->internal.TON_10ms_0);
			if(inst->internal.TON_10ms_0.Q)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = ERR_RESP_TIMEOUT;
				inst->internal.step = STP_ERROR;
			}				
			break;
		/********************************************************************************************************/
		/* Read data from file																					*/
		/********************************************************************************************************/
		case STP_FILE_READ:
			inst->internal.FileRead_0.enable 	= 1;
			inst->internal.FileRead_0.ident 	= inst->internal.FileOpen_0.ident;
			inst->internal.FileRead_0.len 		= inst->internal.data_curr;
			inst->internal.FileRead_0.offset 	= inst->internal.file_offset;
			inst->internal.FileRead_0.pDest		= (UDINT)&out_buffer;
			FileRead(&inst->internal.FileRead_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileRead_0.status == 0)
			{
				memset(&file_buffer, 0, sizeof(file_buffer));
				inst->internal.file_offset 		= inst->internal.file_offset + inst->internal.FileRead_0.len;
				inst->progress					= (inst->internal.file_offset*100)/inst->internal.file_size;
				inst->internal.data_size 		= NativeModeBinToHex((UDINT)&out_buffer, inst->internal.FileRead_0.len, (UDINT)&file_buffer, inst->internal.firstrun);
				inst->internal.data_CRC			= NativeModeCRC(inst->internal.data_CRC, (UDINT)&file_buffer, inst->internal.data_size);
				inst->internal.data_send_offset	= 0;
				inst->internal.firstrun			= 0;
//				inst->internal.step 			= STP_FILE_WRITE;
				inst->internal.step 			= STP_TCP_SEND;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileRead_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileRead_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Close file, reset command																			*/
		/********************************************************************************************************/
		case STP_FILE_CLOSE:
			/* Create new file on flash card */
			inst->internal.FileClose_0.enable 	= 1;
			inst->internal.FileClose_0.ident 	= inst->internal.FileOpen_0.ident;
			FileClose(&inst->internal.FileClose_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileClose_0.status == 0)
			{
				inst->internal.TON_10ms_0.IN = 0;
				TON_10ms(&inst->internal.TON_10ms_0);
				memset(&in_buffer, 0, sizeof(in_buffer));
				inst->internal.step = STP_TCP_RECV;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileClose_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileClose_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Error step																							*/
		/********************************************************************************************************/
		case STP_ERROR:
			command_token = FALSE;
			break;
		/********************************************************************************************************/
		/* Delete old file if necessary																			*/
		/********************************************************************************************************/
		case STP_FILE_DEL:
			/* Delete old file from flash card */
			inst->internal.FileDelete_0.enable 	= 1;
			inst->internal.FileDelete_0.pDevice = inst->device;
			inst->internal.FileDelete_0.pName 	= (UDINT)"test.job";
			FileDelete(&inst->internal.FileDelete_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if ((inst->internal.FileDelete_0.status == 0) || (inst->internal.FileDelete_0.status == fiERR_FILE_NOT_FOUND ))
			{
				inst->internal.step = STP_FILE_CREATE;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileDelete_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileDelete_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Create new file																						*/
		/********************************************************************************************************/
		case STP_FILE_CREATE:
			/* Create new file on flash card */
			inst->internal.FileCreate_0.enable 	= 1;
			inst->internal.FileCreate_0.pDevice = inst->device;
			inst->internal.FileCreate_0.pFile 	= (UDINT)"test.job";
			FileCreate(&inst->internal.FileCreate_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileCreate_0.status == 0)
			{
				inst->internal.file_offset1 = 0;
				inst->internal.step = STP_FILE_OPEN;;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileCreate_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileCreate_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Write new data into file																				*/
		/********************************************************************************************************/
		case STP_FILE_WRITE:
			inst->internal.FileWrite_0.enable 	= 1;
			inst->internal.FileWrite_0.ident 	= inst->internal.FileCreate_0.ident;
			inst->internal.FileWrite_0.offset 	= inst->internal.file_offset1;
			inst->internal.FileWrite_0.pSrc 	= (UDINT)&file_buffer;
			inst->internal.FileWrite_0.len 		= inst->internal.data_size;
			FileWrite(&inst->internal.FileWrite_0);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.FileWrite_0.status == 0)
			{
				inst->internal.file_offset1 = inst->internal.file_offset1 + inst->internal.data_size;
				inst->internal.step = STP_TCP_SEND;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.FileWrite_0.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.FileWrite_0.status;
				inst->internal.step = STP_ERROR;
			}
			break;
	}
}

/* ------------------------------------------------------------------------------------------------- */
/*	Separate data in buffer 																		 */
/* ------------------------------------------------------------------------------------------------- */
signed short NativeModeSeparateData(UDINT in_data, UDINT in_size, UDINT out_string, UINT out_len, UINT out_size)
{
	UINT lx = 0;
	UINT lx_old = 3;
	UINT tmp_size = 0;
	UINT ly = 0;
	INT status = 0;

	memset((void*)out_string, 0, out_len*out_size);
	status = atoi(in_data);
	if(status != 1) return status;
	if(memcmp((void*)in_data+1, (void*)"\r", 1)!=0) return ERR_RESP_DATA; 
	if(memcmp((void*)in_data+2, (void*)"\n", 1)!=0) return ERR_RESP_DATA; 

	for(lx=lx_old;lx<=in_size;lx++) 
	{
		if ((memcmp((void*)in_data + lx, (void*)"\r", 1) == 0) || (memcmp((void*)in_data + lx, (void*)"\n", 1) == 0))
		{
			if(lx - lx_old > out_len) tmp_size = out_len;
			else tmp_size = lx - lx_old;
			memcpy((void*)(out_string+(ly*out_len)), (void*)(in_data + lx_old), tmp_size);
			if(memcmp((void*)in_data + lx, (void*)"\n", 1) == 0) lx++;
			ly++;
			lx++;
			lx_old = lx+1;
			if(ly>=out_size) break;
		}
	}
	return status;
}

/* ------------------------------------------------------------------------------------------------- */
/*	Separate data in buffer 																		 */
/* ------------------------------------------------------------------------------------------------- */
unsigned short NativeModeHexToBin(UDINT in_data, UDINT in_size, UDINT out_data)
{
	UINT lx = 0;
	UINT ly = 0;
	USINT value = 0;
	USINT char1, char2 = 0;

	for(lx=0;lx<in_size;lx=lx+2) 
	{
		memcpy(&char1, (void*)(in_data + lx), 1);
		memcpy(&char2, (void*)(in_data + lx + 1), 1);
		if((char1 != 13) && (char1 != 10) && (char2 != 13) && (char2 != 10))
		{
			if(char1>57) 		char1=char1-55;
			else if(char1>=48)	char1=char1-48;
			if(char2>57) 		char2=char2-55;
			else if(char2>=48)	char2=char2-48;
			value = char1*16+char2;
			memcpy((void*)(out_data + ly), &value, 1);
			ly++;
		}
	}
	if(ly>0) return ly;
	else return 0;
}

/* ------------------------------------------------------------------------------------------------- */
/*	Separate data in buffer 																		 */
/* ------------------------------------------------------------------------------------------------- */
unsigned short NativeModeBinToHex(UDINT in_data, UDINT in_size, UDINT out_data, BOOL firstrun)
{
	static UINT linefeed;
	UINT lx = 0;
	UINT ly = 0;
	USINT value = 0, tmp_value = 0;
	USINT char1, char2 = 0;

	if(firstrun) linefeed = 0;
	for(lx=0;lx<in_size;lx++) 
	{
		memcpy(&value, (void*)(in_data + lx), 1);
		if((linefeed>0) && (linefeed==80))
		{
			char1 = 10;
			char2 = 13;
			linefeed = 0;
			lx=lx-1;
		}
		else
		{
			tmp_value=value%16;
		    value=value/16;
		 
		    switch(tmp_value)
			{
		        case 10 : char1='A'; break;
		        case 11 : char1='B'; break;
		        case 12 : char1='C'; break;
		        case 13 : char1='D'; break;
		        case 14 : char1='E'; break;
		        case 15 : char1='F'; break;
		        default :char1=(char)(tmp_value+48);
		     }

		    switch(value)
			{
		        case 10 : char2='A'; break;
		        case 11 : char2='B'; break;
		        case 12 : char2='C'; break;
		        case 13 : char2='D'; break;
		        case 14 : char2='E'; break;
		        case 15 : char2='F'; break;
		        default :char2=(char)(value+48);  
		     }
			linefeed=linefeed+2;
		}
		memcpy((void*)(out_data + ly), &char2, 1);
		memcpy((void*)(out_data + ly + 1), &char1, 1);
		ly=ly+2;
	}
	if(ly>0) return ly;
	else return 0;
}

/* ------------------------------------------------------------------------------------------------- */
/*	Convert camera status into library status														 */
/* ------------------------------------------------------------------------------------------------- */
unsigned short TranslateCameraError(INT camera_status)
{
	switch (camera_status)
	{
		case 0: return ERR_CAM_CMD_UNKNOWN; break;
		case -1: return ERR_CAM_NAME_MISS; break;
		case -2: return ERR_CAM_NAME_UNKNOWN; break;
		case -6: return ERR_CAM_ACCESS; break;
	}
	return ERR_CAM_GENERAL;
}


/* ------------------------------------------------------------------------------------------------- */
/*	Generate CRC for file transfer																	 */
/* ------------------------------------------------------------------------------------------------- */
unsigned short NativeModeCRC(UINT cword, UDINT buffer, UDINT size)
{
int i,j;
static int ch;
USINT value;

	if(cword == 0) ch = 0;
	for (i = 0; i < size; i++) 
	{
		memcpy(&value, (void*)(buffer + i), 1);
		if((value != 13) && (value != 10))
		{
		    ch = (unsigned short)(value << 8);
		    for (j = 0; j < 8; j++) {
		    	if (((ch & 0x8000) ^ (cword & 0x8000)) != 0) 
				{
		        	cword = (unsigned short)((cword <<= 1) ^ 4129);
		      	}
		      	else 
				{
		        	cword <<= 1;
		      	}
		      	ch <<= 1;
		    }
		}
	  }
  return cword;
}

