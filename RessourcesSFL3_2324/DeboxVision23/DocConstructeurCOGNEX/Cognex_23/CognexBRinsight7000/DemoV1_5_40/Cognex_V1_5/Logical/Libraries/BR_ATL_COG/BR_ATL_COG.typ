(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_COG
 * File: BR_ATL_COG.typ
 * Author: strickers
 * Created: July 16, 2012
 ********************************************************************
 * Data types of library BR_ATL_COG
 ********************************************************************)

TYPE
	typ_cog_login_internal : 	STRUCT 
		TELclose : TcpClose;
		TELopen : TcpOpen;
		TELconnect : TcpClient;
		TELwrite : TcpSend;
		TELread : TcpRecv;
		tmpSTR1 : STRING[40];
		tmpSTR2 : STRING[40];
		step_forward : USINT;
		step : USINT;
		TON_10ms_0 : TON_10ms;
		out_size : UINT;
		tmpSTR : STRING[400];
		err_step : USINT;
	END_STRUCT;
	typ_cog_logout_internal : 	STRUCT 
		edge_enable : BOOL;
		TELclose : TcpClose;
	END_STRUCT;
	typ_cog_load_file_internal : 	STRUCT 
		step : USINT;
		TcpRecv_0 : TcpRecv;
		TcpSend_0 : TcpSend;
		FileClose_0 : FileClose;
		FileWrite_0 : FileWrite;
		FileCreate_0 : FileCreate;
		FileDelete_0 : FileDelete;
		TON_10ms_0 : TON_10ms;
		err_step : USINT;
		command : STRING[100];
		add_byte : USINT;
		file_offset : UDINT;
		data_CRC : UINT;
		data_header : UDINT;
		data_size : UDINT;
		data_read_odd : BOOL;
		data_curr : UDINT;
		data_received : UDINT;
		file_CRC : UINT;
		file_size : UDINT;
		file_name : STRING[80];
		is_header : BOOL;
		command_status : INT;
	END_STRUCT;
	typ_cog_write_file_internal : 	STRUCT 
		step : USINT;
		TcpRecv_0 : TcpRecv;
		TcpSend_0 : TcpSend;
		FileClose_0 : FileClose;
		FileRead_0 : FileRead;
		FileOpen_0 : FileOpen;
		FileWrite_0 : FileWrite;
		FileCreate_0 : FileCreate;
		FileDelete_0 : FileDelete;
		TON_10ms_0 : TON_10ms;
		err_step : USINT;
		add_byte : USINT;
		file_offset1 : UDINT;
		test : STRING[200];
		file_offset : UDINT;
		data_CRC : UINT;
		data_header : UDINT;
		data_size : UDINT;
		data_read_odd : BOOL;
		data_curr : UDINT;
		data_send_offset : USINT;
		data_received : UDINT;
		file_CRC : UINT;
		file_size : UDINT;
		file_name : STRING[80];
		firstrun : BOOL;
		lastrun : BOOL;
		command_status : INT;
	END_STRUCT;
	typ_cog_cmd_internal : 	STRUCT 
		step : USINT;
		TcpRecv_0 : TcpRecv;
		TcpSend_0 : TcpSend;
		command : STRING[100];
		TON_10ms_0 : TON_10ms;
		err_step : USINT;
	END_STRUCT;
END_TYPE
