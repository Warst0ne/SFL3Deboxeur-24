(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_LOG
 * File: BR_ATL_LOG.fun
 * Author: strickers
 * Created: May 17, 2012
 ********************************************************************
 * Functions and function blocks of library BR_ATL_LOG
 ********************************************************************)

FUNCTION NewLogEntry : USINT
	VAR_INPUT
		msg : STRING[80];
		pData : UDINT;
		entrys : UINT;
	END_VAR
END_FUNCTION
