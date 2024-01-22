/* Automation Studio generated header file */
/* Do not edit ! */
/* BR_ATL_BMP  */

#ifndef _BR_ATL_BMP_
#define _BR_ATL_BMP_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "FileIO.h"
#endif
#ifdef _SG4
		#include "FileIO.h"
#endif
#ifdef _SGC
		#include "FileIO.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef struct typ_bmp_out_header
{	unsigned short type;
	unsigned long size;
	unsigned long offset;
	unsigned long header_size;
	unsigned long width;
	unsigned long height;
	unsigned short num_planes;
	unsigned short num_bits;
	unsigned long compression;
	unsigned long res_vertical;
	unsigned long res_horizontal;
} typ_bmp_out_header;

typedef struct typ_bmp_in_header
{	unsigned short type;
	unsigned long size;
	unsigned long offset;
	unsigned long header_size;
	unsigned long width;
	unsigned long height;
	unsigned short num_planes;
	unsigned short num_bits;
	unsigned long compression;
} typ_bmp_in_header;

typedef struct typ_bmp_internal
{	struct FileOpen Fopen;
	struct FileDelete Fdelete;
	struct FileCreate Fcreate;
	struct FileWrite Fwrite;
	struct FileRead Fread;
	struct FileClose Fclose;
	struct typ_bmp_out_header out_header;
	struct typ_bmp_in_header in_header;
	unsigned char step;
	unsigned char err_step;
	unsigned long cur_pixel;
	unsigned long x;
} typ_bmp_internal;

typedef struct BmpConvert
{
	/* VAR_INPUT (analog) */
	unsigned char enable;
	unsigned long pDevice;
	unsigned long pFileSource;
	unsigned long pFileDestination;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct typ_bmp_internal internal;
} BmpConvert_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void BmpConvert(struct BmpConvert* inst);


#ifdef __cplusplus
};
#endif
#endif /* _BR_ATL_BMP_ */

