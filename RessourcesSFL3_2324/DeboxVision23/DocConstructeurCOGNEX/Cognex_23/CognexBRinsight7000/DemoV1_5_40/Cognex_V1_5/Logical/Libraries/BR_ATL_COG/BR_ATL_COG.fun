(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_COG
 * File: BR_ATL_COG.fun
 * Author: strickers
 * Created: July 16, 2012
 ********************************************************************
 * Functions and function blocks of library BR_ATL_COG
 ********************************************************************)

FUNCTION NativeModeCRC : UINT
	VAR_INPUT
		cword : UINT;
		buffer : UDINT;
		size : UDINT;
	END_VAR
END_FUNCTION

FUNCTION NativeModeSeparateData : INT
	VAR_INPUT
		in_data : UDINT;
		in_size : UDINT;
		out_string : UDINT;
		out_len : UINT;
		out_size : UINT;
	END_VAR
END_FUNCTION

FUNCTION_BLOCK NativeModeWriteFile
	VAR_INPUT
		enable : BOOL;
		ident : UINT;
		command : UDINT;
		file_name : UDINT;
		device : UDINT;
	END_VAR
	VAR_OUTPUT
		progress : USINT;
		status : UINT;
	END_VAR
	VAR
		internal : typ_cog_write_file_internal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK NativeModeReadFile
	VAR_INPUT
		enable : BOOL;
		ident : UINT;
		command : UDINT;
		file_name : UDINT;
		device : UDINT;
	END_VAR
	VAR_OUTPUT
		progress : USINT;
		status : UINT;
	END_VAR
	VAR
		internal : typ_cog_load_file_internal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK NativeModeCommand
	VAR_INPUT
		enable : BOOL;
		ident : UINT;
		command : UDINT;
		out_data : UDINT;
		out_size : UINT;
	END_VAR
	VAR_OUTPUT
		in_size : UINT;
		status : UINT;
	END_VAR
	VAR
		internal : typ_cog_cmd_internal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK NativeModeLogin
	VAR_INPUT
		enable : BOOL;
		ip : UDINT;
	END_VAR
	VAR_OUTPUT
		ident : UINT;
		status : UINT;
	END_VAR
	VAR
		internal : typ_cog_login_internal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK NativeModeLogout
	VAR_INPUT
		enable : BOOL;
		ident : UINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
	END_VAR
	VAR
		internal : typ_cog_logout_internal;
	END_VAR
END_FUNCTION_BLOCK
