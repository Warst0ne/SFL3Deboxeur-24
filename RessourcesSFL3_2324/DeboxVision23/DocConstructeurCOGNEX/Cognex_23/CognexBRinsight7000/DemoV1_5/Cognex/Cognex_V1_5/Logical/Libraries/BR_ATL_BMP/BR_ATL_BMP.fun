(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_BMP
 * File: BR_ATL_BMP.fun
 * Author: strickers
 * Created: May 23, 2012
 ********************************************************************
 * Functions and function blocks of library BR_ATL_BMP
 ********************************************************************)

FUNCTION_BLOCK BmpConvert
	VAR_INPUT
		enable : USINT;
		pDevice : UDINT;
		pFileSource : UDINT;
		pFileDestination : UDINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
	END_VAR
	VAR
		internal : typ_bmp_internal;
	END_VAR
END_FUNCTION_BLOCK
