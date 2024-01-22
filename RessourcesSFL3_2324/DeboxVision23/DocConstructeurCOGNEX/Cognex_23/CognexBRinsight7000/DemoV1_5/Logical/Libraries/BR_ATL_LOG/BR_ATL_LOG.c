/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_LOG
 * File: BR_ATL_LOG.c
 * Author: strickers
 * Created: May 17, 2012
 *******************************************************************/

/* ------------------------------------------------------------------------------------------------- */
/* Includes	 */
/* ------------------------------------------------------------------------------------------------- */
#include <BR_ATL_LOG.h>
#include <AsString.h>
#include <string.h>
#include <sys_lib.h>
#include <bur/plctypes.h>

/* ------------------------------------------------------------------------------------------------- */
/*	Generate logbook message */
/* ------------------------------------------------------------------------------------------------- */
unsigned char NewLogEntry(plcstring* msg, UDINT pData, UINT entrys)
{
	RTCtime_typ	RTCtime_struct;
	STRING		lstr1[80], lstr2[80];
	
	/* Check if logging is enabled before writing to log */
	if ((entrys > 0) && (pData != 0))
	{
		strcpy(lstr1, "");
		strcpy(lstr2, "");
		RTC_gettime(&RTCtime_struct);
		itoa(RTCtime_struct.hour, (UDINT)&lstr1);
		if(strlen(lstr1) == 1) strcat(lstr2, "0");
		strcat(lstr2, lstr1);
		strcat(lstr2, ":");
		itoa(RTCtime_struct.minute, (UDINT)&lstr1);
		if(strlen(lstr1) == 1) strcat(lstr2, "0");
		strcat(lstr2, lstr1);
		strcat(lstr2, ":");
		itoa(RTCtime_struct.second, (UDINT)&lstr1);
		if(strlen(lstr1) == 1) strcat(lstr2, "0");
		strcat(lstr2, lstr1);
		strcat(lstr2, ":");
		itoa(RTCtime_struct.millisec, (UDINT)&lstr1);
		if(strlen(lstr1) == 1) strcat(lstr2, "00");
		if(strlen(lstr1) == 2) strcat(lstr2, "0");
		strcat(lstr2, lstr1);
		strcat(lstr2, " ");
		strcat(lstr2, msg);
		memmove((void*)(pData)+81, (void*)pData, 81*(entrys-1));
		strcpy((void*)pData, lstr2);
	}
	return 0;
}
