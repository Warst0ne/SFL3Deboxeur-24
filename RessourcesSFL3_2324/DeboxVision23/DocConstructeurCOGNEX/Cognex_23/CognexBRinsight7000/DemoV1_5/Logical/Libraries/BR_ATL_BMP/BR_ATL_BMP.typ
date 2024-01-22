(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: BR_ATL_BMP
 * File: BR_ATL_BMP.typ
 * Author: strickers
 * Created: May 23, 2012
 ********************************************************************
 * Data types of library BR_ATL_BMP
 ********************************************************************)

TYPE
	typ_bmp_out_header : 	STRUCT 
		type : UINT;
		size : UDINT;
		offset : UDINT;
		header_size : UDINT;
		width : UDINT;
		height : UDINT;
		num_planes : UINT;
		num_bits : UINT;
		compression : UDINT;
		res_vertical : UDINT;
		res_horizontal : UDINT;
	END_STRUCT;
	typ_bmp_in_header : 	STRUCT 
		type : UINT;
		size : UDINT;
		offset : UDINT;
		header_size : UDINT;
		width : UDINT;
		height : UDINT;
		num_planes : UINT;
		num_bits : UINT;
		compression : UDINT;
	END_STRUCT;
	typ_bmp_internal : 	STRUCT 
		Fopen : FileOpen;
		Fdelete : FileDelete;
		Fcreate : FileCreate;
		Fwrite : FileWrite;
		Fread : FileRead;
		Fclose : FileClose;
		out_header : typ_bmp_out_header;
		in_header : typ_bmp_in_header;
		step : USINT;
		err_step : USINT;
		cur_pixel : UDINT;
		x : UDINT;
	END_STRUCT;
END_TYPE
