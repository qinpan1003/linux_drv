#include	"def.h"
#ifndef	_TAR_H_
#define	_TAR_H_

int	extract(char* pathname);


typedef	struct	posix_tar_header
{
	char	name[100];
	char	mode[8];
	char	uid[8];
	char	gid[8];
	char	size[12];
	char	mtime[12];
	char	chksum[8];
	char	typeflag;
	char	linkname[100];
	char	magic[6];
	char	version[2];
	char	uname[32];
	char	gname[32];
	char	devmajor[8];
	char	devminor[8];
	char	prefix[155];
	/* 500 */
}POSIX_TAR_HEADER;

#endif	// _TAR_H_
