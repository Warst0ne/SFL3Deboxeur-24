/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_BMP
 * File: BR_ATL_BMP.c
 * Author: strickers
 * Created: May 23, 2012
 *******************************************************************/

#include <bur/plctypes.h>
#include <BR_ATL_BMP.h>
#include <BR_ATL_BMP_LOC.h>

/* ------------------------------------------------------------------------------------------------- */
/*	Convert bitmap from 8 Bit to 32 Bit 															 */
/* ------------------------------------------------------------------------------------------------- */
void BmpConvert(struct BmpConvert* inst)
{
	/*----------------------------------------------------------------------------------------------------------*/
	/* Check if parameters are valid																			*/
	if (!inst->pDevice)
	{
		inst->status = ERR_NO_DEVICE;
		return;
	}
	if (!inst->pFileSource)
	{
		inst->status = ERR_NO_SOURCE;
		return;
	}
	if (!inst->pFileDestination)
	{
		inst->status = ERR_NO_DESTINATION;
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
				inst->status = BUSY;
				inst->internal.step = STP_SRC_OPEN;
			}
			else inst->status = NO_ENABLE;
			break;
		/********************************************************************************************************/
		/* Open bitmap																							*/
		/********************************************************************************************************/
		case STP_SRC_OPEN:
			/* Open source bitmap																				*/
			inst->internal.Fopen.enable 	= 1;
			inst->internal.Fopen.pDevice	= (UDINT)inst->pDevice;
			inst->internal.Fopen.pFile 		= (UDINT)inst->pFileSource;
			inst->internal.Fopen.mode		= FILE_RW; 
			FileOpen(&inst->internal.Fopen);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fopen.status == OK)
			{
				inst->internal.step = STP_SRC_READ;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.Fopen.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fopen.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Read bitmap																							*/
		/********************************************************************************************************/
		case STP_SRC_READ:
			/* Read source bitmap																				*/
			inst->internal.Fread.enable 	= 1;
			inst->internal.Fread.ident		= inst->internal.Fopen.ident;
			inst->internal.Fread.pDest		= (UDINT)&in_buffer;
			inst->internal.Fread.len		= inst->internal.Fopen.filelen;
			FileRead(&inst->internal.Fread);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fread.status == OK)
			{
				inst->internal.step = STP_SRC_CLOSE;
			}
				/*--------------------------------------------------------------------------------------------------*/
				/* ->Failure																						*/
			else if (inst->internal.Fread.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fread.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Close bitmap																							*/
		/********************************************************************************************************/
		case STP_SRC_CLOSE:
			/* Close source bitmap																				*/
			inst->internal.Fclose.enable 	= 1;
			inst->internal.Fclose.ident		= inst->internal.Fopen.ident;
			FileClose(&inst->internal.Fclose);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fclose.status == OK)
			{
				inst->internal.step = STP_SRC_EVAL;
			}
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Failure																						*/
			else if (inst->internal.Fclose.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fclose.status;
				inst->internal.step = STP_ERROR;
			}
			break;		
		/********************************************************************************************************/
		/* Evaluate bitmap																							*/
		/********************************************************************************************************/
		case STP_SRC_EVAL:
			memcpy(&inst->internal.in_header.type, &in_buffer[0x00], 2);
			if(inst->internal.in_header.type != 0x4d42)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = ERR_NO_BMP_FILE;
				inst->internal.step = STP_ERROR;
				return;
			}
			memcpy(&inst->internal.in_header.size, &in_buffer[0x02], 4);
			if(inst->internal.in_header.size >= MAX_FILE_SIZE)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = ERR_FILE_TOO_BIG;
				inst->internal.step = STP_ERROR;
				return;
			}
			memcpy(&inst->internal.in_header.offset, &in_buffer[0x0A], 4);
			memcpy(&inst->internal.in_header.header_size, &in_buffer[0x0E], 4);
			memcpy(&inst->internal.in_header.width, &in_buffer[0x12], 4);
			memcpy(&inst->internal.in_header.height, &in_buffer[0x16], 4);
			memcpy(&inst->internal.in_header.num_planes, &in_buffer[0x1A], 2);
			memcpy(&inst->internal.in_header.num_bits, &in_buffer[0x1C], 2);
			if(inst->internal.in_header.num_bits != 0x08)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = ERR_NOT_8BIT;
				inst->internal.step = STP_ERROR;
				return;
			}
			memcpy(&inst->internal.in_header.compression, &in_buffer[0x1E], 4);
			
			inst->internal.out_header.type 			= 0x4d42;
			inst->internal.out_header.size 			= (inst->internal.in_header.size - inst->internal.in_header.offset) * 3 + 0x36;
			inst->internal.out_header.offset		= 0x36;
			inst->internal.out_header.header_size	= 0x28;
			inst->internal.out_header.width			= inst->internal.in_header.width;
			inst->internal.out_header.height		= inst->internal.in_header.height;
			inst->internal.out_header.num_planes	= inst->internal.in_header.num_planes;
			inst->internal.out_header.num_bits		= 0x18;
			inst->internal.out_header.compression	= 0;
			inst->internal.out_header.res_horizontal	= 0x0ec4;
			inst->internal.out_header.res_vertical		= 0x0ec4;
				
			memcpy(&out_buffer[0x00], &inst->internal.out_header.type, 2);
			memcpy(&out_buffer[0x02], &inst->internal.out_header.size, 4);
			memcpy(&out_buffer[0x0A], &inst->internal.out_header.offset, 4);
			memcpy(&out_buffer[0x0E], &inst->internal.out_header.header_size, 4);
			memcpy(&out_buffer[0x12], &inst->internal.out_header.width, 4);
			memcpy(&out_buffer[0x16], &inst->internal.out_header.height, 4);
			memcpy(&out_buffer[0x1A], &inst->internal.out_header.num_planes, 2);
			memcpy(&out_buffer[0x1C], &inst->internal.out_header.num_bits, 2);
			memcpy(&out_buffer[0x1E], &inst->internal.out_header.compression, 4);
			memcpy(&out_buffer[0x26], &inst->internal.out_header.res_horizontal, 4);
			memcpy(&out_buffer[0x2A], &inst->internal.out_header.res_vertical, 4);
			
			inst->internal.cur_pixel = 0;
			inst->internal.step = STP_SRC_CONVERT;
			
			break;		
		/********************************************************************************************************/
		/* Convert bitmap																							*/
		/********************************************************************************************************/
		case STP_SRC_CONVERT:
			
			for(inst->internal.x=0; inst->internal.x<PIXEL_PER_CYCLE ; inst->internal.x++)
				{
				out_buffer[inst->internal.out_header.offset + (inst->internal.cur_pixel + inst->internal.x)*3 + 0] = in_buffer[inst->internal.in_header.offset + inst->internal.cur_pixel + inst->internal.x];
				out_buffer[inst->internal.out_header.offset + (inst->internal.cur_pixel + inst->internal.x)*3 + 1] = in_buffer[inst->internal.in_header.offset + inst->internal.cur_pixel + inst->internal.x];
				out_buffer[inst->internal.out_header.offset + (inst->internal.cur_pixel + inst->internal.x)*3 + 2] = in_buffer[inst->internal.in_header.offset + inst->internal.cur_pixel + inst->internal.x];
				if(inst->internal.out_header.offset + inst->internal.cur_pixel >= inst->internal.in_header.size) 
					{
					inst->internal.step = STP_DST_DELETE;
					break;
					}
				}
			inst->internal.cur_pixel = inst->internal.cur_pixel + inst->internal.x;
			break;
		/********************************************************************************************************/
		/* Delete destination bitmap																			*/
		/********************************************************************************************************/
		case STP_DST_DELETE:
			/* Delete destination bitmap																				*/
			inst->internal.Fdelete.enable 	= 1;
			inst->internal.Fdelete.pDevice	= (UDINT)inst->pDevice;
			inst->internal.Fdelete.pName 	= (UDINT)inst->pFileDestination;
			FileDelete(&inst->internal.Fdelete);
			/*--------------------------------------------------------------------------------------------------*/
			if (inst->internal.Fdelete.status != BUSY)
			{
				inst->internal.step = STP_DST_CREATE;
			}
			break;		
		/********************************************************************************************************/
		/* Create bitmap																							*/
		/********************************************************************************************************/
		case STP_DST_CREATE:
			/* Create destination bitmap																				*/
			inst->internal.Fcreate.enable 	= 1;
			inst->internal.Fcreate.pDevice	= (UDINT)inst->pDevice;
			inst->internal.Fcreate.pFile 	= (UDINT)inst->pFileDestination;
			FileCreate(&inst->internal.Fcreate);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fcreate.status == OK)
			{
				inst->internal.step = STP_DST_WRITE;
			}
				/*--------------------------------------------------------------------------------------------------*/
				/* ->Failure																						*/
			else if (inst->internal.Fcreate.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fcreate.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Write destination bitmap																							*/
		/********************************************************************************************************/
		case STP_DST_WRITE:
			/* Create destination bitmap																				*/
			inst->internal.Fwrite.enable 	= 1;
			inst->internal.Fwrite.ident		= inst->internal.Fcreate.ident;
			inst->internal.Fwrite.pSrc 		= (UDINT)&out_buffer;
			inst->internal.Fwrite.len		= inst->internal.out_header.size;
			FileWrite(&inst->internal.Fwrite);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fwrite.status == OK)
			{
				inst->internal.step = STP_DST_CLOSE;
			}
				/*--------------------------------------------------------------------------------------------------*/
				/* ->Failure																						*/
			else if (inst->internal.Fwrite.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fwrite.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Close destination bitmap																				*/
		/********************************************************************************************************/
		case STP_DST_CLOSE:
			/* Close source bitmap																				*/
			inst->internal.Fclose.enable 	= 1;
			inst->internal.Fclose.ident		= inst->internal.Fcreate.ident;
			FileClose(&inst->internal.Fclose);
			/*--------------------------------------------------------------------------------------------------*/
			/* ->Success																						*/																
			if (inst->internal.Fclose.status == OK)
			{
				inst->status = OK;
				inst->internal.step = STP_INIT;
			}
				/*--------------------------------------------------------------------------------------------------*/
				/* ->Failure																						*/
			else if (inst->internal.Fclose.status != BUSY)
			{
				inst->internal.err_step = inst->internal.step;
				inst->status = inst->internal.Fclose.status;
				inst->internal.step = STP_ERROR;
			}
			break;
		/********************************************************************************************************/
		/* Error step																							*/
		/********************************************************************************************************/
		case STP_ERROR:
			/* Wait for enable reset																			*/
			if(!inst->enable)
			{
				inst->status = BUSY;
				inst->internal.step = STP_INIT;
			}
			break;		
		
	}
}
